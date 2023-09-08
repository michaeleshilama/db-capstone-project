create view OrdersView as
Select OrderID, Quantity, TotalCost from Orders;

create view OrdersAbove150 as 
select customers.CustomerID as CustomerID, customers.Name as FullName, orders.OrderID as OrderID, orders.TotalCost as Cost,
menu.CuisineName as CourseName
from bookings inner join orders on orders.OrderID = bookings.BookingID
inner join menu on orders.MenuItem = menu.MenuID
inner join customers on customers.CustomerID = bookings.CustomerID
where orders.TotalCost > 150