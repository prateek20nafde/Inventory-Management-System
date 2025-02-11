CREATE DEFINER=`root`@`localhost` PROCEDURE `select_product`(IN cust_id int,
IN pid int,
IN quantity int)
BEGIN
Insert into select_product values(cust_id, pid, quantity);
END