-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.id as Product_ID
    , p.productName as Product
    , c.categoryName as Category
from product as p
join category as c
    on c.Id= p.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.productName as Name
        ,od.quantity as Quantity
from orderDetail as od
join product as p 
    on od.productID=p.Id
join [order] as o
    on od.OrderId=o.Id
    where (10251=o.Id)
    order by p.productName;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id as OrderID
        , c.companyName
        , e.lastname
from [order] as o
join customer as c
    on o.customerId = c.id
join employee as e
    on o.EmployeeId = e.id
