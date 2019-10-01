# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 8.2.1**

#### a)

The task at hand is to move one tuple from a table to another using the `INSERT...SELECT` keywords.

To do this, the following table and data was used:

```mysql
CREATE TABLE Purchase(
purchaseID int unsigned not null auto_increment,
custName VARCHAR (30) not null,
orderedDate DATE not null,
shipDate DATE,
PRIMARY KEY (purchaseID));
CREATE TABLE PurchasedItem(
purchaseID int unsigned not null,
itemNo int unsigned not null,
productName VARCHAR(30) not null,
orderedQty TINYINT unsigned not null,
quotedPrice DECIMAL(5, 2) not null,
PRIMARY KEY (purchaseID, itemNo),
FOREIGN KEY (purchaseID) REFERENCES Purchase(purchaseID));

INSERT into Purchase (custName, shipDate, orderedDate) VALUES ('Max Wang', '2016-05-12', '2016-05-12');
INSERT into Purchase (custName, shipDate, orderedDate) VALUES ('Danny Tran', '2018-08-12', '2016-05-12');
INSERT into PurchasedItem  VALUES (1, 113, 'AProduct', 1, 100);

CREATE TABLE ShoppingCart(
shoppingCartID int unsigned not null auto_increment,
custName VARCHAR (30) not null,
orderedDate DATE not null,
PRIMARY KEY (shoppingCartID));
```

We want to move the customer **Danny Tran** to the second table, notably the shopping cart. To do so, the statement is:

```mysql
INSERT INTO ShoppingCart (custName, orderedDate)
SELECT custName, orderedDate from Purchase where purchaseID=2;
```

Looking at the results of the Purchase Table and then the ShoppingCart Table shows that our statement has successfully executed:



![1569893967106](F:\repos\fundamentals-of-data-management\pt8.2.1c\pt8.2.1c.assets\1569893967106.png)

![1569893977545](F:\repos\fundamentals-of-data-management\pt8.2.1c\pt8.2.1c.assets\1569893977545.png)

