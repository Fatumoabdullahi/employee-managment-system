USE employees_db;

INSERT INTO department (id,name)
VALUES (1,"Marketing"),
 (2,"Engineering"),
 (3,"Finance"),
 (4,"Legal");

INSERT INTO role (id, title, salary, department_id)
VALUES 
(1,"Marketing Lead", 100000, 1),
(2,"Lead Engineer", 150000, 2),
(3,"Software Engineer", 120000, 2),
(4,"Accountant", 125000, 3),
(5,"Legal Team Lead", 250000, 4);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1,"Harry", "Potter", 1, 1),
(2,"Hermoine", "Granger", 2, 2),
(3,"Ron", "Weasley", 3, null),
(4,"Lord", "Voldemort", 4, 4),
(5,"Draco", "Malfoy", 5, null),
(6,"Neville", "Longbottom", 6, null),
(7,"Rubeus", "Hagrid", 7, 7),
(8,"Luna", "Lovegood", 8, 8);