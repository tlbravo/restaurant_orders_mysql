-- Exploring the items table first by viewing the entire table 
SELECT * 
FROM menu_items;

-- View the menu_items table and write a query to find the number of items on the menu
SELECT 
COUNT(menu_item_id)
FROM menu_items;
-- 32 rows in this table

-- What are the least and most expensive items on the menu?
SELECT *
FROM menu_items
ORDER BY price DESC;
-- most expensive = Shrimp Scampi
-- least expensive = Edamame

-- How many Italian dishes are on the menu? 
SELECT 
COUNT(menu_item_id)
FROM menu_items
WHERE category = 'Italian';
-- 9 Italian dishes in total

-- What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;
-- most expensive = Shrimp Scampi
-- least expensive = Fettuccine Alfredo and Spaghetti

-- How many dishes are in each category? What is the average dish price within each category
SELECT category,
COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

--What is the average dish price within each category
SELECT category,
AVG(price) AS average_price
FROM menu_items
GROUP BY category;

