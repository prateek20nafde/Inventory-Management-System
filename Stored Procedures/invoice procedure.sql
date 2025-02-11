CREATE DEFINER=`root`@`localhost` PROCEDURE `invoice`(IN item_nokeyname int,
IN product_name varchar(20),
IN quantity int,
IN net_price int,
IN transaction_id int)
BEGIN
Insert into invoice values(item_no,
product_name,
quantity,
net_price,
transaction_id);
END