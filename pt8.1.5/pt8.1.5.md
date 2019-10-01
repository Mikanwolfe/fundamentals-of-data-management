# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 8.1.5**

#### a)

Changing the ship date of one of the purchases requires some input data:

```mysql
INSERT into Purchase (custName, shipDate, orderedDate) VALUES ('Max Wang', '2016-05-12', '2016-05-12');
INSERT into PurchasedItem  VALUES (1, 113, 'AProduct', 1, 100);
```

Using the UPDATE keyword, the following statement was used to alter the shipping date:

```mysql
UPDATE Purchase SET shipDate='2019-05-12' WHERE PurchaseID=1;
```

This gives the following output:
![1569892978047](F:\repos\fundamentals-of-data-management\pt8.1.5\pt8.1.5.assets\1569892978047.png)

and:

![1569892979862](F:\repos\fundamentals-of-data-management\pt8.1.5\pt8.1.5.assets\1569892979862.png)



Hence, indicating successful alteration of the Purchase table.

#### b)

Updating two values at a time using the `UPDATE` keyword uses the following statement:

```mysql
UPDATE Purchase SET shipDate='2012-05-12', orderedDate='2013-05-12' WHERE PurchaseID=1;
```

Giving the following outputs:

![1569893161871](F:\repos\fundamentals-of-data-management\pt8.1.5\pt8.1.5.assets\1569893161871.png)



![1569893164918](F:\repos\fundamentals-of-data-management\pt8.1.5\pt8.1.5.assets\1569893164918.png)