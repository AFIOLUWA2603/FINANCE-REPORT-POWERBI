-- Q1 Create a report that shows the CategoryName and Description from the categories table sorted by CategoryName.

select  Categoryname, Description
from categories
order by categoryname;

-- 2 Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table.

select contactname, companyname, contacttitle, phone
from customers;

-- 3 Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname  
-- respectively and HireDate from the employees table sorted from the newest to the oldest employee.

select ucase(firstname), ucase(lastname), hiredate
From employees
order by HireDate;


-- 4 Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders table sorted 
-- by Freight in descending order.

select orderID, orderdate, shippedDate, customerID, freight
from orders
ORDER BY Freight DESC
LIMIT 10;

-- 5 Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table.
select lcase(customerID) as ID 
from customers;

-- 6 Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the 
-- Country in descending order then by CompanyName in ascending order.

select Companyname, fax, phone, country, homepage
from suppliers
order by Country asc;

-- 7 Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only.
select Companyname, contactname
from customers
where CustomerID like 'Buenos Aires%' = 0 ;

-- 8 Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock
select productname, unitprice, quantityperunit
from products
where UnitsInStock = 0;

-- 9 Create a report showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.
select contactname, address, city
from customers
where country = 'Germany' 'Mexico' 'spain' = 0;

-- 10 Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May 1996.
select orderDate, shippeddate, CustomerID, freight
from orders
where orderdate like '1996-05-21' != 0;

-- 11 Create a report showing FirstName, LastName, Country from the employees not from United States.
select firstname, lastname, country
from employees
where not country = 'USA';

-- 12 Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from all orders shipped later
-- than the required date.

select orderid, employeeid, customerid, requireddate, shippeddate
from orders
where not shippeddate < requireddate;

-- 13 Create a report that shows the City, CompanyName, ContactName of customers from cities starting with A or B.
select city, companyname, contactname
from customers
where city like "%A" or "%B";

-- 14 Create a report showing all the even numbers of OrderID from the orders table.
select orderID
from orders
where orderid like '%2'!= 0 ;

-- 15 Create a report that shows all the orders where the freight cost more than $500.
select orderid, freight
from orders
where freight > '$500';


-- 16 Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for
-- reorder.

select productname, unitsinstock, unitsonorder, reorderlevel
from products
where reorderlevel = unitsonorder;

--  17 Create a report that shows the CompanyName, ContactName number of all customer that have no fax number
select companyname, contactname
from customers
where fax = 0;

-- 18 Create a report that shows the FirstName, LastName of all employees that do not report to anybody.

select a.EmployeeID, concat(a.firstname, '', a.lastname) as employee, 
concat(b.firstname, '', b.lastname) as manager
from employees a, employees b
where a.employeeid = b.ReportsTo;

-- 19 Create a report showing all the odd numbers of OrderID from the orders table.
select orderID
from orders
where orderid like  '%3' != 0;

-- 20 Create a report that shows the CompanyName, ContactName, Fax of all customers that do not have Fax number and sorted
-- by ContactName

select companyname, contactname, fax
from customers
where fax  = 0
order by ContactName;

-- 21 Create a report that shows the City, CompanyName, ContactName of customers from cities that has letter L in the name
-- sorted by ContactName.

select city, companyname, contactname
from customers
where city like '%L' != 0
order by contactname;  

-- 22 Create a report that shows the FirstName, LastName, BirthDate of employees born in the 1950s.
select firstname, lastname, birthdate
from employees 
where birthdate between '1950-01-01'and '1959-12-01';

-- 23 Create a report that shows the FirstName, LastName, the year of Birthdate as birth year from the employees table.
select firstname, lastname, birthdate as birthyear
from employees;

-- 24 Create a report showing OrderID, total number of Order ID as NumberofOrders from the orderdetails table grouped by
-- OrderID and sorted by NumberofOrders in descending order.

select orderId, sum(orderID) as Number_of_orders
from `order detailS`
group by orderID
order by Number_of_orders desc;

-- 25 Create a report that shows the SupplierID, ProductName, CompanyName from all product Supplied by Exotic Liquids,
-- Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the supplier ID
select p.supplierid, p.productname, s.companyname
from products as p
join suppliers as s on p.supplierid = s.SupplierID
order by SupplierID; 

-- 26 Create a report that shows the ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress of all orders 
-- with ShipPostalCode beginning with "98124". 
select *
from orders
where ShipPostalCode like '98124%'; 

-- 27 Create a report that shows the ContactName, ContactTitle, CompanyName of customers 
-- that the has no "Sales" in their ContactTitle. 

Select *
from customers
where ContactTitle = 0;

-- 28 Create a report that shows the LastName, FirstName, City of employees in cities other "Seattle"; 
select lastname, firstname, city
from Employees
where city like '%seatle' = 0; 

-- 29 Create a report that shows the CompanyName, ContactTitle, City, Country of all customers in any city
 -- in Mexico or other cities in Spain other than Madrid.
 
 select companyname, contacttitle, city, country
from customers
where country = 'mexico'or 'spain';

-- 30 Create a select statement that outputs the following: 
select concat(firstname, ' ', lastname, 'be reached at x5467') as contactinfo
from employees;

USE sys;
create table Personnel
(id integer primary key,
firstname varchar (10),
lastname varchar (10),
phonenumber integer);

-- 31. Create a report that shows the ContactName of all customers that do not have letter A as the second alphabet in their
-- Contactname
select substring(contactname, 2) 
from customers
where ContactName like "%A" != 0;
 
  -- 32. Create a report that shows the average UnitPrice rounded to the next whole number, total price of UnitsInStock and
-- maximum number of orders from the products table. All saved as AveragePrice, TotalStock and MaxOrder respectively.

