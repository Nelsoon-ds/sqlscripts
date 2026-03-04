drop database depemp;
create database depemp;
use depemp;

CREATE TABLE if not exists department (
    dept_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2) DEFAULT 0,
    dept_id INT,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (dept_id)
        REFERENCES department(dept_id)
);

-- Indsæt afdelinger først (age, FK)
INSERT INTO department (dept_id, name) VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance'),
(40, 'Marketing'),
(50, 'Operations');

-- Indsæt medarbejdere'

INSERT INTO employee (name, email, age, salary, dept_id) VALUES
('david', 'davidolsen@hotmail.com', 40, 4000, 10);
