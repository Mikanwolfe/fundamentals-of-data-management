# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Credit Task 4.2.1**

| Dependency | Possible (Yes/No) | Why/Why Not?                                                 |
| ---------- | ----------------- | ------------------------------------------------------------ |
| A→B        | No                | A1 = B1, B2                                                  |
| A→C        | No                | A1 = C1, C3                                                  |
| A→D        | No                | A1 = D3, D2                                                  |
| B→A        | No                | B2 = A1, A2                                                  |
| B→C        | Yes               | B1 = C1, B2 = C2, B3 = C5                                    |
| B→D        | No                | B2 = D2, D4                                                  |
| C→A        | No                | C3 = A1, A2                                                  |
| C→B        | Yes               | C1 = B1, C3 = B2, C5 = B3                                    |
| C→D        | No                | C3 = D2, D4                                                  |
| {A, B}→C   | Yes               | A1B1 = C1, A1B2 = C3, A2B2=C3, A3B3=C5<br />--A1B1 (Composite) are 1..* |
| {A, B}→D   | Yes               | A1B1=D3...                                                   |
| {B, C}→A   | No                | B2C3 = A1, A2                                                |
| {B, C}→D   | No                | B2C3 = D2, D4                                                |
| {C, D}→A   | Yes               | All combinations have unique combinations<br />C1D3 = A1, C3D2 = A1, C3D4=A2, C5D4=A3 |
| {C, D}→B   | Yes               | ^ (all keys do not result into more than 1 result)           |
| {A, C}→B   | Yes               | ^ (hence the 1..* relationship)                              |
| {A, C}→D   | Yes               | ^                                                            |



Interpretation: `B→A` means that A depends on B, or:

* B = Student ID
* A = Student Name
  * Student ID → Student Name

To understand the why/why not:

* **Student ID** 111 → **Student Name** John Doe 
  * This is good
* **Student ID** 111 → **Student Name** John Doe,  Jane Doe
  * This is bad
* **Student ID** 111, 113 → **Student Name** John Doe
  * Maybe there are 2 people named John Doe
  * This is OK

Hence:

* B2 = C1, B3 = C2
  * Good, every primary key has only one result.
* B2 = C1, C2
  * This is **bad**, primary key must only respond to one result.
* B2 = C1, B3 = C1
  - Also good, every primary key has only one result, even if it's the same as another