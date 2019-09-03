# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 7.1.5**

#### a)

MySQL Code:

```mysql
use SalesOrdersExample;

create view CustOrderItems as
select c.CustFirstName, c.CustLastName, o.OrderNumber, o.OrderDate, o.ShipDate, od.QuantityOrdered * od.QuotedPrice as ItemTotal
from Customers c 
join Orders o
on c.CustomerID = o.CustomerID

join Order_Details od
on o.OrderNumber = od.OrderNumber;


select CustFirstName, CustLastName, OrderNumber, OrderDate, ShipDate, ItemTotal
from CustOrderItems;
```



**![1567399154054](H:\repos\fundamentals-of-data-management\pt7.1.5\pt7.1.5.assets\1567399154054.png)**



#### b)

MySQL Code:

```mysql
use SalesOrdersExample;

create view CustOrderItems as
select c.CustFirstName, c.CustLastName, o.OrderNumber, o.OrderDate, o.ShipDate, od.QuantityOrdered * od.QuotedPrice as ItemTotal
from Customers c 
join Orders o
on c.CustomerID = o.CustomerID

join Order_Details od
on o.OrderNumber = od.OrderNumber;


select CustFirstName, CustLastName, OrderNumber, OrderDate, ShipDate, sum(ItemTotal) as OrderTotal
from CustOrderItems
group by OrderNumber;
```

![1567399215400](H:\repos\fundamentals-of-data-management\pt7.1.5\pt7.1.5.assets\1567399215400.png)