SELECT ProductName, CONCAT('$', Price)
From Products;

SELECT CONCAT_WS(' ', PostalCode, City) as Addres
FROM Suppilers

SELECT SUBSTRING(ProductName, 3, 2) 
FROM Products;

SELECT SUBSTRING(Phone, 3, 2) 
FROM Shipers;

SELECT LEFT(CustomerName, 12)
FROM Customers;

SELECT CONCAT(LEFT(ProductName, 7, '...'))
FROM Products;

SELECT Country, CHAR_LENGTH(Country)
FROM Suppilers

SELECT MAX(CHAR_LENGTH(CustomerName))
FROM Customers;

SELECT CustomerName
FROM Customers;
WHERE CHAR_LENGTH(CustomerName) = 
        (SELECT MAX(CHAR_LENGTH(CustomerName))
        FROM Customers);

SELECT ProductName, CHAR_LENGTH(ProductName)
FROM Products;
       

SELECT ProductName, LENGTH(ProductName)
FROM Products;
       
SELECT CategoryName, UPPER(CategoryName)
FROM Categories;

SELECT ProductName, LOWER(ProductName)
FROM Products;

SELECT SUBSTRING_INDEX(ContactName," ",1) AS imie,
SUBSTRING_INDEX(ContactName," ",-1) AS nazwisko 
FROM Suppilers;

SELECT ProductName, FORMAT(Price,1,'pl_PL')
FROM Products;

SELECT CategoryName, FORMAT(AVG(),2,'pl_PL')
FROM Categories;



