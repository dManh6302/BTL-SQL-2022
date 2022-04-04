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

----kiểm tra xem ghế đó có còn trống ko
alter FUNCTION func_checkSeat (@maphong char(10), @mahang char(1), @column char(1), @masc char(5), @ngaychieu date)
RETURNS INT
AS
BEGIN
	declare @res int;
		begin
		if(@column = 'A')
			set @res = (select columnA from V_SOGHETRONGNGAY where mahang = @mahang and maphong = @maphong and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(@column = 'B') 
			set @res = (select columnB from V_SOGHETRONGNGAY where mahang = @mahang and maphong = @maphong and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(@column = 'C') 
			set @res = (select columnC from V_SOGHETRONGNGAY where mahang = @mahang and maphong = @maphong and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(@column = 'D') 
			set @res = (select columnD from V_SOGHETRONGNGAY where mahang = @mahang and maphong = @maphong and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(@column = 'E') 
			set @res = (select columnE from V_SOGHETRONGNGAY where mahang = @mahang and maphong = @maphong and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(@column = 'F') 
			set @res = (select columnF from V_SOGHETRONGNGAY where mahang = @mahang and maphong = @maphong and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(@column = 'G') 
			set @res = (select columnG from V_SOGHETRONGNGAY where mahang = @mahang and maphong = @maphong and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		end
	return @res
END

---TRIGGER TỰ ĐỘNG THÊM GHẾ KHI THÊM PHÒNG
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


---THỦ TỤC IN RA GHẾ TRONG PHÒNG CHỈ ĐỊNH
create proc proc_SeatsIn @maphong char(10)
as
begin
	select * from seats where maphong = @maphong
end

	exec proc_SeatsIn 'R1'

----HÀM TRẢ VỀ STATUS GHẾ TRONG PHÒNG CHỈ ĐỊNH
create function func_SeatsIn(@maphong char(10))
returns table
as
return	
	select * from seats where maphong = @maphong


----View hiện ghế tất cả các phòng
create VIEW V_SOGHETRONGNGAY
AS
	SELECT seats.maphong, Seats.mahang, Seats.columnA, Seats.columnB, Seats.columnC, Seats.columnD, Seats.columnE, Seats.columnF, Seats.columnG,
			LICHCHIEU.NGAYCHIEU, LICHCHIEU.MaSC
	FROM Seats, LICHCHIEU
