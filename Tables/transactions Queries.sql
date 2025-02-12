Create table transactions(id int not null primary key,
total_amount int,
paid int,
due int,
 gst int,
discount int,
payment_method varchar(10),
cart_id int references customer_cart(cust_id)
);

insert into transactions(id, total_amount, paid, due, gst, discount, payment_method, cart_id)
values(1, 1000, 800, 200, 50, 100, 'Credit', 101),
(2, 1500, 1500, 0, 75, 150, 'Cash', 102),
(3, 2000, 1800, 200, 100, 200, 'UPI', 103),
(4, 500, 500, 0, 25, 50, 'Debit', 104),
(5, 2500, 2000, 500, 125, 250, 'Cash', 105),
(6, 1200, 1200, 0, 60, 120, 'UPI', 106);
