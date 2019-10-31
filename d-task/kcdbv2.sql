create schema kancolledb;
use kancolledb;

set AUTOCOMMIT = 0;

/*
create table ShipClasses (
	classID int not null,
    class varchar(50) not null,
    -- shipNumber int unsigned not null,
    leadShip varchar(100),
    primary key (classID)
    -- foreign key (leadShip) references Ships(shipID)
);

*/

create table ShipTypes (
    shipTypeID varchar(3) not null,
    shipTypeDescription varchar(100) not null,

    primary key (shipTypeID)
);


create table Nations (
    nationID int not null AUTO_INCREMENT,
    nationName varchar(100) not null,
    nationPrefix varchar(100),

    primary key (nationID)
);

create table NavalBases (
    navalBaseID int not null AUTO_INCREMENT, 
    navalBaseNationID int not null,
    navalBaseName char(200) not null,
    navalBaseAddress char(200),
    navalBaseSize int,

    primary key (navalBaseID),
    foreign key (navalBaseNationID) references Nations(nationID)

);

create table Admirals (
    admiralID int not null AUTO_INCREMENT,
    admiralFirstName varchar(100) not null,
    admiralLastName varchar(100) not null,
    admiralRank char(100) not null,
    admiralNavalBase int not null,

    primary key (admiralID),
    foreign key (admiralNavalBase) references NavalBases(navalBaseID)

);


create table Equipment (
    equipmentID int not null AUTO_INCREMENT,
    equipmentKancolleID int,
    equipmentName varchar(100) not null,
    equipmentDesc varchar(100) not null,
    equipmentFirePower int not null,
    equipmentAA int not null,
    equipmentASW int not null,

    primary key (equipmentiD)

);

create table Fleets (
    fleetID int not null AUTO_INCREMENT,
    admiralID int not null,

    primary key (fleetID),
    foreign key (admiralID) references Admirals(admiralID)
);

create table Ships (
    shipID int not null AUTO_INCREMENT,
    shipKancolleID char(4) not null,
    shipName varchar(50),
    shipClass varchar(50) not null,
    -- shipNumber int unsigned not null,
    shipType varchar(4) not null,
    shipFirePower int unsigned not null,
    shipTorpedoes int unsigned not null,
    shipAA int unsigned not null,
    shipASW int unsigned not null,
    shipAmmoCost int unsigned not null,
    shipFuelCost int unsigned not null,
    shipNation int,
    shipNavalBase int not null,
    shipFleet int not null,

    primary key (shipID),
    -- shiptypesshipsforeign key (shipClass) references ShipClasses(classID),
    foreign key (shipType) references ShipTypes(shipTypeID),
    foreign key (shipNation) references Nations(nationID),
    foreign key (shipFleet) references Fleets(fleetID)
);

create table EquipmentLoadout (
    equipmentLoadoutID int not null AUTO_INCREMENT,
    equippedShip int not null,
    equipmentID int not null,

    primary key (equipmentLoadoutID),
    foreign key (equippedShip) references Ships(ShipID),
    foreign key (equipmentID) references Equipment(equipmentID)
);

