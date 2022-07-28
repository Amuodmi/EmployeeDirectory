const mysql = require('mysql2');

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: process.env.SECRET_KEY,
        database: 'employee_directory'
    },
    console.log('successfully connected to the Employee Directory database')
);

module.exports = db;