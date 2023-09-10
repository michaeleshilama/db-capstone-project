DELIMITER $$
CREATE PROCEDURE `CancelBooking`(in bID int)
Begin
declare message varchar(100);
Delete from bookings where BookingID = bID;

set message = concat("Booking ", bID," Cancelled");

select message as "Confrmation";
End$$
DELIMITER ;
