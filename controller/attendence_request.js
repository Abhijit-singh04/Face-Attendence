// requiring connection database
const db = require('../db/connect')


//// getting attendance of students who attended session
const attendence_ = (req, res, next) => {
    db.query("SELECT distinct event_name FROM faceid.calender_events where user= ?", [req.session.user]).then(([result]) => {
        if (result) {
            list = {
                listResults: result
            }
            //sending result
            res.render('attendance', list)

        } else if (err) {
            throw err //throwing error if any

        }
    })

}

//getting data to mark present or absent or late
const get_data = (req, res, next) => {
    db.query("SELECT distinct attendance.MISIS, student.student_firstName, TIMEDIFF(check_out, check_in) as attendence_time_difference, TIMEDIFF(calender_events.event_endTime ,calender_events.event_startTime) as event_time_difference FROM faceid.calender_events, faceid.attendance, faceid.student where calender_events.event_name= ? and `date`=? and faceid.attendance.MISIS=faceid.student.MISIS and calender_events.event_name=attendance.event_name", [req.query.selectGroup, req.query.class_date]).then(([result]) => {
        if (result) {
            console.log(result)
            //creating variables which will be used later 
            var studentInfo = {};
            var finalResultsArray = [];
            // var MISIS,student_firstName

            for (var i = 0; i < result.length; i++) {
                // console.log(JSON.stringify(result))
                try {
                    var attendence_time_difference = JSON.stringify(result[i].attendence_time_difference)
                    var event_time_difference = JSON.stringify(result[i].event_time_difference)
                } catch {
                    console.log("error occured at: " + i);
                }


                // var time_diff_withLate = moment(event_time_difference).subtract(10, 'minutes').toDate();
                // var time_diff_withLate = setMinutes(event_time_difference.getMinutes() - 10 );
                console.log(" time attendence_time_difference -> " + attendence_time_difference + " time 2: event time diff -> " + event_time_difference)

                //declaring status which will store their attendence
                var status = {}
                //setting student status
                if (attendence_time_difference) {
                    if (attendence_time_difference == (event_time_difference - 20)) {
                        console.log("here")

                        status[i] = "Present"
                    } else {
                        status[i] = "Late"

                    }
                } else {
                    status[i] = "Absent"
                }
                console.log(i + ":" + status[i])
                studentInfo = {
                    'MISIS': result[i].MISIS,
                    'student_firstName': result[i].student_firstName,
                    'status': status[i],

                    // id : result[i].MISIS,
                    // name : resilt[i].MISIS,
                }

                finalResultsArray.push(studentInfo);
            }

            var finalObject = {
                'data': finalResultsArray
            }
            console.log("student infow below ")
            console.log(JSON.stringify(finalObject))
            //sending data
            res.send(finalObject)
        } else if (err) {
            throw err

        }
    })
}




//exporting module
module.exports = {
    attendence_,
    get_data
}