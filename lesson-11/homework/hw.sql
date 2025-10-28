/* ==========================================================
   🟢 EASY-LEVEL QUERIES
   ========================================================== */

/* 1️⃣ Orders placed after 2022 along with customer names */
SELECT o.OrderID, CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate) > 2022;

/* 2️⃣ Employees in Sales or Marketing departments */
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName IN ('Sales', 'Marketing');

/* 3️⃣ Highest salary per department */
SELECT d.DepartmentName, MAX(e.Salary) AS MaxSalary
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

/* 4️⃣ Customers from USA who placed orders in 2023 */
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, o.OrderID, o.OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.Country = 'USA' AND YEAR(o.OrderDate) = 2023;

/* 5️⃣ Total number of orders placed by each customer */
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY CONCAT(c.FirstName, ' ', c.LastName);

/* 6️⃣ Products supplied by Gadget Supplies or Clothing Mart */
SELECT p.ProductName, s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.SupplierName IN ('Gadget Supplies', 'Clothing Mart');

/* 7️⃣ Most recent order per customer (include customers without orders) */
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
       MAX(o.OrderDate) AS MostRecentOrderDate
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY CONCAT(c.FirstName, ' ', c.LastName);



/* ==========================================================
   🟠 MEDIUM-LEVEL QUERIES
   ========================================================== */

/* 8️⃣ Customers who placed an order with total > 500 */
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, o.OrderTotal
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderTotal > 500;

/* 9️⃣ Product sales in 2022 or where SaleAmount > 400 */
SELECT p.ProductName, s.SaleDate, s.SaleAmount
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
WHERE YEAR(s.SaleDate) = 2022 OR s.SaleAmount > 400;

/* 🔟 Total sales amount per product */
SELECT p.ProductName, SUM(s.SaleAmount) AS TotalSalesAmount
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
GROUP BY p.ProductName;

/* 11️⃣ Employees in HR department earning > 60000 */
SELECT e.EmployeeName, d.DepartmentName, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'HR' AND e.Salary > 60000;

/* 12️⃣ Products sold in 2023 and had >100 units in stock */
SELECT p.ProductName, s.SaleDate, p.StockQuantity
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
WHERE YEAR(s.SaleDate) = 2023 AND p.StockQuantity > 100;

/* 13️⃣ Employees who work in Sales department or hired after 2020 */
SELECT e.EmployeeName, d.DepartmentName, e.HireDate
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Sales' OR YEAR(e.HireDate) > 2020;



/* ==========================================================
   🔴 HARD-LEVEL QUERIES
   ========================================================== */

/* 14️⃣ Orders from USA customers whose address starts with 4 digits */
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
       o.OrderID, c.Address, o.OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.Country = 'USA' AND c.Address REGEXP '^[0-9]{4}';

/* 15️⃣ Product sales for Electronics category or sale amount > 350 */
SELECT p.ProductName, p.Category, s.SaleAmount
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
WHERE p.Category = 'Electronics' OR s.SaleAmount > 350;

/* 16️⃣ Product count per category */
SELECT c.CategoryName, COUNT(p.ProductID) AS ProductCount
FROM Categories c
LEFT JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

/* 17️⃣ Orders from Los Angeles with amount > 300 */
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
       c.City, o.OrderID, o.Amount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.City = 'Los Angeles' AND o.Amount > 300;

/* 18️⃣ Employees in HR or Finance OR whose name has ≥4 vowels */
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName IN ('HR', 'Finance')
   OR LENGTH(REGEXP_REPLACE(LOWER(e.EmployeeName), '[^aeiou]', '')) >= 4;

/* 19️⃣ Employees in Sales or Marketing with salary > 60000 */
SELECT e.EmployeeName, d.DepartmentName, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName IN ('Sales', 'Marketing') AND e.Salary > 60000;
