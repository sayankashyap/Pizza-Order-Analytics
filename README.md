# Pizza Order Analytics Project

## Project Overview

The **Pizza Order Analytics** project aims to analyze and manage data related to pizza orders, ingredients, customers, and transactions using SQL Workbench. This project provides insights into order trends, customer preferences, and business performance through various SQL queries and data operations.

## Features

- **Order Management**: Analyze pizza orders, including customer names, ingredients, and quantities.
- **Order Classification**: Classify orders as 'Small', 'Medium', or 'Large' based on the total quantity of pizzas ordered.
- **Ingredient Tracking**: Track the ingredients used in different pizzas and their relation to orders.
- **Sales Insights**: Extract and analyze the total sales amount and order trends for better decision-making.

## Database Schema

- **Orders**: Contains information about each pizza order, including OrderID, CustomerName, OrderDate, and TotalAmount.
- **Pizzas**: Stores details about the types of pizzas available, including PizzaID and PizzaName.
- **Ingredients**: Details about the ingredients used in the pizzas, including IngredientID and IngredientName.
- **Order_Items**: Links orders to pizzas, tracking the quantity of each pizza ordered in an order.
- **Pizza_Ingredient**: Links pizzas to their ingredients.
