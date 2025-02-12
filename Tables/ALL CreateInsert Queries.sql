Create table Brands (bid int NOT NULL PRIMARY KEY,
b_name Varchar(15),
b_location varchar(15),
b_category varchar(15)); 

Insert into Brands(bid, b_name, b_location,b_category)
Values (1, 'Nike', 'Oregon', 'Sportswear'),
(2, 'Apple', 'California', 'Technology'),
(3, 'Samsung', 'Seoul', 'Electronics'),
(4, 'Toyota', 'Tokyo', 'Automobile'),
(5, 'Adidas', 'Germany', 'Sportswear'),
(6, 'Sony', 'Tokyo', 'Electronics');

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

Create table categories(
cat_id int not null primary key,
cat_name varchar(25), 
cat_description text(100)); 

Insert into Categories (cat_id, cat_name, cat_description)
values (1, 'Electronics', 'Devices like phones, laptops, and home appliances.'),
(2, 'Fashion', 'Clothing, footwear, and accessories for all genders.'),
(3, 'Automobiles', 'Cars, bikes, and other vehicles.'),
(4, 'Furniture', 'Tables, chairs, beds, and other home furnishings.'),
(5, 'Groceries', 'Daily essentials like fruits, vegetables, and packaged food.'),
(6, 'Books', 'Fiction, non-fiction, academic, and children’s books.');

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


Create table stores(st_id int not null primary key,
st_name varchar(50),
st_location varchar(20),
contact_number varchar(10),
st_open_date datetime);

Insert into stores(st_id, st_name, st_location, contact_number, st_open_date)
values (1, 'Walmart', 'New York', '1234567890', '2020-05-15'),
(2, 'Target', 'Los Angeles', '9876543210', '2018-08-21'),
(3, 'Costco', 'Chicago', '4561237890', '2019-11-30'),
(4, 'BestBuy', 'Houston', '7893214560', '2021-02-10'),
(5, 'HomeDepo', 'Phoenix', '3216549870', '2017-07-05'),
(6, 'Kroger', 'Miami', '6549873210', '2022-09-12');

ALTER TABLE product DROP PRIMARY KEY;
ALTER TABLE product ADD PRIMARY KEY (sid);

ALTER TABLE product 
add FOREIGN KEY (sid) REFERENCES product(sid);

Create table provides(bid int references brands(bid),
sid int references stores(sid),
discount int);

insert into provides(bid,sid,discount)
values(1, 101, 10),
(2, 102, 15),
(3, 103, 20),
(4, 104, 25),
(5, 105, 30);

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
















