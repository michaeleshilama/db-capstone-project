CREATE VIEW `ordersabove150` AS 
	select `c`.`CustomerID` AS `CustomerID`,`c`.`Name` AS `FullName`,
    `o`.`OrderID` AS `OrderID`,`o`.`TotalCost` AS `Cost`,`m`.`CuisineName` AS `CourseName` 
    from `customers` `c` join `bookings` `b` on `c`.`CustomerID` = `b`.`CustomerID`
    inner join `orders` `o` on `o`.`BookingID` = `b`.`BookingID`
    inner join `menu` `m` on`m`.`MenuID` = `o`.`MenuItem` 
    where (`o`.`TotalCost` > 150);
