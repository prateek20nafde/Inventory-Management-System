CREATE DEFINER=`root`@`localhost` PROCEDURE `product`(IN pidKEYNAME int ,
IN cid int,
IN bid int,
IN sid int,
IN pname varchar(20),
IN p_stock int,
IN price int,
IN added_date datetime)
BEGIN
Insert into product values(pidkeyname,cid,bid,sid,pname,p_stock,price,added_date);
END