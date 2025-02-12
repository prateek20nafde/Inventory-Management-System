Create table Invoice(item_no int not null primary key ,
product_name varchar(20),
quantity int,
net_price int,
transaction_id int references transaction(id));

Insert Into Invoice(item_no,product_name,quantity,net_price,transaction_id)
values (1, 'Laptop', 2, 1500, 101),
(2, 'Mobile', 3, 800, 102),
(3, 'Headphones', 5, 200, 103),
(4, 'Tablet', 1, 500, 104),
(5, 'Keyboard', 4, 100, 105),
(6, 'Monitor', 2, 300, 106);