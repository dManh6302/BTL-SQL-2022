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
CREATE FUNCTION func_checkSeat (@maphong char(10), @maghe char(4), @masc char(5), @ngaychieu date)
RETURNS INT
AS
BEGIN
	declare @res int;
		begin
		if(SUBSTRING(@maghe,3,1) = 'A')
			set @res = (select columnA from V_SOGHETRONGNGAY where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'B') 
			set @res = (select columnB from V_SOGHETRONGNGAY where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'C') 
			set @res = (select columnC from V_SOGHETRONGNGAY where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'D') 
			set @res = (select columnD from V_SOGHETRONGNGAY where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'E') 
			set @res = (select columnE from V_SOGHETRONGNGAY where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'F') 
			set @res = (select columnF from V_SOGHETRONGNGAY where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'G') 
			set @res = (select columnG from V_SOGHETRONGNGAY where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		end
	return @res
END

SELECT * FROM V_SOGHETRONGNGAY
PRINT DBO.FUNC_CHECKSEAT('R1', 'R1B2', 'SC001', '2022-01-05')

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


select * from V_SOGHETRONGNGAY
update V_SOGHETRONGNGAY 
	set columnA = 1 

	print dbo.func_checkseat('R1', 'R1A1', 'SC001', '2022-01-04')

