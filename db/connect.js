const mysql = require('mysql2');
const db = mysql.createPool({
    host: 'localhost', // MYSQL HOST NAME
    user: 'root1',        // MYSQL USERNAME
    password: 'Engage@123',    // MYSQL PASSWORD
    database: 'faceid'      // MYSQL DB NAME
}).promise();


module.exports = db;