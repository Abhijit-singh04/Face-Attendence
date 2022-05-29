//requireing database connection
const db = require('../db/connect')

//reuiring express
const express = require('express')
const app = express()

//declaring tools 
const {
    body,
    validationResult
} = require('express-validator');

//we are using google api for our project
const {
    google
} = require('googleapis');
const googleCalenderService = require('../utils/google-calendar.service');

//using for hashing
const bcrypt = require('bcrypt')

//USING BODY-PARSESR
const bodyParser = require('body-parser')
app.use(express.json({
    limit: '2mb'
}))
app.use(bodyParser.urlencoded({
    extended: false
}))

// --------------------------------------------------------------------------------------------------------------login
// CREATING OUR CUSTOM MIDDLEWARE
const ifNotLoggedin = (req, res, next) => {
    //IF SESSION IS NOT LOGED IN  WE WILL RENDER REGISTER PAGE
    if (!req.session.isLoggedIn) {
        return res.render('register');
    }
    next();
}

const ifLoggedin = (req, res, next) => {
    //IF SESSION IS  LOGED IN  WE WILL RENDER INDEX PAGE
    if (req.session.isLoggedIn) {
        return res.redirect('/');
    }
    next();
}
// END OF OUR CUSTOM MIDDLEWARE 


//IF SESSION IS  LOGED IN  WE WILL RENDER INDEX PAGE
const home_page = (req, res) => {
    console.log('home-page' + req.session.user)
    res.render('index.ejs')
    console.log(req.session.user)

}

//CHECKING IF USER EXISTS
const user_exist = (req, res, next) => {
    body('email').custom((value) => {
            return db.execute('SELECT email FROM user WHERE email=?', [value])
                .then(([rows]) => {
                    if (rows.length == 1) {
                        return true;
                    }
                    return Promise.reject('Invalid Email Address :(');
                });
        }),
        body('password', 'Password is empty!').trim().not().isEmpty(),
        next();
}


// IF USER EXISTS WE WILL POST THE DATA
//START OF LOGIN POST PAGE
const login_post = (req, res) => {
    const validation_result = validationResult(req);
    //requesting password and email
    const {
        password,
        email
    } = req.body;
    if (validation_result.isEmpty()) {
        //Selecting
        db.execute("SELECT password FROM user WHERE email=?", [email])
            .then(([rows]) => {
                // password  comaparing using bcrypt
                bcrypt.compare(password, rows[0].password).then(compare_result => {
                        if (compare_result === true) {
                            req.session.isLoggedIn = true;
                            req.session.user = email;
                            //if the results are true  we will render index page
                            res.redirect('/');
                        } else {
                            //else we will render register page  
                            res.render('register', {
                                login_errors: ['Invalid Password!']
                            });
                        }
                    })
                    .catch(err => {
                        //throwing error
                        if (err) throw err;
                    });


            }).catch(err => {
                if (err) throw err;
            });
    } else {
        let allErrors = validation_result.errors.map((error) => {
            return error.msg;
        });
        // REDERING LOGINregister PAGE WITH_LOGIN _VALIDATION_ERRORS
        res.render('register', {
            login_errors: allErrors
        });
    }

}
// END OF LOGIN PAGE


//-----------------------------------------------------------------------------------------------------------register
//RENDERING REGISTER PAGE
const register = (req, res) => {
    res.render('register.ejs')
}


//CHECKING THE REGISTERING CREDENTIAL ALREADY EXIST OR NOT 
const user_register_exist = (req, res, next) => {
        body('email', 'Invalid email address!').custom((value) => //end of post data validation
        {
            return db.execute('SELECT email FROM user WHERE email=?', [value])
                .then(([rows]) => {
                    if (rows.length > 0) {
                        return Promise.reject('This E-mail already in use!')
                    }
                    return true
                });
        }),
    body('name', 'Username is Empty!').trim().not().isEmpty(),
    body('password', 'The password must be of min length 6 characters')
    .trim().isLength({
        min: 6
    }) // end of post data validation
next();
}



