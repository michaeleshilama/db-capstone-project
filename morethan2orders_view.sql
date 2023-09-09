CREATE VIEW `morethan2orders` AS 
select `menu`.`CuisineName` AS `CuisineName` from `menu`
	where `menu`.`MenuID` in (select `orders`.`MenuItem` from `orders` group by `orders`.`MenuItem` having (count(0) > 2));
