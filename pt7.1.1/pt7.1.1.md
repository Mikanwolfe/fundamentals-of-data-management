# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 7.1.1**

Selecting all tuples and attributes from `Customers`

```mysql
SELECT *
FROM Customers;
```

![1566356055208](H:\repos\fundamentals-of-data-management\pt7.1.1\pt7.1.1.assets\1566356055208.png)

---

Selecting First Name, Last Name, and Concatenating Area Code + Phone Numbers:

```mysql
SELECT CustFirstName, CustLastName, CONCAT("+", CustAreaCode, " " , CustPhoneNumber) as CustAreaPlusPhNumber
FROM Customers;
```

![1566356338596](H:\repos\fundamentals-of-data-management\pt7.1.1\pt7.1.1.assets\1566356338596.png)



