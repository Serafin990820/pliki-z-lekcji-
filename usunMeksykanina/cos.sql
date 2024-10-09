DELETE FROM Customers
WHERE Country = 'Mexico';

DELETE
    FROM Customers
    WHERE price < 15;

UPDATE Products
SET SuppilerID = 3
    WHERE SuppilerID = 2;

UPDATE Customers
    SET ContactName = "Mateusz Baran"
    WHERE CustomerID = 1

UPDATE
    Products
    SET price = price * 0.95
    WHERE SuppilerID = 7;

UPDATE Products
    SET price = price * 1.1
    WHERE CategoryID = 1;

INSERT INTO Categories 
    (CategoryName, Description)
    VALUES ('Beverages', 'Beverages');

DELETE FROM Employees
    WHERE EmployeeID = 3;

UPDATE Orders 
    SET EmployeeID = NULL
    WHERE EmployeeID = 3;

INSERT INTO
    Shippers 
    VALUES
      (NULL, "Troczn&Spółka", "123456789");

