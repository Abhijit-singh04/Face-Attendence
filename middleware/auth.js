const express = require('express')
const app = express()

//creating custom middleware
const ifNotLoggedin = (req, res, next) => {
    if (!req.session.isLoggedIn) {
        return res.render('register');
    }
    next();
}

const ifLoggedin = (req, res, next) => {

    console.log(req.session)
    if (req.session.isLoggedIn) {
        return res.redirect('/');
    }
    next();
}
module.exports={ifNotLoggedin,ifLoggedin}