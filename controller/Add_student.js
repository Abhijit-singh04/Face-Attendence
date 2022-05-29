//REQUIREING DATABASE CONNECTION
const db = require('../db/connect')


//GET METHOD FOR ADD STUDENT
var list = {}
const GET_add_student = (req, res, next) => {
    // db.query("SELECT module_name from module").then(([result]) => {
    //     if (result) {
    //         list = { listResults: result }
    //         console.log(result)
    //         res.render('add_student', list)

    //     }
    //     else if (err) {
    //         throw err

    // }
    res.render('add_student.ejs')

    // db.query("SELECT module_name FROM module",function(err, result) {
    //     if(result){
    //         list = {listResults: result}
    //         res.render('add_student', list)
    //     }
    //     else if(err){
    //        throw err
    //        console.log(err)
    //     }
    // })
    // .then(([list,result])=>{
    //     list = {listResults: result}
    //     res.render('add_student', list)
    // })
    // .catch(ysqlerr => {
    //     throw err;
    // })
    // /* .then(([result]) => {
    //  if (result) {
    //      list = { listResults: result } //storing results in list
    //      res.render('add_student', list)
    //  }
    //  else if (err) {
    //      throw err

    //  }
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


module.exports={
    GET_add_student,
    POST_add_student
}