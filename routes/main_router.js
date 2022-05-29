const express = require('express')
// const app = express()

//requireing database connection
const db = require('../db/connect')

//requireing router
const router = express.Router()

// const {ifLoggedin, ifNotLoggedin }= require('../middleware/auth')
const {
    ifNotLoggedin,
    ifLoggedin,
    user_exist,
    home_page,
    login_post,
    landing,
    google_login,
    register,
    register_post,
    logout,
    user_register_exist
} = require('../controller/request')


const {
    get_student,
    view_student
} = require('../controller/view_student_request')
const {
    session_,
    get_time,
    GET_check_in,
    POST_check_in,
    GET_check_OUT,
    POST_check_OUT,
    POST_rec_students,
    POST_rec_students_check_out,
} = require('../controller/session_request')
const {
    attendence_,
    get_data
} = require('../controller/attendence_request')

const {
    GET_add_student,
    POST_add_student
} = require('../controller/Add_student')
const {
    contact_us_get,
    contact_us_post
} = require('../controller/contact_us')


//declaring methods
router.route('/register').get(ifLoggedin, register)
router.route('/').get(ifNotLoggedin, home_page)
router.route('/landing').get(landing)
router.route('/googleLogin').get(google_login)
router.route('/register').post(user_register_exist, register_post)
router.route('/login').post(user_exist, login_post)
router.route('/logout').get(logout)
//get student route
router.route('/getStudents').get(get_student)
router.route('/viewStudents').get(view_student)
//session
router.route('/session').get(session_)
router.route('/getTime').get(get_time)
router.route('/check_in_recognition').get(GET_check_in)
router.route('/check_in_recognition').post(POST_check_in)
router.route('/check_out_recognition').get(GET_check_OUT)
router.route('/check_out_recognition').post(POST_check_OUT)
router.route('/rec_students').post(POST_rec_students)
router.route('/rec_students_check_out').post(POST_rec_students_check_out)



//attendence
router.route('/attendance').get(attendence_)
router.route('/getData').get(get_data)

//ADD STUDENT
router.route('//add_student').get(GET_add_student)
router.route('/add_student').post(POST_add_student)



//contact-us
router.route('/contact-us').get(contact_us_get)
router.route('/contact-us').post(contact_us_post)

module.exports = router;