use kancolledb;

select * 
from fleets f join Ships s
on s.ShipFleet = f.fleetID;

select * from fleets;
