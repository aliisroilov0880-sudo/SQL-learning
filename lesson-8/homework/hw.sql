-- 1. Har bir toifadagi mahsulotlar soni
SELECT Category, COUNT(*) AS TotalProducts
FROM Products
GROUP BY Category;

-- 2. 'Electronics' toifasidagi mahsulotlarning o'rtacha narxi
SELECT AVG(Price) AS AvgPrice
FROM Products
WHERE Category = 'Electronics';

-- 3. Shahri 'L' harfi bilan boshlanuvchi mijozlar ro'yxati
SELECT *
FROM Customers
WHERE City LIKE 'L%';

-- 4. Nomlari 'er' bilan tugagan mahsulotlar
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%er';

-- 5. Mamlakati 'A' harfi bilan tugagan mijozlar ro'yxati
SELECT *
FROM
