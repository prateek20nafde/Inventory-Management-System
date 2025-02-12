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

