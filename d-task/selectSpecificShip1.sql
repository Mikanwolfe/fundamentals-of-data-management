use kancolledb;
select shipID, shipKancolleID as 'Kancolle ID', CONCAT(nationPrefix, " ", shipName) as 'Ship Designation', shipClass as 'Class', shipTypeDescription as 'Type'
from Ships s
	join ShipTypes t
		on s.shipType=t.shipTypeID
	join Nations n
		on s.shipNation=n.nationID
-- where shipKancolleID = '113'
order by shipName asc;