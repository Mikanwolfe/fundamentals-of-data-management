# Fundamentals of Data Management

#### 2019HS2 |  101624964 | Jimmy Trac 

**Pass Task 8.1.3**

#### a)

Running the code gives the following error:

`Error Code: 1364. Field 'orderedDate' doesn't have a default value`

The issue is that we do not specify a `orderedDate` value and the table requires that the value be `not null`.



To solve the issue, the insert is changed to:

`INSERT into Purchase (custName, orderedDate, shipDate) VALUES ('Max Wang', '2016-05-12', '2016-05-12');`

Running the above two commands in MySQL give:

![1569891927517](F:\repos\fundamentals-of-data-management\pt8.1.3\pt8.1.3.assets\1569891927517.png)

With the second showing the successful insert.