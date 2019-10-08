drop schema test;
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

INSERT into Purchase (custName, shipDate, orderedDate) VALUES ('Max Wang', '2016-05-12', '2016-05-12');
INSERT into Purchase (custName, shipDate, orderedDate) VALUES ('Danny Tran', '2018-08-12', '2016-05-12');
INSERT into PurchasedItem  VALUES (1, 113, 'AProduct', 1, 100);

CREATE TABLE ShoppingCart(
shoppingCartID int unsigned not null auto_increment,
custName VARCHAR (30) not null,
orderedDate DATE not null,
PRIMARY KEY (shoppingCartID));

SET AUTOCOMMIT = false;

INSERT INTO ShoppingCart (custName, orderedDate)
SELECT custName, orderedDate from Purchase where purchaseID=2;