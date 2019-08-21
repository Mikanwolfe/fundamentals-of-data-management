# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 7.1.2**

a) Where Customer State = Washington State

```mysql
SELECT CustFirstName, CustLastName, CONCAT("+", CustAreaCode, " " , CustPhoneNumber) as CustAreaPlusPhNumber, CustState
FROM Customers WHERE CustState='WA';
```

![1566356626629](H:\repos\fundamentals-of-data-management\pt7.1.2\pt7.1.2.assets\1566356626629.png)



---

b) Oregon + Washington State

```mysql
SELECT CustFirstName, CustLastName, CONCAT("+", CustAreaCode, " " , CustPhoneNumber) as CustAreaPlusPhNumber, CustState
FROM Customers WHERE CustState='WA' OR CustState='OR';
```

![1566356820766](H:\repos\fundamentals-of-data-management\pt7.1.2\pt7.1.2.assets\1566356820766.png)



