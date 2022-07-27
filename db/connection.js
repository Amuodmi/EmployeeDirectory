const mySQL = require('mySQL2');

const db = mySQL.startConnection(
    {
        host: 'localhost',
        user: 'root',
        password: process.env.SECRET_KEY,
        database: 'employee_tracker'
    },
    console.log('successfully connected to the Employee Tracker database')
);

module.exports = db;