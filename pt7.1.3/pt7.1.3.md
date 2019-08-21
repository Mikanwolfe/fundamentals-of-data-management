# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 7.1.3**

Counting the number of Customers per State:

```mysql
SELECT COUNT(*) as NumCustomers, CustState
FROM Customers
GROUP BY CustState;
```

![1566357146126](H:\repos\fundamentals-of-data-management\pt7.1.3\pt7.1.3.assets\1566357146126.png)



