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