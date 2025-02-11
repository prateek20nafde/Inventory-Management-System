CREATE DEFINER=`root`@`localhost` PROCEDURE `Brands`(IN bidkeyname int,
IN b_name Varchar(15),
IN b_location varchar(15),
IN b_category varchar(15)
)
BEGIN
INSERT INTO brands values (
bidkeyname, 
b_name,
b_location,
b_category);
END