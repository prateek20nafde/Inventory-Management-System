CREATE DEFINER=`root`@`localhost` PROCEDURE `productGetData`(
IN PID INT,
IN PNAME VARCHAR(25))
BEGIN
Select * from product as P
Left join brands as B on P.bid=B.bid
Left join categories as C on p.pid=c.cat_id
Left join Provides as pr on p.bid=pr.bid
Left join stores as s on p.sid=s.st_id
Where p.bid=pid and p.pname=pname and p_stock>150;
END