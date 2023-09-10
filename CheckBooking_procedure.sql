DELIMITER $$
CREATE PROCEDURE `CheckBooking`(in bDate date, in tNumber int)
Begin 
declare message varchar(100);
declare checker int;
/*check to see if the date and table number exist already*/
select count(*) into checker from bookings where Date = bDate and TableNumber=tNumber;

if checker>0 then set message = concat("Table ",tNumber," is already booked for ",bDate);
else set message = concat("Table ",tNumber," is available on ",bDate); end if;


select message as "Booking Status"
;End$$
DELIMITER ;
