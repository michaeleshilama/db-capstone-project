CREATE VIEW `ordersview` AS 
	select `orders`.`OrderID` AS `OrderID`,`orders`.`Quantity` AS `Quantity`,
    `orders`.`TotalCost` AS `TotalCost` 
    from `orders`;
