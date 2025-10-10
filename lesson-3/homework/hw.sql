/*
1. BULK INSERT - SQL Serverda katta hajmdagi ma'lumotlarni tashqi fayldan jadvalga tez yuklash uchun ishlatiladi.
   Maqsadi - katta ma'lumotlarni samarali import qilish.
*/

/*
2. SQL Serverga import qilinadigan fayl formatlari:
   - CSV (Comma-Separated Values)
   - TXT (Plain text)
   - XML (Extensible Markup Language)
   - BCP (Bulk Copy Program formatlari)
*/

-- 3. Products jadvalini yaratish
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

-- 4. Products jadvaliga 3 ta yozuv qo'shish
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Telefon', 1200.00),
(2, 'Noutbuk', 2500.50),
(3, 'Planshet', 800.00);

-- 5. NULL va NOT NULL farqi
/*
   NULL - ustunda qiymat yo'qligini bildiradi.
   NOT NULL - ustunda qiymat kiritilishi majburiy.
*/

-- 6. ProductName ustuniga UNIQUE cheklovni qo'shish
ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

-- 7. SQL so'rov ichida izoh yozish
-- Bu so'rov Products jadvaliga yangi mahsulot qo'shadi
INSERT INTO Products (ProductID, ProductName, Price) VALUES (4, 'Monitor', 600.00);

-- 8. CategoryID ustunini Products jadvaliga qo'shish
ALTER TABLE Products
ADD CategoryID INT;

-- 9. Categories jadvalini yaratish
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);

-- 10. IDENTITY ustuni maqsadi
/*
   IDENTITY ustun - avtomatik ortib boruvchi qiymat beradi.
   Yangi yozuv qo'shilganda qiymat avtomatik 1 dan boshlanib oshadi.
   Odatda PRIMARY KEY sifatida ishlatiladi.
*/
