
-- 1.Desgin the above database with following table by applying Primary key and Foreign key

-- OrderItem Table
create table OrderItem(id int PRIMARY KEY, OrderId int, ProductId int, UnitPrice decimal(12,2), Quantity int);

-- Product Table
create table Product(id int PRIMARY KEY, ProductName nvarchar(50), UnitPrice decimal(12,2), Package nvarchar(30), isDiscontinued bit);

-- Orders Table
CREATE TABLE Orders (id int PRIMARY KEY, OrderDate DATETIME, OrderNumber nvarchar(10), CustomerId int, TotalAmount decimal(12,2))

-- Customer Table
CREATE TABLE Customer (id int PRIMARY KEY, FirstName nvarchar(40),LastName nvarchar(40),City nvarchar(40), Country nvarchar(40),Phone nvarchar(20));

----------------------------------------------

--Adding Primary & Foreign Key
ALTER TABLE Orderitem
ADD FOREIGN KEY(ProductId) REFERENCES Product(id);

ALTER TABLE Orderitem
ADD FOREIGN KEY(ProductId) REFERENCES Product(id);

ALTER TABLE Orders
ADD FOREIGN KEY(CustomerId) REFERENCES Customer(id);

------------------------------------------------

-- 2.Insert Records in all tables 
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(1, 'mobile', 4400.00, 'yes', 0);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(2, 'tv', 4500.00, 'no', 1);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(3, 'router', 5000.00, 'no', 0);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(4, 'bluetooth', 4500.00, 'yes', 1);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(5, 'earphones', 3200.00, 'yes', 1);

------------------------------------------
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(1,' 2022-04-19, 'OD771', 1, 5500.75);

INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(2, '2022-04-19', 'OD772', 2, 40000.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(3, '2022-04-10', 'OD773', 3, 5585.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(4, '2022-03-03, 'OD774', 4, 5652.75);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(5, '2022-03-03', 'OD775', , 7858.00);

----------------------------------------------------

Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (1, 1, 3, 
45.00, 55);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (2, 3, 4, 
4000.00, 30);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (3, 2, 6, 
35.00, 35);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (4, 4, 2, 
5500.75, 50);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (5, 5, 1, 
4500.60, 70);

-------------------------------------------------------------

INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (1,'haritha', 'mohamatamm', 'guntur', 'India', '9985151275')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (2, 'karthik', 'mohamat', 'koritipadu', 'India', '9985151276')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (3,'suresh', 'moham', 'America', 'USA', '7882799562')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (4,'aaru', 'rayala', 'Bangalore', 'India', '998258930')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (5,'harry', 'mohal', 'Kanpur', 'India', '9952547896')

-------------------------------------------

-- 4.In Order table OrderDate should not accept null value
ALTER TABLE Customer 
ALTER Column FirstName nvarchar(40) NOT NULL;

--------------------------------------------

-- 5.Display all customer details
ALTER TABLE Orders
ALTER COLUMN OrderDate datetime NOT NULL;

---------------------------------------------

-- 6.write a query to display Country whose name starts with A or I

Select * from Customer WHERE Country LIKE 'i%' or Country LIKE 'a%'

----------------------------------------------
-- 7 .write a query to display whose name of customer whose third character is i

Select * from Customer WHERE FirstName LIKE '__i%