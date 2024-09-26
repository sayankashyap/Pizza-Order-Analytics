create database pizza;
use pizza;
-- Create the Pizzas table
CREATE TABLE Pizzas (
    PizzaID INT PRIMARY KEY,
    PizzaName VARCHAR(100),
    Size VARCHAR(20),
    Price DECIMAL(5, 2)
);

-- Create the Ingredients table
CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(50)
);

-- Create the Pizza_Ingredients table to manage the many-to-many relationship
CREATE TABLE Pizza_Ingredients (
    PizzaID INT,
    IngredientID INT,
    FOREIGN KEY (PizzaID) REFERENCES Pizzas(PizzaID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID),
    PRIMARY KEY (PizzaID, IngredientID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerName VARCHAR(100),
    TotalAmount DECIMAL(10, 2)
);

-- Create the Order_Items table
CREATE TABLE Order_Items (
    OrderID INT,
    PizzaID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (PizzaID) REFERENCES Pizzas(PizzaID),
    PRIMARY KEY (OrderID, PizzaID)
);


-- Insert sample pizzas (assuming a variety of sizes and prices)
INSERT INTO Pizzas (PizzaID, PizzaName, Size, Price) VALUES
(1, 'Margherita', 'Medium', 8.99),
(2, 'Pepperoni', 'Large', 10.99),
(3, 'Vegetarian', 'Small', 9.99),
(4, 'BBQ Chicken', 'Medium', 11.99),
(5, 'Hawaiian', 'Large', 12.99),
(6, 'Meat Lovers', 'Large', 13.99),
(7, 'Four Cheese', 'Medium', 10.49),
(8, 'Buffalo Chicken', 'Large', 12.49),
(9, 'Pesto Veggie', 'Small', 9.49),
(10, 'Seafood Delight', 'Medium', 14.99),
(11, 'Sausage and Peppers', 'Large', 11.99),
(12, 'Chicken Alfredo', 'Medium', 12.49),
(13, 'Greek', 'Small', 8.49),
(14, 'Pineapple & Ham', 'Large', 11.49),
(15, 'Spicy Italian', 'Medium', 10.99),
(16, 'Veggie Supreme', 'Small', 9.99),
(17, 'Classic Pepperoni', 'Large', 11.99),
(18, 'Tomato Basil', 'Medium', 8.99),
(19, 'Philly Cheese Steak', 'Large', 12.99),
(20, 'Spinach Artichoke', 'Small', 9.49),
(21, 'Meatball', 'Medium', 10.49),
(22, 'Buffalo Veggie', 'Large', 12.99),
(23, 'Margherita Deluxe', 'Medium', 10.99),
(24, 'Cajun Chicken', 'Large', 12.49),
(25, 'Bacon Cheeseburger', 'Medium', 11.99),
(26, 'Margarita Special', 'Small', 8.99),
(27, 'Chicken BBQ', 'Large', 13.49),
(28, 'Pesto Chicken', 'Medium', 11.99),
(29, 'Hawaiian Delight', 'Large', 12.49),
(30, 'Gourmet Veggie', 'Small', 9.99),
(31, 'Beef Stroganoff', 'Medium', 12.99),
(32, 'Shrimp Scampi', 'Large', 14.99),
(33, 'Pepperoni Feast', 'Medium', 11.99),
(34, 'Roasted Garlic', 'Large', 12.49),
(35, 'Spicy Hawaiian', 'Medium', 10.99),
(36, 'Classic Veggie', 'Small', 9.49),
(37, 'Chicken Teriyaki', 'Large', 13.49),
(38, 'Sicilian', 'Medium', 11.99),
(39, 'Tomato & Basil', 'Small', 8.99),
(40, 'Philly Special', 'Large', 12.99),
(41, 'Pepperoni Lovers', 'Medium', 10.99),
(42, 'Mushroom & Sausage', 'Large', 12.49),
(43, 'Cheese & Herb', 'Medium', 9.99),
(44, 'Spinach & Feta', 'Small', 9.49),
(45, 'Chicken Parmesan', 'Large', 13.99),
(46, 'Garlic & Onion', 'Medium', 10.49),
(47, 'Tandoori Chicken', 'Large', 12.99),
(48, 'Mediterranean', 'Medium', 11.49),
(49, 'Pepperoni & Mushroom', 'Small', 9.49),
(50, 'Bacon & Egg', 'Medium', 10.99);


-- Insert sample ingredients
INSERT INTO Ingredients (IngredientID, IngredientName) VALUES
(1, 'Tomato Sauce'),
(2, 'Cheese'),
(3, 'Pepperoni'),
(4, 'Bell Peppers'),
(5, 'Olives'),
(6, 'BBQ Sauce'),
(7, 'Chicken'),
(8, 'Pineapple'),
(9, 'Sausage'),
(10, 'Mushrooms'),
(11, 'Spinach'),
(12, 'Artichokes'),
(13, 'Garlic'),
(14, 'Onions'),
(15, 'Feta Cheese'),
(16, 'Shrimp'),
(17, 'Bacon'),
(18, 'Beef'),
(19, 'Herbs'),
(20, 'Buffalo Sauce');

-- Insert sample pizza-ingredient relationships
INSERT INTO Pizza_Ingredients (PizzaID, IngredientID) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 6),
(4, 7),
(5, 1),
(5, 2),
(5, 8),
(6, 1),
(6, 2),
(6, 3),
(6, 9),
(7, 1),
(7, 2),
(7, 10),
(8, 1),
(8, 2),
(8, 7),
(9, 1),
(9, 2),
(9, 11),
(10, 1),
(10, 2),
(10, 16),
(11, 1),
(11, 2),
(11, 9),
(12, 1),
(12, 2),
(12, 7),
(13, 1),
(13, 2),
(13, 11),
(14, 1),
(14, 2),
(14, 8),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(16, 11),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 13),
(19, 1),
(19, 2),
(19, 18),
(20, 1),
(20, 2),
(20, 20);

