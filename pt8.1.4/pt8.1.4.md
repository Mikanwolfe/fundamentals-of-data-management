# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 8.1.4**

#### a)

Using the supplied tables, the following values were added:

```mysql
INSERT into Purchase (custName, shipDate, orderedDate) VALUES ('Max Wang', '2016-05-12', '2016-05-12');
INSERT into PurchasedItem  VALUES (1, 113, 'AProduct', 1, 100);
```

The delete code is as follows:

```mysql
delete from Purchase where purchaseID=1;
```

The error given:

```
Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`salesordersexample`.`purchaseditem`, CONSTRAINT `purchaseditem_ibfk_1` FOREIGN KEY (`purchaseID`) REFERENCES `purchase` (`purchaseID`))

```

To solve this issue, we'll have to delete the child rows first through the foreign key constraint, and then delete the parent row:

```mysql
delete from PurchasedItem where purchaseID=1;
delete from Purchase where purchaseID=1;
```

This gives the following output:

![1569892652765](F:\repos\fundamentals-of-data-management\pt8.1.4\pt8.1.4.assets\1569892652765.png)

Indicating successful deletion