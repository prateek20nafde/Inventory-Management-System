Create table provides(bid int references brands(bid),
sid int references stores(sid),
discount int);

insert into provides(bid,sid,discount)
values(1, 101, 10),
(2, 102, 15),
(3, 103, 20),
(4, 104, 25),
(5, 105, 30);