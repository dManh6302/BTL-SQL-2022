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
ngaychieu date null,
masc char(5) null,
CONSTRAINT FK_seats_Rooms
	foreign key (maphong)
	references phongchieu(maphong)
	on delete CASCADE
)
drop table Seats


----kiểm tra xem ghế đó có còn trống ko
alter FUNCTION func_checkSeat (@maphong char(10), @maghe char(4), @masc char(5), @ngaychieu date)
RETURNS INT
AS
BEGIN
	declare @res int;
		begin
		if(SUBSTRING(@maghe,3,1) = 'A')
			set @res = (select columnA from Seats where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'B') 
			set @res = (select columnB from Seats where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'C') 
			set @res = (select columnC from Seats where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'D') 
			set @res = (select columnD from Seats where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'E') 
			set @res = (select columnE from Seats where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'F') 
			set @res = (select columnF from Seats where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		if(SUBSTRING(@maghe,3,1) = 'G') 
			set @res = (select columnG from Seats where mahang = SUBSTRING(@maghe,4,1) and maphong = SUBSTRING(@maghe,1,2) and NGAYCHIEU = @ngaychieu and MaSC = @masc);
		end
	return @res
END


---TRIGGER TỰ ĐỘNG THÊM GHẾ KHI THÊM LỊCH CHIẾU
create trigger trg_addSeats on lichchieu for insert
as
begin
	declare @maphong char(10), @ngaychieu date, @masc char(5)
	
	set @maphong = (select maphong from inserted)
	set @ngaychieu = (select ngaychieu from inserted)
	set @masc = (select masc from inserted)

	insert into seats values(@maphong, '1', 0, 0, 0, 0, 0, 0, 0, @ngaychieu, @masc)
	insert into seats values(@maphong, '2', 0, 0, 0, 0, 0, 0, 0, @ngaychieu, @masc)
	insert into seats values(@maphong, '3', 0, 0, 0, 0, 0, 0, 0, @ngaychieu, @masc)
	insert into seats values(@maphong, '4', 0, 0, 0, 0, 0, 0, 0, @ngaychieu, @masc)
	insert into seats values(@maphong, '5', 0, 0, 0, 0, 0, 0, 0, @ngaychieu, @masc)
	insert into seats values(@maphong, '6', 0, 0, 0, 0, 0, 0, 0, @ngaychieu, @masc)
	insert into seats values(@maphong, '7', 0, 0, 0, 0, 0, 0, 0, @ngaychieu, @masc)
end
go



---THỦ TỤC IN RA GHẾ TRONG PHÒNG CHỈ ĐỊNH, suất chiếu chỉ định
alter proc proc_SeatsIn @maphong char(10), @ngaychieu date, @masc char(5)
as
begin
	select * from seats where maphong = @maphong and ngaychieu = @ngaychieu and masc = @masc
end


----HÀM TRẢ VỀ STATUS GHẾ TRONG PHÒNG CHỈ ĐỊNH
create function func_SeatsIn(@maphong char(10))
returns table
as
return	



