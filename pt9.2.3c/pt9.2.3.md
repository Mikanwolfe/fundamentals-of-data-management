# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Credit Task 9.2.3**

**How are lost updates prevented in MySQL using `READ-COMMITTED` Isolation Level?**

MySQL normally uses `REPEATABLE-READ` which does not allow lost updates. On the other hand, there are workarounds on the application side to reduce, or remove, the chance of lost updates occurring in a database. A simple method of doing this is through the `SELECT FOR UPDATE` keyword.

For example:

```mysql
SELECT * FROM Products WHERE ProductID=1 FOR UPDATE
```

The above line will lock `Products.ProductID` until the transaction as been completed, removing the ability for another transaction to modify the attribute concurrently and therefore lost updates.

Of course, this does reduce the performance of the database.

