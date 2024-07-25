create table product(
	product_id int primary key,
	product_name varchar(50),
	category varchar(50),
	price int
);

select * from product;
insert into product(product_id,product_name,category,price)
values
(201, 'Apple', 'Food', 100),
(202, 'Banana', 'Food', 40),
(203, 'T-shirt', 'Clothes', 500),
(204, 'Jeans', 'Clothes', 1200),
(205, 'Milk', 'Dairy', 50),
(206, 'Cheese', 'Dairy', 250),
(207, 'Tomato', 'Vegetables', 30),
(208, 'Potato', 'Vegetables', 25),
(209, 'Mobile Phone', 'Electronics', 15000),
(210, 'Laptop', 'Electronics', 50000),
(211, 'Bread', 'Food', 35),
(212, 'Butter', 'Dairy', 150),
(213, 'Onion', 'Vegetables', 20),
(214, 'TV', 'Electronics', 40000),
(215, 'Jacket', 'Clothes', 2000);

select * from product;
begin
rollback
update product
set category='New Category-Daily Essentials',
product_name ='New Product Hair Oil',
price=price-500
where category ='Clothes';

select* from product;