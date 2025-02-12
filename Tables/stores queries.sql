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