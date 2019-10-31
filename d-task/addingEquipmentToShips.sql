use kancolledb;

select * 
from ships
where shipID = 179;

select * from equipmentLoadout;

select * from equipment;

insert into equipmentLoadout(equippedShip, equipmentID) 
values (179, 17);

insert into equipmentLoadout(equippedShip, equipmentID) 
values (27, 9);
insert into equipmentLoadout(equippedShip, equipmentID) 
values (27, 19);
insert into equipmentLoadout(equippedShip, equipmentID) 
values (27, 21);
