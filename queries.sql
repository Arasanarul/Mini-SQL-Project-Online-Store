create table product(
product_id int not null auto_increment,
name varchar(50) not null,
category varchar(30) not null,
price decimal(10,2),
primary key(product_id)
);

INSERT INTO product (name, category, price) VALUES
('Laptop', 'Electronics', 60000.00),
('Smartphone', 'Electronics', 25000.00),
('Headphones', 'Electronics', 3000.00),
('Smartwatch', 'Electronics', 8000.00),
('Bluetooth Speaker', 'Electronics', 4500.00),
('Jeans', 'Fashion', 1800.00),
('T-Shirt', 'Fashion', 900.00),
('Shoes', 'Fashion', 2500.00),
('Jacket', 'Fashion', 3200.00),
('Sunglasses', 'Fashion', 1500.00),
('Rice Bag 10kg', 'Grocery', 700.00),
('Cooking Oil 1L', 'Grocery', 180.00),
('Sugar 1kg', 'Grocery', 50.00),
('Wheat Flour 5kg', 'Grocery', 230.00),
('Coffee Powder 500g', 'Grocery', 250.00),
('Mixer Grinder', 'Electronics', 4500.00),
('Refrigerator', 'Electronics', 35000.00),
('Television', 'Electronics', 42000.00),
('Formal Shirt', 'Fashion', 1200.00),
('Casual Cap', 'Fashion', 600.00),
('Notebook', 'Stationery', 80.00),
('Ball Pen', 'Stationery', 20.00),
('Marker', 'Stationery', 40.00),
('Bag', 'Fashion', 900.00),
('Power Bank', 'Electronics', 1500.00);

create table sale(
sale_id int not null auto_increment,
product_id varchar(50) not null,
quantity int not null,
sale_date date not null,
primary key(sale_id));

INSERT INTO sale (product_name, quantity, sale_date) VALUES
('Laptop', 2, '2025-11-01'),
('Shoes', 3, '2025-11-01'),
('T-Shirt', 5, '2025-11-02'),
('Rice Bag 10kg', 10, '2025-11-02'),
('Smartphone', 4, '2025-11-03'),
('Headphones', 6, '2025-11-03'),
('Jeans', 2, '2025-11-03'),
('Cooking Oil 1L', 12, '2025-11-04'),
('Sugar 1kg', 15, '2025-11-04'),
('Mixer Grinder', 1, '2025-11-05'),
('Television', 1, '2025-11-05'),
('Bluetooth Speaker', 3, '2025-11-05'),
('Jacket', 2, '2025-11-06'),
('Formal Shirt', 4, '2025-11-06'),
('Coffee Powder 500g', 5, '2025-11-07'),
('Casual Cap', 3, '2025-11-07'),
('Wheat Flour 5kg', 8, '2025-11-07'),
('Notebook', 10, '2025-11-08'),
('Ball Pen', 25, '2025-11-08'),
('Marker', 12, '2025-11-08'),
('Bag', 4, '2025-11-09'),
('Smartwatch', 3, '2025-11-09'),
('Power Bank', 5, '2025-11-09'),
('Refrigerator', 1, '2025-11-10'),
('Television', 2, '2025-11-10');

ALTER TABLE sale change product_id product_name varchar(50) not null;

select * from product;

select * from sale;

insert into product(name, category, price) value ('pen drive', 'Electronics', 1400);

update product set price = 1200 where name ='pen drive';

delete from product where name='pen drive';

select * from product where price>2000;

select * from sale where sale_date='2025-11-05';

select * from sale where quantity>3;

select product_name, quantity from sale;

select * from product;

select * from sale;

SELECT 
    product.product_id,
    product.name,
    product.category,
    SUM(product.price * sale.quantity) AS total_sales_amount
FROM product JOIN sale 
ON product.name = sale.product_name
GROUP BY product.product_id;

select category, count(category)as total_quantity from product group by category;

select distinct category,avg(price) from product group by category;

select * from product;

select * from sale;

select  product_name, quantity from sale where quantity>5 group by product_name;

SELECT 
    product.name AS product_name,
    SUM(sale.quantity) AS total_quantity_sold
	FROM product JOIN sale ON product.name = sale.product_name
	GROUP BY product.name
	HAVING SUM(sale.quantity) > 5;

SELECT product_id, name, price
FROM product
ORDER BY price DESC
LIMIT 3;

SELECT product_id, name, price
FROM product
ORDER BY price DESC
LIMIT 1 offset 1;

select sale_id, product_name, sale_date from sale order by sale_date desc ;

select sale_id,product_name, max(quantity) as tot_qty from sale group by sale_id order by tot_qty desc limit 1;

select * from product;

select * from sale ;

select product.category, sum(product.price * sale.quantity)as tot_rev from product join sale group by product.category order by tot_rev desc; 
