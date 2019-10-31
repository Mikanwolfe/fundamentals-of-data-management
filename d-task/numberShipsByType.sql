use kancolledb;

select shipType as 'Ship Hull Code', shipTypeDescription as 'Ship Type', count(shipType) as 'Number of Ships'
from ships s
join shipTypes t on s.shipType = t.shipTypeID
group by shipType;