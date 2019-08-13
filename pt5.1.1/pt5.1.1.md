# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Past Task 5.1.1**



## Table Students

| Attribute          | Type           | Reason                                                       |
| ------------------ | -------------- | ------------------------------------------------------------ |
| stud_id            | AutoNumber(10) | AutoNumber ID                                                |
| stud_name          | Varchar(30)    | Names change rarely, saves space.                            |
| stud_phone         | Char(11)       | + 6 1 4 1 2 3 4 5 6 7 8 (Only take up 11 Chars). No need for operations, therefore char. |
| stud_date_of_birth | Date           | Date                                                         |
| stud_city          | Char(30)       | Cities can change                                            |
| stud_address       | Char(100)      | Locations/Addresses can change.                              |
| stud_postcode      | Number(4)      | Operations done on them, therefore number.                   |



## Table Subject

| Attribute  | Type        | Reason                                          |
| ---------- | ----------- | ----------------------------------------------- |
| subj_code  | Char(6)     | A B C 1 2 3                                     |
| subj_title | Varchar(30) | Rarely change, can be quite long so save space. |



## Table Subj_Enrolment

| Attribute | Type         | Reason                          |
| --------- | ------------ | ------------------------------- |
| stud_id   | ^            |                                 |
| subj_code | ^            |                                 |
| semester  | Number(1)    | Semester 1 xor 2                |
| year      | Number(4)    | Somewhere between 1900 and 2100 |
| comment   | Varchar(100) | Unlikely to change, save space. |



## Table Grade

| Attribute | Type    | Reason                           |
| --------- | ------- | -------------------------------- |
| stud_id   | ^       |                                  |
| subj_code | ^       |                                  |
| semester  | ^       |                                  |
| year      | ^       |                                  |
| grade     | Char(2) | Char(1) if most students are bad |



^redundancy is sin. See above.