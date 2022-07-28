require("dotenv").config();

const inquirer = require("inquirer");
const db = require("./db/connection");
const express = require("express");

const answerInput = []

const startQuestions = () => {
    return inquirer.prompt ([
        {
            type: "list",
            name: "selectOption",
            message: "What would you like to do?",
            choices: [
                "View All Employees",
                "Add Employee",
                "Update Employee Role",
                "View All Roles",
                "Add Role",
                "View All Departments",
                "Add Department"
            ],
        },
    ])
    .then((answer) => {
        //begins next question
    pickedChoice(answer);
    })};

 function pickedChoice(answer){
    //if View All Employees was chosen, set new name for data, gets data from employees, dept, roles, and joins it to the left column - these prompts will begin:
if (answer.selectOption === "View All Employees"){
    const viewEmployees = `SELECT employees.id AS 'ID', employees.first_name AS 'First Name', employees.last_name AS 'Last Name', employees.employee_id AS 'Employee ID', employees.job_title AS 'Job Title', employees.department AS 'Department', employees.salary AS 'Salary", employees.reporting_manager AS 'Reporting Manager'
    FROM employees
    LEFT JOIN department
    ON employees.department_id = department.id
    LEFT JOIN roles
    ON employees.roles_id = roles.id`;

    then [startQuestions()];
}

//View All Departments
else if (answer.selectOption === "View All Departments"){
    const viewDepartments = `SELECT * FROM departments ORDER BY name`;

    then [startQuestions()];
}

//View All Roles
else if (answer.selectOption === "View All Roles") {
    const viewRoles = `SELECT roles.job_title AS 'Job Title', roles.role_id AS 'Role ID', salary, department`;

    then [startQuestions()];
}
else {
    console.log("Error getting table data.");
}

};
 
//Add Role
function addOptions(answers){
    if (answers.selectOption === "Add Role") {
       return inquirer.prompt ([{
       type:"input",
       name: "position",  
       message: "What is the name of the position?"
       },
       {
        type: "input",
        name: "salary",
        message: "What is the salary of the position?"
       },
       {
        type: "list",
        name: "departmentChoice",
        message: "Which department does the position belong to?",
        choices: [
            "Engineering",
            "Finance",
            "Legal",
            "Sales",
            "Service"
        ]
       }
    ])
    .then ((answers) => {
        const startRole = new Role (answers.position, answers.salary, answers.departmentChoice);
        answerInput.push(startRole);
        console.log("You added a new position.")
        startQuestions();
    })
  }
//Add Department 
  if (answers.selectOption === "Add Department"){
        return inquirer.prompt([
            {
            type: "input",
            name: "name",
            message: "What is the name of the department to be added?"
            }])

        .then ((answers) => {
            const startDepartment = new Department (answers.name);
            answerInput.push(startDepartment);
            console.log("You added a department.")
            startQuestions();
        })

}

//Add Employee
if (answers.selectOption === "Add Employee"){
    return inquirer.prompt([
        {
            type: "input",
            name: "firstName",
            message: "What is the employees first name?"
        },
        {
            type:"input",
            name: "lastName",
            message: "What is the employees last name?"
        },
        {
            type: "list",
            name: "position",
            message: "What is the employees position?",
            choices: [
                "Sales Lead",
                "Salesperson",
                "Lead Engineer",
                "Software Engineer",
                "Account Manager",
                "Accountant",
                "Legal Team Lead",
                "Lawyer"
            ]
        },
        {
            type: "list",
            name: "manager",
            message: "Who is the employees manager?",
            choices: [
                "Siuan Sanche",
                "Gareth Byrne",
                "Moiraine Damodred",
                "Egwene AlVere",
                "Nynaeve AlMeara"
            ]
        }])
        .then ((answers) => {
            const startEmployee = new Employee (answers.position, answers.name);
            answerInput.push(startEmployee);
            console.log("You added a new employee.")
            startQuestions();
        })
}

if (answer.selectOption === "Update Employee Role"){
    return inquirer.prompt([
        {
            type: "list",
            name: "update",
            message: "Which employee's position would you like to update?",
            choices: [
                "Moiraine Damodred",
                "Lan Mandragoran",
                "Rand AlThor",
                "Perrin Ayabara",
                "Mat Cauthon",
                "Eqwene AlVere",
                "Nynaeve AlMeara"
            ]
        },
        {
            type: "list",
            name: "assign",
            message: "Which position do you want to assign the selected employee?",
            choices: [
                "Sales Lead",
                "Salesperson",
                "Lead Engineer",
                "Software Engineer",
                "Account Manager",
                "Accountant",
                "Legal Team Lead",
                "Lawyer" 
            ]

        }
    ])
    .then ((answers) => {
        const startUpdate = new Update (answers.update, answers.assign);
        answerInput.push(startUpdate);
        console.log("You edited an employee's file.")
        startQuestions();
    })
}
}

};