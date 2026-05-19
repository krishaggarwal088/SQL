--Create the product table if it does not exist
CREATE TABLE IF NOT EXISTS PRODUCTS (
    PRODUCT_ID TEXT,
    PRODUCT_NAME TEXT,
    SUPPLIER_ID TEXT,
    CATEGORY_ID TEXT,
    UNIT TEXT,
    PRICE REAL
);

--Insert sample data into the product table
INSERT INTO PRODUCTS (PRODUCT_ID, PRODUCT_NAME, SUPPLIER_ID, CATEGORY_ID, UNIT, PRICE) VALUES
('1', 'Chai', '1', '1', '10 boxes * 20 bags', 18),
('2', 'Chang', '1', '1', '24 - 12 oz bottles', 19),
('3', 'Aniseed Syrup', '1', '2', '12 - 550 ml bottles', 10),
('4', 'Chef Anton Seasoning', '2', '2', '48 - 6 oz jars', 22),
('5', 'Chef Anton Mix', '2', '2', '36 boxes', 21.35);

--Query to count the number of products 
SELECT COUNT(PRODUCT_ID) AS Product_Count
FROM PRODUCTS;

--Query to calculate the average price of products
SELECT AVG(PRICE) AS Average_PricE
FROM PRODUCTS;

--Query to find the total price of products
SELECT SUM(PRICE) AS Total_Price
FROM PRODUCTS;