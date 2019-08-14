# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Past Task 5.1.4**

### Table Students

```mysql
CREATE TABLE Students 
(
	stud_id INT(10) UNSIGNED not null,
	stud_name VARCHAR(30) not null,
    stud_phone CHAR(11) not null,
    stud_date_of_birth DATE not null,
    stud_city CHAR(30) not null,
    stud_address CHAR(100) not null,
    stud_postcode SMALLINT UNSIGNED not null,
    
	PRIMARY KEY (stud_id)
);
```

### Table Subjects

```mysql
CREATE TABLE Subjects 
(
	subj_code CHAR(6) not null,
    subj_title VARCHAR(30),
    
	PRIMARY KEY (subj_Code)
);
```

### Table Subject Enrolment

```mysql
CREATE TABLE Subj_Enrolment 
(
	stud_id INT(10) UNSIGNED not null,
	subj_code CHAR(6) not null,
    semester SMALLINT UNSIGNED not null,
    year YEAR not null,
    comment VARCHAR(100) not null,
    
	PRIMARY KEY (stud_id, subj_code, semester, year),
    FOREIGN KEY (stud_id) REFERENCES Students(stud_id),
    FOREIGN KEY (subj_code) REFERENCES Subjects(subj_code)

);
```

### Table Grades

```mysql
CREATE TABLE Grades 
(
	stud_id INT(10) UNSIGNED not null,
	subj_code CHAR(6) not null,
    semester SMALLINT UNSIGNED not null,
    year YEAR not null,
    grade CHAR(2) not null,
    
	PRIMARY KEY (stud_id, subj_code, semester, year),
    FOREIGN KEY (stud_id) REFERENCES Students(stud_id),
    FOREIGN KEY (subj_code) REFERENCES Subjects(subj_code)

);
```