//POSTING REGISTERED DATA
const register_post = (req, res, next) => {
    const validation_result = validationResult(req);
    const {
        name,
        password,
        email
    } = req.body;
    // IF validation_result HAS NO ERROR
    if (validation_result.isEmpty()) {

        // password encryption (using bcrypt) 
        bcrypt.hash(password, 12).then((hash_pass) => {
                // INSERTING USER INTO DATABASE
                db.execute("INSERT INTO user(name, email, password) VALUES(?,?,?)",
                        [name, email, hash_pass])
                    .then(result => {
                        console.log(" page register status done")
                        res.render('register_status.ejs');
                    }).catch(err => {
                        // THROW INSERTING USER ERROR'S
                        if (err) throw err;
                    });
            })
            .catch(err => {
                // THROW HASING ERROR'S
                if (err) throw err;
            })
    } else {
        // COLLECT ALL THE VALIDATION ERRORS
        let allErrors = validation_result.errors.map((error) => {
            return error.msg;
        });
        // REDERING login-register PAGE WITH VALIDATION ERRORS
        res.render('register', {
            register_error: allErrors,
            old_data: req.body
        });
    }
}
//END OF POSTING REGISTERED DATA








//-------------------------------------------------------------------------------------------------------google-LOGIN

//THE CLIENT ID , KEY AND REDIRECTING PAGE
const oauth2Client = new google.auth.OAuth2(
    // " MY CLIENT ID ",
    "143088193344-43lo7mg1kmsbcg1mt6gbhvfj29v7n5di.apps.googleusercontent.com",
    // "MY KEY ",
    "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",
    // "LONK FOR REDIRECTING PAGE"
    // "https://developers.google.com/oauthplayground",
    "http://localhost:3000/landing"
); 

//DEFINE THE SCOPE OF PERMISSSION
const url = oauth2Client.generateAuthUrl({
    access_type: 'offline',
    scope: 'https://www.googleapis.com/auth/calendar.events'
}); 
//NOW WE WILL REDIRECT TO THE URL WE CREATED ABOVE TO LOGIN INTO GOOGLE ACCOUNT
const google_login = async (req, res) => {
    res.redirect(url)
}
//SETTING REFRESHING TOKEN
oauth2Client.setCredentials({
    refresh_token: `1//04N3TANJsukzoCgYIARAAGAQSNwF-L9Ir-t_mx00V8x_lxDZK0LTt4g9IumiepfQf_4-In9HmlWooCiMTDwsiildilV2mQ-Zhidw` //stored refresh token
}); 

//NOW FROM THE URL WE WILL GET THE CODE AND WE WILL EXCHANGE TOKENS AND CODE AND WILL SET UP CREDENTIALS
const landing = async (req, res, next) => {
    const code = req.query.code; 
    console.log("code -> " + code)
    console.log("code -> " + code)
    const {
        tokens
    } = await oauth2Client.getToken(code) // code and tokens exchange
    oauth2Client.setCredentials(tokens) //credential setting

    oauth2Client.on('tokens', (tokens) => {
        if (tokens.refresh_token) {
            console.log(" Your ref token:-> " + tokens.refresh_token);
        }
        console.log("TOur access token : ->" + tokens.access_token);

    })

    //WE WILL EXTRACT EVENTS  AND WE WILL STORE IN DATABASE
    googleCalenderService.listEvents(oauth2Client, (events) => {
        for (var i = 0; i < events.length; i++) {
            const event_name = events[i].summary
            const event_startDateTime = events[i].start.dateTime.split("T")
            const event_date = event_startDateTime[0]
            const event_startTimeZone = event_startDateTime[1].split("+")
            const event_startTime = event_startTimeZone[0]
            const event_endDateTime = events[i].end.dateTime.split("T")
            const event_endDateTimeZone = event_endDateTime[1].split("+")
            const event_endTime = event_endDateTimeZone[0]
            const user = req.session.user
            // stroing extracted events in the database
            console.log(event_name, event_date, event_startTime, event_endTime, user)
            db.execute("INSERT IGNORE INTO calender_events (event_name, event_date, event_startTime, event_endTime, user) VALUES (?, ?, ?, ?, ?) ",
                [event_name, event_date, event_startTime, event_endTime, user]).then(result => {
                console.log("inserting vents done ")
            }).catch(err => {
                if (err) throw err
            })

        }
        //we will print event information on the page
        const data = {
            events: events
        }//at last we will render landing page
        res.render('landing.ejs', data)

    });
}

// LOGOUT
//SESSION DESTROY
const logout = (req, res, next) => {
    // session destroy
    req.session = null;
    res.redirect('/register');

}


//EXPORTING MODULES
module.exports = {
    google_login,
    home_page,
    landing,
    user_exist,
    ifLoggedin,
    ifNotLoggedin,
    login_post,
    register_post,
    register,
    logout,
    user_register_exist
}