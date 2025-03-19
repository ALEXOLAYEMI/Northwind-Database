select * from categories;

select * from customers;

select * from employees;

select * from orderdetails;

--show categoryid and categoryname from categories
select categoryid,categoryname
from categories;


--show customername and contactname from customer
select customername,contactname,customerid
from customers;


--show orderid, productid and quantity from orderdetails
select orderid,productid, quantity
from orderdetails;

--where: used  to filter your output
select orderid,productid, quantity
from orderdetails
where quantity > 20 ;


select * from orders
where customerid = 5;




select orderid,productid, quantity
from orderdetails
where quantity > 20
order by quantity desc;





--order by: used for rearranging your data output base on the value in a column
select * from orders
where customerid = 21 



--Limit: use for "limiting" your data output to a specific number of rows 
select * from products
order by price desc
limit 5



select * from suppliers
limit 5


---Between: Used with "where" to filter for values between a specific range
select * from employees
where birthdate between '1950-01-01' and '1960-12-31'



--like: Used with "where" to filter for values that resemble the specific value e.g, customers with a name from letter A
select employeeid, firstname, lastname
from employees
where firstname like 'A%';






---In/ Not In: Used to include or exclude specific values 
select * from orders 
where shipperid in(1,3)

select * from orders 
where shipperid not in(1,3)




--- Aggregation function: sum, avg, max, min, count, etc
select orderid, sum(quantity)
from orderdetails
group by orderid


----having: like where it is used for filtering outputs
select categoryid, count(*) as totalproducts
from products
group by categoryid
having count (*) > 10 




---distinct function: Used for retrieving unique values 
select distinct country,
from customers 


