# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Credit Task 5.2.1**

Company Database Relations

```mysql
CREATE DATABASE test;
USE test;

CREATE TABLE Employee 
(
	emp_id INT(10) UNSIGNED not null,
    emp_fname VARCHAR(30) not null,
    tmp_lname VARCHAR(30) not null,
    emp_bdate DATE not null,
    emp_address VARCHAR(255) not null,
    emp_gender CHAR(1) CHECK(emp_gender = 'M' OR emp_gender = 'F' OR emp_gender = 'U'),
    dept_id INT(10) UNSIGNED not null,
    super_id INT(10) UNSIGNED not null,
    
    PRIMARY KEY(emp_id),
    FOREIGN KEY(dept_id) REFERENCES Department(dept_id),
    FOREIGN KEY(super_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Department
(
	dept_id INT(10) UNSIGNED not null,
    dept_name VARCHAR(40) not null,
    mgr_id INT(10) UNSIGNED not null,
    mgr_start_date DATE not null,
    
    PRIMARY KEY(dept_id),
    FOREIGN KEY(mgr_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Project
(
	proj_id INT(10) UNSIGNED not null,
    proj_name CHAR(40) not null,
    proj_loc CHAR(40) not null,
    dept_id INT(10) UNSIGNED not null,
    
    PRIMARY KEY(proj_id),
    FOREIGN KEY(dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Works_on
(
	proj_id INT(10) UNSIGNED not null,
    emp_id INT(10) UNSIGNED not null,
    role CHAR(30) not null,
    salary_factor DECIMAL(2,1) not null DEFAULT 0 CHECK(salary_factor >= 0.00),
    hours FLOAT UNSIGNED not null,
	role_comment VARCHAR(255) not null,
    
    PRIMARY KEY(proj_id, emp_id),
    FOREIGN KEY(proj_id) REFERENCES Project(proj_id),
    FOREIGN KEY(emp_id) REFERENCES  Employee(emp_id)
);

CREATE TABLE Salary
(
	emp_id INT(10) UNSIGNED not null,
    salary DECIMAL(20,4) UNSIGNED not null,
    start_date DATE not null,
    
    PRIMARY KEY(emp_id, start_date),
    FOREIGN KEY(emp_id) references Employee(emp_id)
);

```

