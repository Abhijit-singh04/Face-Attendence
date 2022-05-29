
const video = document.getElementById('video') //accessing the video element

Promise.all([
  faceapi.nets.tinyFaceDetector.loadFromUri('/models'),
  faceapi.nets.faceLandmark68Net.loadFromUri('/models'),
  faceapi.nets.faceRecognitionNet.loadFromUri('/models'),
  faceapi.nets.ssdMobilenetv1.loadFromUri('/models'),
]).then(startVideo) //loading the required models before starting the video

function startVideo() {
  navigator.getUserMedia(
    { video: {} },
    stream => video.srcObject = stream,
    err => console.error(err)
  )
} // starting the webcam

video.addEventListener('play', () => {
  const canvas = faceapi.createCanvasFromMedia(video) //creating canvas on the video space
  document.body.append(canvas)
  const displaySize = { width: video.width, height: video.height }//canvas size based on video
  faceapi.matchDimensions(canvas, displaySize)
  setInterval(async () => {
    //detecting all faces the screen with landmarks and descriptors
    const detections = await faceapi.detectAllFaces(video, 
    new faceapi.TinyFaceDetectorOptions()).withFaceLandmarks().withFaceDescriptors()
    //resizing detected boxes as per size of face
    const resizedDetections = faceapi.resizeResults(detections, displaySize)
    //clear canvas after showing detections
    canvas.getContext('2d').clearRect(0, 0, canvas.width, canvas.height)
    faceapi.draw.drawFaceLandmarks(canvas, resizedDetections) //draw landmarks
    const labeledFaceDescriptors = await loadLabeledImages() //get face descriptors
    //automatically aissign labels to FaceMatcher from detection results 
    // from reference images
    const faceMatcher = new faceapi.FaceMatcher(labeledFaceDescriptors, 0.6)
    //recognizing all faces in the video
    const results = resizedDetections.map(d => faceMatcher.findBestMatch(d.descriptor))
  
    results.forEach((result, i) => { //displaying detection boxes for each recognized student
      const box = resizedDetections[i].detection.box
      const drawBox = new faceapi.draw.DrawBox(box, {label: result.toString() })

      if (results.label == "unknown"){ //if face detected is unknown
        console.log("not found")
      }
      else{ // if face is recognized
        console.log("found")
        const groupName = document.getElementById("groupName").textContent
        const detectedStudent = result.label

        const data = { 
          detectedStudent , groupName
        }  
        //sending data to the server
        const options = {
          method : 'POST',
          headers: {
            'Content-Type' : 'application/json'
          },
          body: JSON.stringify(data)
        }
        fetch('/rec_students_check_out', options )

      }
      drawBox.draw(canvas) //draw detection box on the canvas
    })
  }, 100) // iterate as per specified seconds
})

function loadLabeledImages() {
  const labels = ['M00650922'] //names of students
  return Promise.all(
    labels.map(async label => {
      const descriptions = []
      for (let i = 1; i <= 3; i++) { //going through 3 stored images
        //iterating through images
        const img = await faceapi.fetchImage(`public/img/${label}/${i}.jpg`) 
        //detect dingle face from each image
        const detections = await faceapi.detectSingleFace(img).withFaceLandmarks().withFaceDescriptor()
        if(!detections){ //if no faces are detected in the images
          console.log("not found")
        }
        else{ //if faces are detected in the images
          descriptions.push(detections.descriptor)
        }
      }
      return new faceapi.LabeledFaceDescriptors(label, descriptions) //resturn descriptors
    })
  )
}