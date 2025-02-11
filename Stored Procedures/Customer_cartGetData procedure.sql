CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_cartGetData`(
IN NAME VARCHAR(30),
IN MOBNO VARCHAR(11))
BEGIN
Select cu.name, cu.mobno, sp.quantity, sp.cust_id, isnull(p.p_stock)as stock, isnull(p.price) as price from customer_cart as cu
left join select_product as sp on cu.cust_id=sp.cust_id
left join product as p on p.pid=sp.pid
Where cu.mobno=mobno and cu.name=name;
END