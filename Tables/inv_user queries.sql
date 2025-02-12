Create Table inv_user (user_id int not null primary key,
inv_name varchar(20),
user_password varchar(20),
last_login datetime,
user_type varchar(15));

Insert into inv_user (user_id, inv_name, user_password, last_login,user_type)
values( 1,'JohnDoe','password123','2023-01-15 10:15:00','Admin'),
(2,'JaneSmith','welcome456','2023-02-20 14:30:00','Editor'),
(3,'MikeBrown','pass789','2023-03-10 09:45:00','Viewer'),
(4,'EmilyClark','securePass1','2023-04-25 16:20:00','Admin'),
(5,'ChrisEvans','Evans123!','2023-05-18 13:10:00','Editor'),
(6,'SophiaLee','Sophia2023','2023-06-01 08:00:00','Viewer');