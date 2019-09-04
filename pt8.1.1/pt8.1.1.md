# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 8.1.1**



![1567565514595](H:\repos\fundamentals-of-data-management\pt8.1.1\pt8.1.1.assets\1567565514595.png)



The insert statement fails as there is no accompanying `purchaseID` in the purchases table. (value 111).



To make the insert work:

```mysql
SET AUTOCOMMIT = false;

INSERT INTO Purchase (purchaseID, custName, orderedDate, shipDate)
VALUES (113, 'klim', '2019-05-05', '2019-05-06');

INSERT INTO PurchasedItem (purchaseID, itemNo, productName, orderedQty, quotedPrice)
VALUES (113, 1, 'Lawn mower', 3, 105.30);

COMMIT;
```



![1567566112147](H:\repos\fundamentals-of-data-management\pt8.1.1\pt8.1.1.assets\1567566112147.png)