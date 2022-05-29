//REQUIREING DATABASE CONNECTION
const db = require('../db/connect')


//GET METHOD FOR ADD STUDENT
var list = {}
const GET_add_student = (req, res, next) => {
    res.render('add_student.ejs')

}



const POST_add_student = (req, res, next) => {
    // store all the user input data
    const userDetails = req.body;
    var sql = 'INSERT INTO student SET ?';
    db.query(sql, userDetails, function (err, data) {
        if (err) throw err;
        console.log("User dat is inserted successfully ");
        // res.flash('success', 'Data added successfully!')
        res.json({
            status: 'ok'
        })




    });
}


module.exports = {
    GET_add_student,
    POST_add_student
}