-- Insert sample orders
INSERT INTO Orders (OrderID, OrderDate, CustomerName, TotalAmount) VALUES
(1001, '2024-09-08', 'John Doe', 18.98),
(1002, '2024-09-08', 'Jane Smith', 10.99),
(1003, '2024-09-09', 'Alice Johnson', 22.49),
(1004, '2024-09-09', 'Bob Brown', 25.99),
(1005, '2024-09-10', 'Charlie Davis', 14.99),
(1006, '2024-09-10', 'Diana Evans', 19.49),
(1007, '2024-09-11', 'Emily Fox', 17.99),
(1008, '2024-09-11', 'Frank Green', 13.49),
(1009, '2024-09-12', 'Grace Harris', 20.99),
(1010, '2024-09-12', 'Henry Ives', 11.99),
(1011, '2024-09-13', 'Ivy Jackson', 16.99),
(1012, '2024-09-13', 'Jack King', 18.49),
(1013, '2024-09-14', 'Karen Lee', 23.99),
(1014, '2024-09-14', 'Leo Miller', 12.99),
(1015, '2024-09-15', 'Mia Nelson', 14.49),
(1016, '2024-09-15', 'Nathan Owens', 21.49),
(1017, '2024-09-16', 'Olivia Parker', 19.99),
(1018, '2024-09-16', 'Paul Quinn', 15.49),
(1019, '2024-09-17', 'Quinn Roberts', 17.49),
(1020, '2024-09-17', 'Rachel Smith', 22.49);

-- Insert sample order items
INSERT INTO Order_Items (OrderID, PizzaID, Quantity) VALUES
(1001, 1, 2),
(1002, 2, 1),
(1003, 3, 2),
(1004, 4, 1),
(1005, 5, 1),
(1006, 6, 2),
(1007, 7, 2),
(1008, 8, 1),
(1009, 9, 3),
(1010, 10, 1),
(1011, 11, 2),
(1012, 12, 1),
(1013, 13, 2),
(1014, 14, 1),
(1015, 15, 1),
(1016, 16, 2),
(1017, 17, 1),
(1018, 18, 2),
(1019, 19, 2),
(1020, 20, 1);

select * from pizzas;

select * from pizza_ingredients;

select * from orders;

select * from ingredients;

select * from order_items;

#Retrieve all the pizza names and their prices from the Pizzas table.---
Select PizzaName, Price from pizzas;

#---Find all pizzas that have a price greater than 10.
Select PizzaName from pizzas where Price > 10;

#Update the price of the pizza named 'Margherita' to 9.99.
update pizzas
set Price = 8.99
where PizzaName = "Margherita";

UPDATE pizzas
SET Price = 9.99
WHERE PizzaID = 1; 

#---Add a new column Description to the Pizzas table.
Alter table pizzas
add column Description varchar(50);

#Find all pizzas that are 'Large' in size and cost more than 12.
select PizzaName from pizzas where Size = "Large" and Price > 12;

#Update the Size of the pizza named 'BBQ Chicken' to 'Large'.
UPDATE pizzas 
SET Size = 'Large' 
WHERE PizzaName = 'BBQ Chicken';

#---Select the names of all pizzas along with their ingredient names.
select p.PizzaName, i.IngredientName from pizzas as p
join pizza_ingredients as q
on p.PizzaId = q.PizzaId
join ingredients as i
on q.IngredientId = i.IngredientId;

#Modify the CustomerName column in the Orders table to allow a maximum length of 150 characters.
alter table orders
modify CustomerName varchar(150);

desc orders;

#Retrieve all pizza names that contain the word 'Chicken' and sort them by price in descending order.
Select PizzaName from pizzas
where PizzaName like "%Chicken%"
order by price desc;

