// Dependencies
require("dotenv").config();
const inquirer = require("inquirer");
const mysql = require("mysql2");
require("console.table");

const db = require("./db/connection");

// Basic functionality of application
function start() {
  inquirer
    .prompt([
      {
        type: "list",
        name: "start",
        message: "Please select what you would like to do.",
        choices: ["View", "Add", "Update", "Exit"],
      },
    ])
    .then(function (res) {
      switch (res.start) {
        case "View":
          view();
          break;
        case "Add":
          add();
          break;
        case "Update":
          updateEmployee();
          break;
        case "Exit":
          console.log("-------------------------");
          console.log("Goodbye!");
          console.log("-------------------------");
          break;
        default:
          console.log("default");
      }
    });
}
start();
