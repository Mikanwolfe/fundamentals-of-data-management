# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 9.1.1**

#### a)

**Transaction T1 vs Transaction T2**

![1570498855510](F:\repos\fundamentals-of-data-management\pt9.1.1\pt9.1.1.assets\1570498855510.png)

*From the P9.1.1 Worksheet*

### T1

Transaction T1 simply reads the tables modified by Transaction T2. T1 does not influence the table in any way, and therefore T1 can be issued as three separate transactions or a single transaction.

### T2

Transaction T2 must be a transaction due to the ACID principle of RDBMS. Notably, the 'A' and 'D' in ACID: Atomicity and Durability, refer to the following:

* Atomicity
  * The transaction itself is a unit of work: it alters the tables it requires and places the correct order, retaining integrity and limiting all the commands within the transaction to do only one thing.
* Durability
  * The database must be coherent and maintain integrity at all times, before, and after, a transaction. If T2 was not a transaction, the database would be inconsistent, which would cause all manner of problems.