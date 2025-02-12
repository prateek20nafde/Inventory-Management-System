Create table customer_cart(cust_id int primary key,
name varchar(20),
mobno varchar(10), 
added_at datetime);

insert into customer_cart(cust_id, name, mobno, added_at)
values(1, 'Alice', '1234567890', '2024-02-05 14:30:00'),
(2, 'Bob', '9876543210', '2024-02-05 15:00:00'),
(3, 'Charlie', '5551234567', '2024-02-05 15:30:00'),
(4, 'David', '4449876543', '2024-02-05 16:00:00'),
(5, 'Emma', '3331112222', '2024-02-05 16:30:00');