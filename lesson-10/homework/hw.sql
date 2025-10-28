/* =====================================================
   🟢 EASY LEVEL QUERIES
   ===================================================== */

/* 1️⃣ Employees with salary > 50000 along with department names */
SELECT e.EmployeeName, e.Salary, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.Salary > 50000;

/* 2️⃣ Customers who placed orders in 2023 */
SELECT c.FirstName, c.LastName, o.OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE YEAR(o.OrderDate) = 2023;

/* 3️⃣ All employees and their departments (include those without a department) */
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

/* 4️⃣ All suppliers and the products they supply (include suppliers with no products) */
SELECT s.SupplierName, p.ProductName
FROM Suppliers s
LEFT JOIN Products p ON s.SupplierID = p.SupplierID;

/* 5️⃣ All orders and corresponding payments (include unmatched records) */
SELECT o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
FROM Orders o
FULL OUTER JOIN Payments p ON o.OrderID = p.OrderID;

/* 6️⃣ Each employee’s name along with their manager’s name */
SELECT e.EmployeeName, m.EmployeeName AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;

/* 7️⃣ Students enrolled in 'Math 101' */
SELECT s.StudentName, c.CourseName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Math 101';

/* 8️⃣ Customers who have placed orders with more than 3 items */
SELECT c.FirstName, c.LastName, o.Quantity
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.Quantity > 3;

/* 9️⃣ Employees working in 'Human Resources' department */
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Human Resources';



/* =====================================================
   🟠 MEDIUM LEVEL QUERIES
   ===================================================== */

/* 10️⃣ Departments that have more than 5 employees */
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName
HAVING COUNT(e.EmployeeID) > 5;

/* 11️⃣ Products that have never been sold */
SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN Sales s ON p.ProductID = s.ProductID
WHERE s.ProductID IS NULL;

/* 12️⃣ Customers who have placed at least one order */
SELECT c.FirstName, c.LastName, COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName
HAVING COUNT(o.OrderID) >= 1;

/* 13️⃣ Records where both employee and department exist (no NULLs) */
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

/* 14️⃣ Pairs of employees who report to the same manager */
SELECT e1.EmployeeName AS Employee1,
       e2.EmployeeName AS Employee2,
       e1.ManagerID
FROM Employees e1
JOIN Employees e2 
  ON e1.ManagerID = e2.ManagerID 
 AND e1.EmployeeID < e2.EmployeeID;

/* 15️⃣ Orders placed in 2022 with customer name */
SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate) = 2022;

/* 16️⃣ Employees from Sales department with salary > 60000 */
SELECT e.EmployeeName, e.Salary, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Sales' AND e.Salary > 60000;

/* 17️⃣ Orders that have a corresponding payment */
SELECT o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID;

/* 18️⃣ Products that were never ordered */
SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE od.ProductID IS NULL;

