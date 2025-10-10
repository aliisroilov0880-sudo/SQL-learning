
  -- 1. Employees jadvalini yaratish
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- 2. Ma'lumot qo'shish: turli INSERT usullari bilan
INSERT INTO Employees (EmpID, Name, Salary) VALUES (1, 'Ali', 5000.00);  -- single-row
INSERT INTO Employees (EmpID, Name, Salary) VALUES (2, 'Vali', 6000.00); -- single-row
INSERT INTO Employees (EmpID, Name, Salary) VALUES
(3, 'Gulbahor', 5500.00),
(4, 'Olim', 4800.00);  -- multiple-row

-- 3. Maoshni yangilash (EmpID=1 uchun)
UPDATE Employees
SET Salary = 7000
WHERE EmpID = 1;

-- 4. Ma'lumot o'chirish (EmpID=2 yozuvini o'chirish)
DELETE FROM Employees
WHERE EmpID = 2;

-- 5. DELETE, TRUNCATE va DROP farqi (izoh uchun)
/*
DELETE - ma'lumotlarni qatorma-qator o'chiradi, shart qo'yish mumkin, qayta tiklash imkoniyati bor.
TRUNCATE - barcha ma'lumotlarni tez o'chiradi, struktura qoladi, qayta tiklash odatda mumkin emas.
DROP - butun jadval va uning ma'lumotlarini yo'q qiladi.
*/

-- 6. Name ustunini VARCHAR(100) ga o'zgartirish (MSSQL sintaksisi)
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);

-- 7. Yangi ustun qo'shish — Department (VARCHAR(50))
ALTER TABLE Employees
ADD Department VARCHAR(50);

-- 8. Salary ustunining turini FLOAT ga o'zgartirish
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

-- 9. Departments jadvalini yaratish
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- 10. Employees jadvalidagi barcha yozuvlarni o'chirish (struktura saqlanadi)
TRUNCATE TABLE Employees;
