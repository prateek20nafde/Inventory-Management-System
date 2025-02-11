CREATE DEFINER=`root`@`localhost` PROCEDURE `provides`(IN BID INT,
IN SID INT,
IN DISCOUNT INT)
BEGIN
Insert into provides values (bid,sid,discount);
END