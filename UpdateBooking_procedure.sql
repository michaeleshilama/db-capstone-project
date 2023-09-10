DELIMITER $$
CREATE PROCEDURE `UpdateBooking`(in bID int,in bDate Date)
Begin
declare message varchar(100);
update bookings set Date = bDate where BookingID = bID;
set message = concat("Booking ",bID," updated");
select message as "Confrmation";
End$$
DELIMITER ;
