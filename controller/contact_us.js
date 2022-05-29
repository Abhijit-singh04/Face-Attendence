// requireing database connection
const db = require('../db/connect')

// requireing express
const express = require('express')
const app = express()



//defining tools which will be used 
const bodyParser = require('body-parser')
// var popup = require('popups');
const flash = require('express-flash')
app.use(bodyParser.urlencoded({
    extended: false
}))
app.use(flash())




//the get method for contact-us page
const contact_us_get=(req,res,next)=>{
    res.render('contact-us');
}


// the post method for contact us page
const contact_us_post=(req,res,next)=>{
    console.log(req.body)

    // requireing details
    const {
        name,
      message,
        email
    } = req.body;

    //executing j-query
    db.execute(`INSERT INTO contacts (name, email, message, created_at) VALUES ("${name}",  "${email}", "${message}", NOW())`,
    [name, email, message])
.then(result => {
    console.log('record inserted');
    // popup.alert({
    //     content: 'done ! thank you'
    // });  
    res.render('index');
}).catch(err => {
    // THROW INSERTING USER ERROR'S
    if (err) throw err;
});




 //the below method will not work because need promise   
//    try {
//     var sql = `INSERT INTO contacts (name, email, message, created_at) VALUES ("${name}",  "${email}", "${message}", NOW())`;
//     db.query(sql, function(err, result) {
//         if (err) throw err;
//         console.log('record inserted');
//       //   req.flash('success', 'Data added successfully!');
//         res.redirect('/');
//       });
//    } catch (error) {
//        console.log( 'insertion :' + error)
//    }
    
    
}



// exporting module
module.exports={contact_us_get,contact_us_post}