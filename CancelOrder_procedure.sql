DELIMITER $$
CREATE PROCEDURE `CancelOrder`(in x int)
Begin
declare message varchar(50);
if exists (select * from orders where OrderID =x) 
then delete from orders where OrderID = x; Set message = concat("Order ",x," is cancelled");
Else set message = concat(x," is not a valid order number"); 
End if; 

select message as "Confirmation"
;End$$
DELIMITER ;
