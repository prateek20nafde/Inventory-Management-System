CREATE DEFINER=`root`@`localhost` PROCEDURE `transactionsDeleteInsert`(
IN id int,
IN total_amount int,
IN paid int,
IN due int,
IN gst int,
IN discount int,
IN payment_method varchar(10),
IN cart_id int)
BEGIN
DECLARE row_count int;
SELECT COUNT(*) INTO row_count from transactions as t 
where t.id = id; 
if(row_count > 0)
then
delete from transactions as t where t.id = id;
end if;
set id=(select max(t.id)+1 from transactions as t);

insert into transactions(id, total_amount, paid, due, gst, discount, payment_method, cart_id)
values(id, total_amount, paid, due, gst, discount, payment_method, cart_id);

END