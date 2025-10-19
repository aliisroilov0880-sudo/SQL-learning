-- 1. Products, Suppliers: Barcha mahsulot va barcha yetkazib beruvchilar kombinatsiyasi
SELECT ProductName, SupplierName
FROM Products, Suppliers;

-- 2. Departments, Employees: Barcha bo‘lim va barcha xodim kombinatsiyasi
SELECT DepartmentName, EmployeeName
FROM Departments, Employees;

-- 3. Products, Suppliers: Faqat real bog‘langan mahsulot va ularni yetkazgan supplier
SELECT s.SupplierName, p.ProductName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 4. Orders, Customers: Har bir mijoz va u bergan buyurtma ID’si
SELECT c.CustomerName, o.OrderID
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

-- 5. Courses, Students: Har bir talaba va har bir kurs kombinatsiyasi
SELECT StudentName, CourseName
FROM Students, Courses;

-- 6. Products, Orders: ProductID mos tushgan buyurtmalar va mahsulot nomlari
SELECT p.ProductName, o.OrderID
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID;

-- 7. Departments, Employees: DepartmentID mos tushgan xodimlar va bo‘limlari
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- 8. Students, Enrollments: Talabalar va ular ro‘yxatdan o‘tgan kurs ID’lari
SELECT s.StudentName, e.CourseID
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID;

-- 9. Payments, Orders: To‘lov qilingan buyurtmalar (OrderID mos tushgan)
SELECT o.OrderID, p.PaymentID
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID;

-- 10. Orders, Products: Mahsulot narxi 100 dan katta bo‘lgan buyurtmalar
SELECT o.OrderID, p.ProductName, p.Price
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE p.Price > 100;
