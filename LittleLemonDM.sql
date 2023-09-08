create view OrdersView as
Select OrderID, Quantity, TotalCost from Orders;

create view OrdersAbove150 as 
select customers.CustomerID as CustomerID, customers.Name as FullName, orders.OrderID as OrderID, orders.TotalCost as Cost,
menu.CuisineName as CourseName
from bookings inner join orders on orders.OrderID = bookings.BookingID
inner join menu on orders.MenuItem = menu.MenuID
inner join customers on customers.CustomerID = bookings.CustomerID
where orders.TotalCost > 150;


create view morethan2orders as
Select CuisineName from menu where MenuID = any(Select MenuItem from orders Group by MenuItem having count(*)>2);


create procedure GetMaxQuantity() 
select Max(TotalQuantity) as 'Max Qunatity in Order' from orders;

Prepare GetOrderDetail from 
'select orders.OrderID as OrderID, orders.Quantity as Quantity, orders.TotalCost as Cost 
from customers inner join bookings on customers.customerID = bookings.customerID
inner join orders on orders.BookingID = bookings.BookingID
where customers.CustomerID = ?
';

set @id = 2;
execute GetOrderDetail using @id;

Drop procedure CancelOrder;

