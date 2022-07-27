const mySQL = require('mySQL2');

const db = mySQL.startConnection(
    {
        host: 'localhost',
        user: 'mysql -u root -p',
        password: 'Supergeil!016',
        database: 'employee_tracker'
    },
    console.log('successfully connected to the Employee Tracker database')
);

module.exports = db;