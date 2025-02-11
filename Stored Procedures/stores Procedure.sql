CREATE DEFINER=`root`@`localhost` PROCEDURE `stores`(IN st_idKEYNAME INT,
 IN st_name VARCHAR(50),IN st_location VARCHAR(20),IN contact_number VARCHAR(10),IN st_open_date DATETIME)
BEGIN
Insert into stores values(st_idkeyname, st_name, st_location, contact_number, st_open_date);
END