select avg(ROUND(unitprice)) as average_price, sum(unitsinstock) as total_stock, max(unitsonorder)
from products;

-- 33. Create a report that shows the SupplierID, CompanyName, CategoryName, ProductName and UnitPrice from the products,
-- suppliers and categories table.
select c.CategoryName, p.supplierid, p.unitprice, s.companyname
from products as p
join suppliers as s on p.SupplierID = s.SupplierID
join categories as c on p.CategoryID = c.CategoryID;


 -- 34. Create a report that shows the CustomerID, sum of Freight, from the orders table with sum of freight greater $200, grouped
-- by CustomerID. HINT: you will need to use a Groupby and a Having statement.

Select customerID, sum(freight) as sum_of_freight
from orders
where freight > '$200%'
group by CustomerID;

-- 35. Create a report that shows the OrderID, ContactName, UnitPrice, Quantity, Discount from the order details, orders and
-- customers table with discount given on every purchase

select o.orderid, c.contactname, od.unitprice, od.quantity, od.discount 
from `order details` as od
join orders as o on od.OrderID = o.OrderID
join customers as c on o.CustomerID = c.CustomerID;

-- 36. Create a report that shows the EmployeeID, the LastName and FirstName as employee, and the LastName and FirstName of
-- who they report to as manager from the employees table sorted by Employee

Select e.employeeid, concat(e.lastname, ' ', e.firstname) as employee, 
concat(m.lastname, ' ', m.FIRStname) as manager
from employees e, employees  m
where m.employeeId = e.ReportsTo
order by employee;

-- 37. Create a report that shows the average, minimum and maximum UnitPrice of all products as AveragePrice, MinimumPrice
-- and MaximumPrice respectively.
select avg(unitprice) as average_price, min(unitprice) minimum_price, max(unitprice)maximum_price
from products;


-- 38. Create a view named CustomerInfo that shows the CustomerID, CompanyName, ContactName, ContactTitle, Address, City,
-- Country, Phone, OrderDate, RequiredDate, ShippedDate from the customers and orders table. HINT: Create a View.
create view customerinfo as 
select c. customerid, ' ',  c.companyname, ' ',  c.ContactName, ' ',  c.ContactTitle, ' ',  c.address, ' ', c.city, ' ', c.country, 
' ', c.phone, ' ', o.orderdate, ' ', o.requireddate, ' ',  o.shippeddate
from customers as c
join orders as o on c.CustomerID = o.customerid;


-- 39. Change the name of the view you created from customerinfo to customer details
create view customerdetails as
select c. customerid, ' ',  c.companyname, ' ',  c.ContactName, ' ',  c.ContactTitle, ' ',  c.address, ' ', c.city, ' ', c.country, 
' ', c.phone, ' ', o.orderdate, ' ', o.requireddate, ' ',  o.shippeddate
from customers as c
join orders as o on c.CustomerID = o.customerid;

-- 41. Create a view named ProductDetails that shows the ProductID, CompanyName, ProductName, CategoryName, Description,
-- QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued from the supplier, products and
-- categories tables.
create view productdetail as
select p.productid, s.companyname, p.productname, c.categoryname, c.description, p.quantityperunit, p.unitprice,
 p.unitsinstock, p.unitsonorder, p.reorderlevel, p.discontinued
from products as p
join categories as c on p.CategoryID = c.CategoryID
join suppliers as s on p.SupplierID = s.SupplierID;

-- 42. Drop the customer details view.
drop view customerdetails;

-- 43. Create a report that fetch the first 5 character of categoryName from the category tables and renamed as ShortInfo

select substring(categoryname, 1,5) as short_info
from categories;


-- 44. Create a copy of the shipper table as shippers_duplicate. Then insert a copy of shippers data into the new table HINT: Create
-- a Table, use the LIKE Statement and INSERT INTO statement. 
create table shippers_duplicate like shippers;
insert shippers_duplicate 
select * 
from shippers;
-- OR
use sys;
 create table shippers_duplicate
 (shippersID integer primary key,
 companyname varchar (50),
 Email varchar (50),
 phonenumber integer);
 
 -- 44. Create a select statement that outputs the following from the shippers_duplicate Table:
 select *
 from shippers_duplicate;

-- 45. Create a report that shows the CompanyName and ProductName from all product in the Seafood category

select p.productname, s.companyname, c.categoryname
from products as p
join categories as c on p.CategoryID = c.CategoryID
join suppliers as s on p.supplierid = s.supplierid
where categoryname like '%seafood' != 0;

-- 46. Create a report that shows the CategoryID, CompanyName and ProductName from all product in the categoryID 5.
select p.productname, s.companyname, c.categoryname 
from products as p
join categories as c on p.CategoryID = c.CategoryID
join suppliers as s on p.supplierid = s.supplierid;


-- 47 Delete the shippers_duplicate table.
drop table shippers_duplicate;

-- 48. Create a select statement that ouputs the following from the employees table.
select lastname, firstname, title, birthdate as age
from employees;

-- 49. Create a report that the CompanyName and total number of orders by customer renamed as number of orders since
-- Decemeber 31, 1994. Show number of Orders greater than 10.
select s.companyname, count(c.customerid) as total_number_of_orders, o.orderdate
from customer as c
inner join orders o on c.CustomerID ;

select CompanyName, count(orderid)as no_of_orders
from customers
join orders on customers.CustomerID = orders.customerid
where OrderDate >= '1994-12-31'
group by CompanyName
having count(orderid) > 10;


-- Create a select statement that ouputs the following from the product table

select  concat(productname, quantityperunit, unitprice) as productinfo
from products;


























