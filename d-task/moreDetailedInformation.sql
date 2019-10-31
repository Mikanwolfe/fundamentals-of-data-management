use kancolledb;
select 
	shipID as 'Ship ID',
	fleetName as 'Current Fleet', 
	shipKancolleID as 'Kancolle ID', 
	CONCAT(nationPrefix, " ", shipName) as 'Ship Designation', 
	shipClass as 'Class', 
	shipTypeDescription as 'Type', 
	shipFirePower as 'Firepower', 
	shipTorpedoes as 'Torpedoes',
    shipAA as 'Anti-Air',
    shipASW as 'Anti-Submarine',
    shipAmmoCost as 'Ammunition Consumption',
    shipFuelCost as 'Fuel Consumption',
    navalBaseName as 'Current Base'
    
from Ships s
	join ShipTypes t
		on s.shipType=t.shipTypeID
	join Nations n
		on s.shipNation=n.nationID
	join Fleets f
        on f.fleetID = s.shipFleet
	join NavalBases nb
		on s.shipNavalBase = nb.navalBaseID
-- where shipKancolleID = '113'
order by shipName asc;