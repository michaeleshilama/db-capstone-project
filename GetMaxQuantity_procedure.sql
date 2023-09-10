DELIMITER $$
CREATE PROCEDURE `GetMaxQuantity`()
select Max(TotalQuantity) as 'Max Qunatity in Order' from orders$$
DELIMITER ;
