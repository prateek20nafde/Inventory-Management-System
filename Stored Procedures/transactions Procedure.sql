CREATE DEFINER=`root`@`localhost` PROCEDURE `transactions`(IN idkeyname int,
IN total_amount int,
IN paid int,
IN due int,
IN gst int,
IN discount int,
IN payment_method varchar(10),
IN cart_id int)
BEGIN
Insert into transactions values(idkeyname, total_amount,paid, due, gst,discount, payment_method,cart_id);
END