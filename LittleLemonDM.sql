Drop procedure if exists AddBooking;

Delimiter //
create procedure AddBooking(in bID int,in bDate Date ,in tNum int,in cID int) 
Begin
declare message varchar(100);
insert into bookings values (bID,bDate,tNum,cID);

set message = "New Booking Added";

select message as "Confrmation";
End //
Delimiter ;
call AddBooking(9,"2022-12-30",3,4)

Delimiter //
create procedure UpdateBooking(in bID int,in bDate Date)
Begin
declare message varchar(100);
update bookings set Date = bDate where BookingID = bID;

set message = concat("Booking ",bID," updated");

select message as "Confrmation";
End //
Delimiter ;
call UpdateBooking(9,"2023-01-30");


Delimiter //
create procedure CancelBooking(in bID int) 
Begin
declare message varchar(100);
Delete from bookings where BookingID = bID;

set message = concat("Booking ", bID," Cancelled");

select message as "Confrmation";
End //
Delimiter ;
call CancelBooking(9)






