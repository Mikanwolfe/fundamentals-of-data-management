use kancolledb;

select nationName as 'Nation', count(shipNation) as 'Number of Ships'
from ships s
join nations n
on s.shipNation = n.nationID
group by shipNation;