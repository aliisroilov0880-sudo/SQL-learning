-- 1. ProductName ustunini Name deb alias bilan olish
SELECT ProductName AS Name FROM Products;

-- 2. Customers jadvaliga Client alias berib olish
SELECT * FROM Customers AS Client;

-- 3. UNION bilan ikkita jadvaldan ProductName larni birlashtirish
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;

-- 4. INTERSECT bilan umumiy ProductName larni topish
SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM Products_Discounted;

-- 5. DISTINCT bilan noyob CustomerName va Country olish
SELECT DISTINCT CustomerName, Country FROM Customers;

-- 6. CASE bilan Price ga qarab shartli ustun yaratish
SELECT ProductName, Price,
    CASE WHEN Price > 1000 THEN 'High' ELSE 'Low' END AS PriceCategory
FROM Products;

-- 7. IIF bilan StockQuantity ga qarab Yes/No ustun yaratish
SELECT ProductName, StockQuantity,
    IIF(StockQuantity > 100, 'Yes', 'No') AS InStock
FROM Products_Discounted;
