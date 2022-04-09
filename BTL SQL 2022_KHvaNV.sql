create table KHACHHANG(
makh char(10) primary key not null,
tenkh nvarchar(30), diachi nvarchar(30),
sdt char(10),
gioitinh nchar(5), ngaysinh date);


create table NHANVIEN(
manv char(10) primary key not null,
tennv nvarchar(30), diachi nvarchar(30),
sdt char(10),
gioitinh nchar(5), ngaysinh date);

select * from KHACHHANG
insert into KHACHHANG values('KH01',N'Nguyễn Văn Minh',N'Nam Từ Liêm, Hà Nội','0985171516',N'Nam','2002-02-01')
insert into KHACHHANG values('KH02',N'Trần Văn Chân',N'Cầu Giấy, Hà Nội','0985172916',N'Nam','2002-02-01')
insert into KHACHHANG values('KH03',N'Nguyễn Minh Hòa',N'Hai Bà Trưng, Hà Nội','0985271686',N'Nữ','2001-02-15')
insert into KHACHHANG values('KH04',N'Phạm Văn Minh',N'Nam Từ Liêm, Hà Nội','0985171516',N'Nam','1999-02-01')
insert into KHACHHANG values('KH05',N'Nguyễn Anh Khoa',N'Bắc Từ Liêm, Hà Nội','0985171517',N'Nam','2005-07-09')
insert into KHACHHANG values('KH06',N'Huỳnh Thị Anh Thư',N'Quận 1, TP.Hồ Chí Minh','0985171518',N'Nữ','2002-12-12')
insert into KHACHHANG values('KH07',N'Lê Thị Trung Anh',N'Đống Đa, Hà Nội','0985171519',N'Nữ','2002-06-13')
insert into KHACHHANG values('KH08',N'Lê Thị Thùy Linh',N'Thanh Xuân, Hà Nội','0985171510',N'Nữ','2002-05-29')
insert into KHACHHANG values('KH09',N'Nguyễn Văn Hà',N'Nam Từ Liêm, Hà Nội','0985171526',N'Nam','2002-02-01')
insert into KHACHHANG values('KH10',N'Dương Văn Linh',N'Quận 5, TP.Hồ Chí Minh','0885171536',N'Nam','1990-08-11')
insert into KHACHHANG values('KH18',N'Trần Anh Quân',N'Tây Hồ, Hà Nội','0995171829',N'Nam','2009-11-09')
insert into KHACHHANG values('KH20',N'Phạm Khánh Linh',N'Thanh Xuân, Hà Nội','0985272512',N'Nữ','2005-12-10')
insert into KHACHHANG values('KH25',N'Lê Hồng Hưng',N'Thanh Miện, Hải Dương','0985272512',N'Nam','1988-12-11')
insert into KHACHHANG values('KH15',N'Triệu Tuyết Vy',N'Hoàn Kiếm, Hà Nội','0985372589',N'Nữ','2004-01-10')
insert into KHACHHANG values('KH16',N'Phạm Anh Khoa',N'Thanh Xuân, Hà Nội','0985272513',N'Nam','1983-11-10')