#Retrieve all orders where the total amount is greater than the average total amount of all orders.
Select OrderId from orders where TotalAmount > (select avg(TotalAmount) from orders);

#Add a foreign key CustomerID to the Orders table from a new Customers table, where Customers has columns CustomerID, CustomerName, Phone.
create table customers (
CustomerID int primary key,
CustomerName varchar(50),
Phone varchar(15)
);

alter table orders
add column CustomerId int;

alter table orders
add constraint fk_Customer
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

#Find all pizzas that are either 'Small' or 'Medium' size
select PizzaName from pizzas where Size in ( "Small", "Medium");

#Increase the price of all pizzas whose size is 'Large' by 2.
update pizzas
set Price = Price+2
where PizzaId = 1;

#Rename the Description column in the Pizzas table to Details.
alter table pizzas
change column Description Details varchar(100);

#Find the number of ingredients for each pizza, displaying pizza names along with their ingredient count.
Select p.PizzaName, count(i.IngredientName) as ingredient_count  from pizzas as p
join pizza_ingredients as pi
on p.PizzaId = pi.PizzaId
join ingredients as i
on pi.IngredientId = i.IngredientId
group by p.PizzaName;

#Question: How would you change the data type of the Size column from VARCHAR(20) to VARCHAR(10) in the Pizzas table?
alter table pizzas
modify column Size varchar(10);

desc pizzas;

#Write a query to fetch all pizza names that contain 'Chicken' and also display their ingredients.
select PizzaName, IngredientName
from pizzas as p
join pizza_ingredients as pi
on p.PizzaId = pi.PizzaId
join ingredients as i
on pi.IngredientId = i.IngredientId
where PizzaName like "%Chicken%";

#How would you update the price of all pizzas to the average price of pizzas if the current price is lower than the average?
update pizzas 
set Price = (select avg(Price) from pizzas)
where Price < (select avg(Price) from pizzas);

#Write a query to find the most expensive pizza and the customer who ordered it.
select Max(Price) as MaxPrice, PizzaName, CustomerName, o.OrderID from pizzas as p
join order_items as oi
on p.PizzaId = oi.PizzaId
join orders as o
on oi.OrderId = o.OrderId
group by CustomerName, PizzaName, OrderID
order by MaxPrice desc
limit 1;

#How would you rename the OrderDate column in the Orders table to PurchaseDate and ensure no orders can have a date in the future?
alter table orders
change column OrderDate PurchaseDate Date;

ALTER TABLE Orders
ADD CONSTRAINT chk_purchase_date CHECK (PurchaseDate <= CURDATE());

#Select all pizzas with PizzaID 1, 5, and 7.
select PizzaName, PizzaId from pizzas
where PizzaId in (1,5,7);

#Write a query to update the Size of all pizzas to 'Large' where the price is greater than 12.00, otherwise update the Size to 'Medium'.
update from pizzas,
Set Size = 
case 
when Price > 12.00 then "Large"
else "Medium"
end;

select * from pizzas;

select * from pizza_ingredients;

select * from orders;

select * from ingredients;

select * from order_items;

#apply case statement on total amount and extract name of customers, pizzas, ingredients with totalamount 
select o.CustomerName, p.PizzaName, i.IngredientName, 
case 
when TotalAmount < 10 then "under10"
when TotalAmount < 15 then "under 15"
when TotalAmount < 20 then "under 20"
else "more than 20"
end as TotalAmountReview
from pizzas as p
join pizza_ingredients as pi
on p.PizzaId = pi.PizzaId
join ingredients as i
on pi.IngredientId = i.IngredientId
join order_items as oi
on p.PizzaID = oi.PizzaID
join orders as o
on oi.OrderID = o.OrderID;

#Write a query to show the OrderID and a new column OrderType for the Orders table. 
#Use 'Small Order' if the total Quantity in Order_Items for that order is less than 5, 'Medium Order' 
#if the total Quantity is between 5 and 10, and 'Large Order' for orders with a total Quantity greater than 10.
select OrderID,
case 
when sum(Quantity) < 5 then "Small Order"
when sum(Quantity) between 5 and 10 then "Medium Order"
when sum(Quantity) > 10 then "Large Order"
end as OrderType
from order_items
group by OrderID;

#Write a query to show the OrderID and a new column OrderType for the Orders table. 
#Use 'Small Order' if the total Quantity in Order_Items for that order is less than 1, 'Medium Order' 
#if the total Quantity is between 1 and 2, and 'Large Order' for orders with a total Quantity greater than 10.
select o.orderid,
case when sum(oi.quantity)<1 then 'Small Order'
when sum(oi.quantity)=1 then 'Medium Order'
when sum(oi.quantity) between 1  and 2 then 'Large Order'
else 'Greater'
end as "Order Type"
from orders as o
join order_items as oi
on oi.orderid=o.orderid
group by o.orderid;


