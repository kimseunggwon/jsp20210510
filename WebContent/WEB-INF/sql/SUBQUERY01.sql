
-- 1번 고객(알프레드)의 나라 
SELECT Country FROM Customers
WHERE CustomerID = 1;
-- GERMANY

--
SELECT * FROM Customers
WHERE Country = 'Germany';

-- subquery 전체커리 일부에 또라른 커리
SELECT * FROM Customers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

-- 1번고객(알프레드)와 같은 나라에 있는 공급자(suppliers)목록
SELECT * FROM Suppliers
WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

-- 1번고객(알프레드)와 다른 나라에 사는 고객들 목록
-- SQL 에서 <> 은 NOT equal 이다 (!=)
SELECT * FROM Customers
WHERE Country <> (SELECT Country FROM Customers WHERE CustomerID = 1);

--
DESC Employees;
SELECT * FROM Employees;

-- 직원 Fuller 보다 나이가 많은 사람
SELECT * FROM Employees
WHERE BirthDate < '1952-02-19';

SELECT * FROM Employees
WHERE BirthDate < (SELECT BirthDate FROM Employees WHERE EmployeeID = 2);




