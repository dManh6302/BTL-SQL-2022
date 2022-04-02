create table Seats(
maphong char(10),
mahang char(1),
columnA smallint,
columnB smallint,
columnC smallint,
columnD smallint,
columnE smallint, 
columnF smallint,
columnG smallint,
CONSTRAINT FK_seats_Rooms
	foreign key (maphong)
	references phongchieu(maphong)
	on delete CASCADE
)
drop table Seats

SELECT * FROM Seats
insert into Seats values ('R1','1', 0, 0, 0, 0, 0, 0, 0)
insert into Seats values ('R1','2', 0, 0, 0, 0, 0, 0, 0)
insert into Seats values ('R1','3', 0, 0, 0, 0, 0, 0, 0)
insert into Seats values ('R1','4', 0, 0, 0, 0, 0, 0, 0)
insert into Seats values ('R1','5', 0, 0, 0, 0, 0, 0, 0)
insert into Seats values ('R1','6', 0, 0, 0, 0, 0, 0, 0)
insert into Seats values ('R1','7', 0, 0, 0, 0, 0, 0, 0)

----kiểm tra xem ghế đó có còn trống ko
create FUNCTION func_checkSeat (@maphong char(10), @mahang char(1), @column char(1))
RETURNS INT
AS
BEGIN
	declare @res int;
		begin
		if(@column = 'A')
			set @res = (select columnA from Seats where mahang = @mahang and maphong = @maphong);
		if(@column = 'B') 
			set @res = (select columnB from Seats where mahang = @mahang and maphong = @maphong);
		if(@column = 'C') 
			set @res = (select columnC from Seats where mahang = @mahang and maphong = @maphong);
		if(@column = 'D') 
			set @res = (select columnD from Seats where mahang = @mahang and maphong = @maphong);
		if(@column = 'E') 
			set @res = (select columnE from Seats where mahang = @mahang and maphong = @maphong);
		if(@column = 'F') 
			set @res = (select columnF from Seats where mahang = @mahang and maphong = @maphong);
		if(@column = 'G') 
			set @res = (select columnG from Seats where mahang = @mahang and maphong = @maphong);
		end
	return @res
END

create trigger trg_addSeats on phongchieu for insert
as
begin
	declare @maphong char(10)
	set @maphong = (select maphong from inserted)
	insert into seats values(@maphong, '1', 0, 0, 0, 0, 0, 0, 0)
	insert into seats values(@maphong, '2', 0, 0, 0, 0, 0, 0, 0)
	insert into seats values(@maphong, '3', 0, 0, 0, 0, 0, 0, 0)
	insert into seats values(@maphong, '4', 0, 0, 0, 0, 0, 0, 0)
	insert into seats values(@maphong, '5', 0, 0, 0, 0, 0, 0, 0)
	insert into seats values(@maphong, '6', 0, 0, 0, 0, 0, 0, 0)
	insert into seats values(@maphong, '7', 0, 0, 0, 0, 0, 0, 0)
end
go