EXEC sp_ThemKH 'KH21',N'Lò Hoay Sủi',N'Sông Mã, Sơn La','0985211517',N'Nam','1973-02-11'
EXEC sp_ThemKH 'KH22',N'Tống Văn Giang',N'TP.Cao Bằng, Cao Bằng','0985210517',N'Nam','1993-04-15'
EXEC sp_ThemKH 'KH23',N'Lương Chiến Thắng',N'Sơn Dương, Tuyên Quang','0975211517',N'Nam','1979-12-11'
EXEC sp_ThemKH 'KH24',N'Trần Văn Kiên',N'Lý Nhân, Hà Nam','0985221517',N'Nam','2002-11-11'
EXEC sp_ThemKH 'KH33',N'Lăng Thị Thư',N'Lục Ngạn, Bắc Giang','0985231517',N'Nữ','2002-01-31'
EXEC sp_ThemKH 'KH26',N'Võ Quỳnh Nga',N'Thuận Thành, Bắc Ninh','0975211527',N'Nữ','2005-02-21'
EXEC sp_ThemKH 'KH27',N'Võ Văn Sĩ',N'Thuận Thành, Bắc Ninh','0975211518',N'Nam','1978-02-21'
EXEC sp_ThemKH 'KH29',N'Lục Đoãn Cao Thiện',N'TP.Cao Bằng, Cao Bằng','0985200517',N'Nam','2006-03-11'
EXEC sp_ThemKH 'KH31',N'Lục Trần Đăng Cao',N'TP.Cao Bằng, Cao Bằng','0985200518',N'Nam','1983-11-11'
EXEC sp_ThemKH 'KH32',N'Trần Đăng Thiên',N'Phù Cừ, Hưng Yên','0986200517',N'Nam','1999-12-12'
EXEC sp_ThemKH 'KH34',N'Nguyễn Hoa Sơn',N'Hai Bà Trưng, Hà Nội','0986300517',N'Nam','2002-02-22'
EXEC sp_ThemKH 'KH36',N'Nguyễn Thị Huyền',N'Hai Bà Trưng, Hà Nội','0986310517',N'Nữ','2007-01-22'
EXEC sp_ThemKH 'KH37',N'Nguyễn Ngọc Huyền',N'Cầu Giấy, Hà Nội','0986301517',N'Nữ','2001-12-22'
EXEC sp_ThemKH 'KH38',N'Nguyễn Hoài Ngọc',N'Bắc Từ Liêm, Hà Nội','0886300517',N'Nữ','2005-02-02'
EXEC sp_ThemKH 'KH39',N'Phạm Phương Thảo',N'Nông Cống, Thanh Hóa','0896302517',N'Nữ','2000-04-22'
EXEC sp_ThemKH 'KH40',N'Nguyễn Bích Ngọc',N'Hai Bà Trưng, Hà Nội','0986320519',N'Nữ','1996-07-16'
EXEC sp_ThemKH 'KH41',N'Nguyễn Văn Sơn',N'Lục Nam, Bắc Giang','0987320517',N'Nam','1998-02-23'
EXEC sp_ThemKH 'KH42',N'Trần Tuấn Anh',N'Chí Linh, Hải Dương','0988320117',N'Nam','1995-12-23'
EXEC sp_ThemKH 'KH43',N'Nguyễn Huy Hoàng',N'Lục Nam, Bắc Giang','0987320528',N'Nam','1998-09-23'
EXEC sp_ThemKH 'KH45',N'Nguyễn Văn Bách',N'Lục Nam, Bắc Giang','0987320517',N'Nam','2006-11-23'
EXEC sp_ThemKH 'KH46',N'Nguyễn Văn Nam',N'Lục Nam, Bắc Giang','0987320518',N'Nam','2005-10-23'
EXEC sp_ThemKH 'KH47',N'Nguyễn Thị Tuyết Dung',N'Lục Ngạn, Bắc Giang','0987320519',N'Nữ','1981-10-12'
EXEC sp_ThemKH 'KH48',N'Lê Văn Thanh',N'Thanh Miện, Hải Dương','0987320511',N'Nam','1968-12-29'
EXEC sp_ThemKH 'KH51',N'Phạm Phương Thanh',N'Thanh Miện, Hải Dương','0987320111',N'Nữ','2002-01-03'
EXEC sp_ThemKH 'KH50',N'Lê Công Tú',N'Kim Thành, Hải Dương','0987320211',N'Nam','1988-11-29'
EXEC sp_ThemKH 'KH52',N'Trần Đình Trọng',N'Mỹ Hào, Hưng Yên','0987320311',N'Nam','1998-02-28'
EXEC sp_ThemKH 'KH55',N'Triệu Tiến Anh',N'Thanh Xuân, Hà Nội','0987320711',N'Nam','2000-12-01'
EXEC sp_ThemKH 'KH56',N'Huỳnh Anh Tuấn',N'Thủ Đức, TP.Hồ Chí Minh','0837322515',N'Nam','1975-08-19'
EXEC sp_ThemKH 'KH58',N'Huỳnh Nhật Vy',N'Thủ Đức, TP.Hồ Chí Minh','0837322515',N'Nữ','2010-10-10'
EXEC sp_ThemKH 'KH59',N'Huỳnh Nhật Hạ',N'Thủ Đức, TP.Hồ Chí Minh','0837322516',N'Nữ','2010-10-10'
EXEC sp_ThemKH 'KH60',N'Phạm Tuyết Linh',N'Cầu Giấy, Hà Nội','0989320259',N'Nữ','2002-25-08'


