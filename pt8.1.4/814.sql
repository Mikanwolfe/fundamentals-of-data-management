use salesordersexample;

rollback;

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

commit;

delete from PurchasedItem where purchaseID=1;
delete from Purchase where purchaseID=1;