CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_cart`(IN cust_idkeyname int,
 IN name varchar(20), IN mobno varchar(10), In added_at datetime)
BEGIN
Insert into customer_cart values(cust_idkeyname,
 name,
 mobno,
 added_at);
END