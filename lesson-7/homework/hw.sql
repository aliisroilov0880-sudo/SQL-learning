-- 1. Eng arzon mahsulot narxini topish
SELECT MIN(Price) AS MinPrice
FROM Products;

-- 2. Eng katta oylikni topish
SELECT MAX(Salary) AS MaxSalary
FROM Employees;

-- 3. Customers jadvalidagi jami qatorlar sonini hisoblash
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- 4. Products jadvalidagi unikal kategoriyalar sonini hisoblash
SELECT COUNT(DISTINCT Category) AS UniqueCategoryCount
FROM Products;

-- 5. Sales jadvalidan ID-si 7 bo'lgan mahsulot uchun jami savdo summasi
SELECT SUM(SaleAmount) AS TotalSalesForProduct7
FROM Sales
WHERE ProductID = 7;

-- 6. Ishchilarning o'rtacha yoshini hisoblash
SELECT AVG(Age) AS AverageEmployeeAge
FROM Employees;

-- 7. Har bir bo‘limdagi xodimlar soni
SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID;

-- 8. Har bir toifadagi mahsulotlar uchun eng arzon va eng qimmat narx
SELECT Category, MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice
FROM Products
GROUP BY Category;

-- 9. Har bir mijoz uchun jami savdo summasi
SELECT CustomerID, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID;

-- 10. 5 tadan ortiq xodim ishlaydigan bo‘limlar
SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID
HAVING COUNT(*) > 5;
