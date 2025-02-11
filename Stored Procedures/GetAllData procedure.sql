CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllData`(
IN Brand_id int,
IN date Nvarchar(30)
)
BEGIN
Select * from Brands as B
left join Product as P on P.BID=B.BID
left join categories as c on C.cat_id=P.cid
where b.bid=Brand_id ;
END