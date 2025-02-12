Create table Product (pid int not null primary key,
cid int references categories(cid),
bid int references brands(bid),
sid int,
pname varchar(20),
p_stock int,
price int,
added_date datetime);

Insert into Product(Pid, cid, bid, sid, pname, p_stock, price, added_date)
values(1, 1, 1, 101, 'Smartphone', 50, 700, '2023-01-10 10:00:00'),
(2, 1, 2, 102, 'Laptop', 30, 1200, '2023-01-12 12:00:00'),
(3, 2, 3, 103, 'T-Shirt', 100, 20, '2023-02-01 09:30:00'),
(4, 3, 4, 104, 'Car', 10, 15000, '2023-03-05 11:45:00'),
(5, 4, 5, 105, 'Chair', 40, 50, '2023-04-10 14:20:00'),
(6, 5, 6, 106, 'Apples', 200, 3, '2023-05-15 16:15:00');
ALTER TABLE product 
add FOREIGN KEY (sid) REFERENCES product(sid);