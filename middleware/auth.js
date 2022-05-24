const express = require('express')
const app = express()
// declaring tools
const path = require('path');
const cookieSession = require('cookie-session');
const bcrypt = require('bcrypt')
const flash = require('express-flash')
const session = require('express-session')
const bodyParser = require('body-parser')
// const { google } = require('googleapis');
// const googleCalenderService = require('./utils/google-calendar.service');
const { body, validationResult } = require('express-validator');
app.use(express.json({ limit: '2mb' }))
app.use(bodyParser.urlencoded({ extended: false }))

// SET OUR VIEWS AND VIEW ENGINE
app.use('/public', express.static('public'))
app.use('/models', express.static('models'))
app.use('/static', express.static('static'))
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: false }))
app.use(flash())
app.use(cookieSession({
    name: 'session',
    keys: ['key1', 'key2'],
    maxAge: 3600 * 1000 // 1hr
}));
app.use(session({
    key: 'user_email',
    secret: 'secret',
    resave: false,
    saveUninitialized: true
}))


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