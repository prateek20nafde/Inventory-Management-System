Create table select_product(cust_id int references customer_cart(cust_id),
pid int references product(pid),
quantity int
);

Insert into select_product(cust_id, pid, quantity)
values(1, 101, 2),
(2, 102, 5),
(3, 103, 3),
(4, 104, 1),
(5, 105, 4),
(6, 106, 2);