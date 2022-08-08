USE myEmployees_DB;

INSERT INTO department (name) VALUES
("Accounting"),
("IT/Engineering"),
("Finance"),
("Legal");

INSERT INTO roles (title, salary, department_id) VALUES
("Accounting person", 65000, 1),
("Accounting lead", 750000, 1),
("Software IT/Engineer", 75000, 2),
("Lead IT/Engineer", 95000, 2),
("Finance person", 82000, 3),
("Finance manager", 900000, 3),
("Lawyer", 135000, 4),
("Legal team leader", 150000, 4);

INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES
("Michael", "Davis", 1, NULL),
("Shirley", "Schrute", 1, 1),
("Jim", "Davis", 2, NULL),
("Alison", "Philbin", 2, 2),
("Oscar", "Martinez", 3, NULL),
("Peter", "Ferguson", 3, 3),
("Leslie", "Flenderson", 4, NULL),
("Holy", "Daniels", 4, 4);