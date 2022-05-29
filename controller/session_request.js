//REQUIREING DATABASE CONNECTION
const db = require('../db/connect')


// DISPLAYING SESSION AND STORING RESULT IN LIST 
var list = {}
const session_ = (req, res, next) => {
    db.query("SELECT distinct event_name,event_date, event_startTime, event_endTime FROM faceid.calender_events where user= ? and event_date = curdate()", [req.session.user]).then(([result]) => {
        if (result) {
            list = {
                listResults: result
            } //after this we will render session and will send list
            res.render('session', list)
        } else if (err) {
            //throwing error if any 
            throw err

        }
    })
}


//GETTING TIME FOR  SESSION 
const get_time = (req, res, next) => {
    db.query("SELECT distinct event_startTime, event_endTime FROM faceid.calender_events where user= ? and event_name=? and event_date = curdate()", [req.session.user, req.query.selectGroup]).then(([result]) => {
        if (result) {
            console.log(result)
            res.send(result); //sending result
        } else if (err) {
            //throwing error if any 
            throw err

        }
    })

}


//ROUTE FOR CHECKING IN 
const GET_check_in = (req, res, next) => {
    // res.render('check_in_recognition', {
    //     selectGroup
    // })




    // NEW
    console.log('route check---->'+  '/check_in_recognition' + selectGroup)
    console.log(JSON.stringify(selectGroup));

    // const detectedStudent = req.query.MISIS;
    // const groupName = req.query.groupName;

    // const data = {
    //     detectedStudent, groupName
    //   }
    //   //sending data to the server
    //   const options = {
    //     method: 'POST',
    //     headers: {
    //       'Content-Type': 'application/json'
    //     },
    //     body: JSON.stringify(data)
    //   }
    //   fetch('/rec_students', options)

    res.render('check_in_recognition', {
        selectGroup
    })
}


//POST CHECK IN 
const POST_check_in = (req, res, next) => {

    selectGroup = req.body.selectGroup

    res.redirect("check_in_recognition")
}


//ROUTE FOR CHECKING OUT
const GET_check_OUT = (req, res, next) => {
    console.log('/check_in_recognition' + selectGroup)
    res.render('check_out_recognition', {
        selectGroup
    })
}

//POST CHECK OUT
const POST_check_OUT = (req, res, next) => {
    selectGroup = req.body.selectGroup
    console.log('hello post checkout recognition' + selectGroup)
    res.redirect("check_out_recognition")
}





//RECORDING STUDENTS
const POST_rec_students = (req, res, next) => {
//     const data = req.body //getting data from client side
//     console.log(data)
//     MISIS = data.detectedStudent // storing MISIS of the detected student
//     const group_name = data.groupName //storing group name

//     db.execute('SELECT *  FROM attendance WHERE event_name=? and MISIS=? and date=CURDATE() ', [group_name, MISIS]
//         //checking if the record already exists
//     ).then(([result]) => {
//         console.log("result: " + result)
//         if (result.length === 0) { // insert if no records found
//             db.execute("INSERT INTO attendance (event_name, MISIS, date, `check_in`) VALUES (?, ?,CURDATE(),CURTIME())", [group_name, MISIS]).then(rows => {
//                 console.log("done insertion /rec_student")
//                 res.send('Check-In stored successfully')
//             }).catch(err => {

//                 if (err) throw err
//             })
//         } else {
//             return
//         }
//     }).catch(err => {
//         if (err) throw err // display errors
//     })

//     console.log("done")
//     res.send('Check-In stored successfully')
// }


// //RECORDING STUDENTS
// const POST_rec_students_check_out = (req, res, next) => {
//     const data = req.body
//     console.log(data)
//     MISIS = data.detectedStudent
//     const group_name = data.groupName

//     //checking if the record already exists
//     db.execute('SELECT *  FROM attendance WHERE group_name=? and MISIS=? and date =CURDATE() ', [group_name, MISIS]

//     ).then(([result]) => {
//         console.log("result: " + result)
//         if (result) {
//             db.execute("UPDATE attendance SET `check_out` = CURTIME() WHERE group_name=? and MISIS=? and date=CURDATE()", [group_name, MISIS]).then(rows => {
//                 // db.execute("INSERT INTO attendance (check_out) VALUES (?)",[check_out]).then(rows => {
//                 console.log("ok")
//                 // res.send('Check-In stored successfully')
//             }).catch(err => {

//                 if (err) throw err
//             })
//         } else {
//             return
//         }
//     }).catch(err => {
//         if (err) throw err
//     })

//     console.log("done")
//     res.send('Check-In stored successfully')


//NEW
const data = req.body //getting data from client side
    console.log(data)
    MISIS = data.detectedStudent // storing MISIS of the detected student
    const group_name = data.groupName //storing group name

    db.execute('SELECT *  FROM attendance WHERE event_name=? and MISIS=? and date=CURDATE() ', [group_name, MISIS]
        //checking if the record already exists
    ).then(([result]) => {
        console.log("result: " + result[0])
        if (result.length === 0) { // insert if no records found
            db.execute("INSERT INTO attendance (event_name, MISIS, date, `check_in`) VALUES (?, ?,CURDATE(),CURTIME())", [group_name, MISIS]).then(rows => {
                console.log("done insertion /rec_student")
                console.log('Check-In stored successfully')
            }).catch(err => {

                if (err) throw err
            })
        } else {
            return
        }
    }).catch(err => {
        if (err) throw err // display errors
    })

    console.log("done")
    res.send('Check-In stored successfully')
}


const POST_rec_students_check_out = (req, res, next) => {
    const data = req.body
    console.log(data)
    MISIS = data.detectedStudent
    const group_name = data.groupName

    //checking if the record already exists
    db.execute('SELECT *  FROM attendance WHERE event_name=? and MISIS=? and date =CURDATE() ', [group_name, MISIS]

    ).then(([result]) => {
        console.log("result: " + result)
        if (result) {
            db.execute("UPDATE attendance SET `check_out` = CURTIME() WHERE event_name=? and MISIS=? and date=CURDATE()", [group_name, MISIS]).then(rows => {
                // db.execute("INSERT INTO attendance (check_out) VALUES (?)",[check_out]).then(rows => {
                console.log('Check-In stored successfully')
                 res.send()
            }).catch(err => {

                if (err) throw err
            })
        } else {
            return
        }
    }).catch(err => {
        if (err) throw err
    })

    console.log("done")
    res.send('Check-In stored successfully')
}





//EXPORTING MODULE 
module.exports = {
    session_,
    get_time,
    GET_check_in,
    POST_check_in,
    GET_check_OUT,
    POST_check_OUT,
    POST_rec_students,
    POST_rec_students_check_out,
}