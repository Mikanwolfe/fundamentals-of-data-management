use kancolledb;

select shipTypeDescription as 'Ship Type', shipName as 'Ship', e.equipmentName as 'Equipped', e.equipmentDesc as 'Type', e.equipmentFirePower as 'Firepower', e.equipmentAA as 'AA', e.equipmentASW as 'ASW'
from ships s 
join shiptypes t on s.shipType = t.shipTypeID
join equipmentLoadout l on l.equippedShip = s.shipID
join equipment e on l.equipmentID = e.equipmentID;