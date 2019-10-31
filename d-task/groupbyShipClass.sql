use kancolledb;

select shipClass as 'Ship Class', count(shipClass) as 'Number of Ships'
from ships
group by shipClass
order by count(shipClass) desc;