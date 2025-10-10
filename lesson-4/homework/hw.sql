-- 1. Top 5 xodimni tanlash (Employees jadvalidan)
SELECT TOP 5 *
FROM Employees;

-- 2. Products jadvalidan unikal Category qiymatlarni tanlash (SELECT DISTINCT)
SELECT DISTINCT Category
FROM Products;

-- 3. Price > 100 bo‘lgan mahsulotlarni filtrlash
SELECT *
FROM Products
WHERE Price > 100;

-- 4. Customers jadvalidan FirstName 'A' bilan boshlanadigan mijozlar (LIKE operatori)
SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';

-- 5. Products jadvalidagi natijalarni Price bo‘yicha o‘sish tartibida tartiblash
SELECT *
FROM Products
ORDER BY Price ASC;

-- 6. Employees jadvalidan Salary >= 60000 va DepartmentName = 'HR' bo‘lgan xodimlar
SELECT *
FROM Employees
WHERE Salary >= 60000 AND DepartmentName = 'HR';

-- 7. Email ustunidagi NULL qiymatlarni "noemail@example.com" bilan almashtirish (ISNULL)
SELECT EmpID, Name, ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees;

-- 8. Price qiymati 50 dan 100 gacha bo‘lgan mahsulotlarni ko‘rsatish (BETWEEN)
SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 100;

-- 9. Products jadvalidan Category va ProductName bo‘yicha noyob juftliklarni olish (SELECT DISTINCT)
SELECT DISTINCT Category, ProductName
FROM Products;

-- 10. 9-misol natijalarini ProductName bo‘yicha kamayish tartibida tartiblash
SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC;
