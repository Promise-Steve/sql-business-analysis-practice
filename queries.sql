-- QUESTION 1
SELECT DISTINCT Country AS customer_country
FROM Customers;

-- QUESTION 2
SELECT CustomerID, CompanyName, Country
FROM Customers
WHERE Region IS NULL;

-- QUESTION 3
SELECT COUNT(*) AS total_orders
FROM Orders;

-- QUESTION 4
SELECT SUM(UnitPrice * Quantity * (1 - Discount)) AS total_revenue
FROM [Order Details];

-- QUESTION 5
SELECT CategoryID,
       COUNT(ProductID) AS product_count
FROM Products
GROUP BY CategoryID;

-- QUESTION 6
SELECT CustomerID,
       COUNT(OrderID) AS order_count
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 10;

-- QUESTION 7
SELECT CustomerID,
       AVG(Freight) AS avg_freight
FROM Orders
GROUP BY CustomerID;

-- QUESTION 8
SELECT SupplierID,
       COUNT(ProductID) AS product_supply_count
FROM Products
GROUP BY SupplierID
HAVING COUNT(ProductID) > 5;

-- QUESTION 9
SELECT Country,
       COUNT(CustomerID) AS customer_count
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

-- QUESTION 10
SELECT COUNT(*) AS pending_shipments
FROM Orders
WHERE ShippedDate IS NULL;
