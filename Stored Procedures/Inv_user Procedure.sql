CREATE DEFINER=`root`@`localhost` PROCEDURE `inv_user`(IN user_idkeyname int,
 IN inv_name varchar(20),
 IN User_password varchar(20),
 IN Last_login datetime,
 IN user_type varchar(15))
BEGIN
Insert into inv_user values (user_idkeyname,
inv_name, 
user_password,
last_login, 
user_type);
END