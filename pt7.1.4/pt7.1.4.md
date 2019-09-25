# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 7.1.4**

#### a) What do you think its purpose might be?

To return a table of all the customers and their orders. The order will be by Last Name, First Name, and Order Date by Ascending order, with the last one being descending.

#### b)

```mysql
SELECT CustFirstName, CustLastName, OrderDate
FROM Customers c JOIN Orders o
ON o.CustomerID=c.CustomerID
ORDER BY CustLastName, CustFirstName, OrderDate DESC;
```

![1566359739900](H:\repos\fundamentals-of-data-management\pt7.1.4\pt7.1.4.assets\1566359739900.png)

#### c)

Using the OUTER JOIN to join via the LEFT relation (customer)

```mysql
SELECT CustFirstName, CustLastName, OrderDate
FROM Customers c LEFT OUTER JOIN Orders o
ON o.CustomerID=c.CustomerID
ORDER BY CustLastName, CustFirstName, OrderDate DESC;
```

![1566360070565](H:\repos\fundamentals-of-data-management\pt7.1.4\pt7.1.4.assets\1566360070565.png)

#### d)

Selecting only the latest orders requires SubQueries:

```mysql
use SalesOrdersExample;

SELECT c.CustomerID, CustFirstName, CustLastName, OrderDate
FROM Customers c JOIN Orders o
ON o.CustomerID=c.CustomerID    
where o.OrderDate = 
	(
		select MAX(o.OrderDate)
        from orders o
	)
ORDER BY CustLastName, CustFirstName, OrderDate desc ;


drop view CustomerOrdersOrdered;
```

![1569384239294](F:\repos\fundamentals-of-data-management\pt7.1.4\pt7.1.4.assets\1569384239294.png)