# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Credit Task 9.2.2**

First making sure that `autocommit` is off:

![1570499612766](F:\repos\fundamentals-of-data-management\pt9.2.1c\pt9.2.1.assets\1570499612766.png)

#### a)

>Run the first statement of T2 again in your right MySQL Workbench instance. Run all statements of T1 in your left Workbench instance. What do you see?

![1570502981910](F:\repos\fundamentals-of-data-management\pt9.2.2c\pt9.2.2.assets\1570502981910.png)

As there have been no commits, there have been no changes (aside from last task 9.2.1)




>Run the rest of T2 in the right MySQL Workbench. Check again what you can see in your left Workbench.

![1570503055504](F:\repos\fundamentals-of-data-management\pt9.2.2c\pt9.2.2.assets\1570503055504.png)

Again, no commits, no changes.




>Commit T2 in your right Workbench. Re-run T1 in your left instance. What do you see?

![1570503082825](F:\repos\fundamentals-of-data-management\pt9.2.2c\pt9.2.2.assets\1570503082825.png)

Due to the `READ-COMMIT` isolation level, this time, we can see the commits made by T2




>Commit T1 in your left Workbench. Re-run T1 again. What do you see?

![1570503121972](F:\repos\fundamentals-of-data-management\pt9.2.2c\pt9.2.2.assets\1570503121972.png)

Unchanged compared to previous, as commits are visible.

**How did the query results differ from the ones in subtask 2.1? **

We can now read committed values even if the transaction T1 has not been committed itself.



**How can this difference lead to a lost update? **

Given two transactions, T1 and T2:

```
X = 100
W1 = +=50
W2 = +=30

T1 ----> R1(X) -------->  W1(X) ----------> C1(X)
					   X = 150

T2 -----------> R2(X) --> W2(X) --> C2(X)
					   X = 130
```

T2 is lost as C1(X) commits after C2(X).



**Explain the difference in your report and list the necessary SQL statements to produce a lost update at read committed isolation level.**

Necessary SQL Statements to create a lost update:

```mysql

-- T1

SELECT QuantityOnHand FROM Products WHERE ProductNumber = 2;

```



```mysql

-- T2

SELECT QuantityOnHand FROM Products WHERE ProductNumber = 2;
UPDATE Products SET QuantityOnHand= QuantityOnHand-2 WHERE ProductNumber=1;

COMMIT;
```




```mysql

-- T1

UPDATE Products SET QuantityOnHand= QuantityOnHand-5 WHERE ProductNumber=1;

COMMIT;
```



T2 is lost.