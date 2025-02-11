CREATE DEFINER=`root`@`localhost` PROCEDURE `categories`(IN cat_idkeyname int,
IN cat_name varchar(25), IN cat_description varchar(100))
BEGIN
Insert into categories values(cat_idkeyname, cat_name, cat_description);
END