# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Past Task 5.1.5 -- ALTER Scripts**

```mysql
ALTER TABLE Students
ADD COLUMN gender CHAR(1) CHECK(gender='m' OR gender='f');

ALTER TABLE Subj_Enrolments
DROP COLUMN comment VARCHAR(100);
```



