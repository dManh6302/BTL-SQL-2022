CREATE TABLE phongchieu(
maPhong char(10)primary key,
tenPhong nvarchar(35),
soLuongCho int
)

------nhập dữ liệu cho phòng chiếu
insert into phongchieu values ('R1', N'PHÒNG CHIẾU SỐ 1', 49)

----Thủ tục thêm phòng chiếu
alter proc proc_AddRoom @maphong char(10), @tenphong char(35)
as
begin
	if(exists(select * from phongchieu where maPhong = @maphong))
		print N'Mã phòng chiếu đã tồn tại!'
	else 
	begin
		insert into phongchieu values (@maphong, @tenphong, 49)
	end
end

EXEC proc_AddRoom 'R2', N'PHÒNG CHIẾU SỐ 2'
EXEC proc_AddRoom 'R3', N'PHÒNG CHIẾU SỐ 3'

------Thủ tục xóa phòng chiếu
alter proc proc_DeleteRoom @maphong char(10)
as
begin
	if(not exists(select * from phongchieu where maPhong = @maphong))
		print 'Mã phòng chiếu không tồn tại'
	else 
	begin
		delete from phongchieu where maPhong = @maphong
	end	
end
