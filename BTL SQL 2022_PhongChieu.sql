CREATE TABLE phongchieu(
maPhong char(10)primary key,
tenPhong char(35),
soLuongCho int
)

------nhập dữ liệu cho phòng chiếu
insert into phongchieu values ('R1', 'PHÒNG CHIẾU SỐ 1', 49)
select * from seats
delete from phongchieu where maphong = 'R1'

----Thủ tục thêm phòng chiếu
create proc proc_AddRoom @maphong char(10), @tenphong char(35)
as
begin
	if(exists(select * from Rooms where maPhong = @maphong))
		print 'Mã phòng chiếu đã tồn tại!'
	else 
	begin
		insert into Rooms values (@maphong, @tenphong, 49)
	end
end
------Thủ tục xóa phòng chiếu
create proc proc_DeleteRoom @maphong char(10)
as
begin
	if(not exists(select * from Rooms where maPhong = @maphong))
		print 'Mã phòng chiếu không tồn tại'
	else 
	begin
		delete from Rooms where maPhong = @maphong
	end	
end