select * from NHANVIEN
insert into NHANVIEN values('NV01',N'Nguyễn Văn Sơn',N'Kim Thành, Hải Dương','0986172526',N'Nam','1996-03-01')
insert into NHANVIEN values('NV02',N'Lê Thị Quỳnh',N'Triệu Sơn, Thanh Hóa','0986173526',N'Nữ','2000-03-12')
insert into NHANVIEN values('NV03',N'Mai Vĩnh Minh',N'Nam Từ Liêm, Hà Nội','0986173537',N'Nam','2002-02-02')

--Đưa ra khách hàng trên 18 tuổi và sắp xếp theo thứ tự giảm dần
select makh, tenkh, year(getdate())-year(ngaysinh) as 'Tuoi'
from KHACHHANG
where year(getdate())-year(ngaysinh)>18
order by Tuoi desc

--Đưa ra khách hàng dưới 18 tuổi và sắp xếp theo thứ tự giảm dần
select makh, tenkh, year(getdate())-year(ngaysinh) as 'Tuoi'
from KHACHHANG
where year(getdate())-year(ngaysinh)<18
order by Tuoi desc

--Thủ tục thêm khách hàng 
create proc sp_ThemKH @makh char(10), @tenkh nvarchar(30), @diachi nvarchar(30), @sdt char(10), @gioitinh nchar(10), @ngaysinh date
as
BEGIN
 if (exists (select makh from KHACHHANG where makh = @makh))
 print N'Khách hàng này đã tồn tại trong bảng';
	insert into KHACHHANG values (@makh, @tenkh, @diachi, @sdt, @gioitinh, @ngaysinh);
END;

EXEC sp_ThemKH 'KH01',N'Hoàng Thúy Hiền',N'Nam Từ Liêm, Hà Nội','0885271516',N'Nữ','2003-02-01'

--Thủ tục xóa khách hàng
create proc sp_XoaKH @makh char(10)
as
BEGIN
  if (not exists(select makh from KHACHHANG where makh = @makh))
  print N'Không có khách hàng này!';
  delete from KHACHHANG where makh = @makh
END;
EXEC sp_XoaKH 'KH30'

--Thủ tục thêm nhân viên
create proc sp_ThemNV @manv char(10), @tennv nvarchar(30), @diachi nvarchar(30), @sdt char(10), @gioitinh nchar(10), @ngaysinh date
as
BEGIN
 if (exists (select manv from NHANVIEN where manv = @manv))
 print N'Nhân viên này đã tồn tại trong bảng';
	insert into NHANVIEN values (@manv, @tennv, @diachi, @sdt, @gioitinh, @ngaysinh);
END;
EXEC sp_ThemNV 'NV01',N'Hoàng Thu Hiền',N'Nam Từ Liêm, Hà Nội','0885272516',N'Nữ','2003-02-02'

--Thủ tục xóa nhân viên
create proc sp_XoaNV @manv char(10)
as
BEGIN
  if (not exists(select manv from NHANVIEN where manv = @manv))
  print N'Không có nhân viên này!';
  delete from NHANVIEN where manv = @manv
END;
EXEC sp_XoaNV 'NV30'