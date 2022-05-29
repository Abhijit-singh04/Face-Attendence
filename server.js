if (process.env.NODE_ENV !== 'production') {
    require('dotenv').config()
}

// using express
const express = require('express')
const app = express()

//connecting to databse
const db = require('./db/connect')


// declaring tools which we will use
const path = require('path');
const cookieSession = require('cookie-session');
const flash = require('express-flash')
const session = require('express-session')
const bodyParser = require('body-parser')


// SET OUR VIEWS AND VIEW ENGINE
app.use('/public', express.static(path.join(__dirname,'public')))
app.use('/models', express.static(path.join(__dirname ,'models')))
app.use('/static', express.static(path.join(__dirname , 'static')))
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.json({
    limit: '2mb'
}))
app.use(bodyParser.urlencoded({
    extended: false
}))
app.use(express.urlencoded({
    extended: false
}))

//creating session
app.use(cookieSession({
    name: 'session',
    keys: ['key1', 'key2'],
    maxAge: 3600 * 1000 // will be for one hour
}));
app.use(session({
    key: 'user_email',
    secret: 'secret',
    resave: false,
    saveUninitialized: true
}))
app.use(flash())


//using middleware and router
const mainrouter = require('./routes/main_router')
app.use('/', mainrouter)









//if page not found
app.use('/', (req, res) => {
    res.status(404).send('<h1>404 Page Not Found!</h1>');
});


//connection to server
const port = process.env.PORT || 3000


const start = async () => {
    try {
        app.listen(port, () =>
            console.log(`Server is listening on port ${port}...`)
        );
    } catch (error) {
        console.log(error);
    }
};

start();

module.exports = app;
