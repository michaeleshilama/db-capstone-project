drop procedure if exists AddValidBooking;
Delimiter //
Create procedure AddvalidBooking(in bDate Date, in tNumber int, in cID int)
Begin 
declare message varchar(100);
declare checker int;
/*check to see if the date and table number exist already*/
select count(*) into checker from bookings where Date = bDate and TableNumber=tNumber;

if checker>0 then set message = concat("Cannot book table ",tNumber," on ",bDate," - Booking cancelled");
else 
start transaction;
insert into bookings (BookingID,Date,TableNumber,CustomerID) values(Null,bDate,tNumber,cID); commit;
set message = concat("Table number ",tNumber," has been booked for customer ",cID," on ",bDate); end if;

select message as "Booking Status"

;End //
Delimiter ;
call AddValidBooking("2022-10-13",3,4)
