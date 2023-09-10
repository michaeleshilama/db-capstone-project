DELIMITER $$
CREATE PROCEDURE `AddBooking`(in bID int,in bDate Date ,in tNum int,in cID int)
Begin
declare message varchar(100);
insert into bookings values (bID,bDate,tNum,cID);
set message = "New Booking Added";
select message as "Confrmation";
End$$
DELIMITER ;
