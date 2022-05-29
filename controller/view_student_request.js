//REQUIREING DATABASE CONNECTION
const db = require('../db/connect')



//GETTING STUDENTS FROM DATABASE
var students = []
const get_student = (req, res, next) => {
    db.query("SELECT * from student, students_module, module where module_name=? AND module.module_id=students_module.module_id AND students_module.MISIS=student.MISIS order by student_firstName asc", [req.query.selectGroup]).then(([result]) => {
        if (result) {
            // list = {listResults: result}
            console.log(result)
            //we will send result after query
            res.send(result);
        } else if (err) {
            //trowing error if any 
            throw err

        }
    })
}


//SENDING STUDENTS AND RENDERING VIEWSTUDENTS AFTER QUERY
const view_student = (req, res, next) => {
    db.query("SELECT module_name from module").then(([result]) => {
        if (result) {
            list = {
                listResults: result
            }
            console.log(result)
            res.render('viewStudents', list)

        } else if (err) {
            throw err//throwing error if any

        }
    })
}

//EXPORTING MODULE
module.exports = {
    get_student,
    view_student
}