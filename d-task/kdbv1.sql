create schema kancolledb;
use kancolledb;

create table Ships (
    shipID int not null AUTO_INCREMENT,
    kancolleNum int unsigned not null,
    shipName varchar(50) not null,
    shipClass varchar(50) not null,
    shipType varchar(4) not null,
    shipFirePower int unsigned not null,
    shipTorpedoes int unsigned not null,
    shipAA int unsigned not null,
    shipAmmoCost int unsigned not null,
    shipFuelCost int unsigned not null,
    shipCurrentAmmo int unsigned not null,
    shipCurrentFuel int unsigned not null,
    shipNation int not null,
    shipNavalBase int not null,
    shipLaunchDate date not null,
    shipFleet int not null,
    shipEquipmentLoadout int not null,

    primary key (shipID),
    foreign key (shipClass) references ShipClasses(class, shipNumber),
    foreign key (shipType) references ShipTypes(shipTypeID),
    foreign key (shipNation) references Nations(nationID),
    foreign key (shipFleet) references Fleets(fleetID),
    foreign key (shipEquipmentLoadout) references EquipmentLoadout(equipmentLoadoutID)
);

create table ShipClasses (
    class varchar(50) not null,
    shipNumber int unsigned not null,
    leadShip int not null,

    primary key (class, shipNumber),
    foreign key (leadShip) references Ships(shipID)
);

create table ShipTypes (
    shipTypeID varchar(3) not null AUTO_INCREMENT,
    shipTypeDescription varchar(100) not null,

    primary key (shipTypeID)
);

create table Nations (
    nationID int not null AUTO_INCREMENT,
    nationName varchar(100) not null,
    nationPrefix varchar(100),

    primary key (nationID)
);

create table Fleets (
    fleetID int not null AUTO_INCREMENT,
    flagshipID int not null,
    admiralID int not null,

    primary key (fleetID),
    foreign key (flagshipID) references Ships(shipID),
    foreign key (admiralID) references Admirals(admiralID)
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

create table NavalBases (
    navalBaseID int not null AUTO_INCREMENT, 
    navalBaseNationID int not null,
    navalBaseAddress char(200),
    navalBaseSize int,

    primary key (navalBaseID),
    foreign key (navalBaseNationID) references Nations(nationID)

);

create table EquipmentLoadout (
    equipmentLoadoutID int not null AUTO_INCREMENT,
    equipmentID int not null,

    primary key (equipmentLoadoutID),
    foreign key (equpimentID) references Equipment(equipmentID)
);

create table Equipment (
    equipmentID int not null AUTO_INCREMENT,
    equipmentName varchar(100) not null,
    equipmentDesc varchar(200) not null,
    equipmentFirePower int not null,
    equipmentAA int not null,
    equipmentASW int not null,

    primary key (equipmentiD)

);

