create schema test;
use test;

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

SET AUTOCOMMIT = false;

INSERT into Purchase (custName, shipDate, orderedDate) VALUES ('Max Wang', '2016-05-12', '2016-05-12');
INSERT into PurchasedItem  VALUES (1, 113, 'AProduct', 1, 100);

UPDATE Purchase SET shipDate='2019-05-12' WHERE PurchaseID=1;
select * from purchase;

UPDATE Purchase SET shipDate='2012-05-12', orderedDate='2013-05-12' WHERE PurchaseID=1;
select * from purchase;