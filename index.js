const inquirer = require("inquirer");
const mysql = require("mysql");
const consoleTable = require("console.table");

let connection = mysql.createConnection({
    host: "localhost",

    // PORT
    port: 3306,
    // username
    user: "root",
    // password and database
    password: "password",
    database: "myEmployees_DB"
});

connection.connect((err) => {
    if (err) {
    console.log(err);
    throw err;
    } else {
    start();
    }
});

async function viewAllEmployees() {
    let allEmployees = await db.selectAllEmployees();
    console.table(db.allEmployees());
}

viewAllEmployees();

const addEmployees = () => {
    prompt({
    type: "list",
    name: "employeeToAdd",
    message: "What type of employee would you like to add?",
    choices: [
        "Accounting person",
        "Accounting lead",
        "Lead engineer",
        "Software IT/Engineer",
        "Lead IT/Engineer",
        "Finance person",
        "Finance manager",
        "Lawyer",
        "Legal team leader",
    ],
});
};
