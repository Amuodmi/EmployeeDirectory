const mySQL = require('mySQL2');

const db = mySQL.startConnection(
    {
        host: 'localhost',
        user: 'root',
        password: process.env.SECRET_KEY,
        database: 'employee_directory'
    },
    console.log('successfully connected to the Employee Directory database')
);

module.exports = db;