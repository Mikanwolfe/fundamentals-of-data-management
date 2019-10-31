use kancolledb;

select equipmentDesc as 'Equipment Type', count(equipmentDesc) as 'Number of Equipment' from equipment
group by equipmentDesc;
