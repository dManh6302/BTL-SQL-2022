use BTL_SQL_2022

select * from KHACHHANG
select * from LOAIPHIM
select * from LoaiVe
select * from NHANVIEN
select * from PHIM
select * from phongchieu
select * from Seats
select * from SuatChieu
select * from lichchieu
select * from Ve
select * from LICHCHIEU


--DEMO ĐẶT VÉ
exec proc_seatsIN 'R1', '2022-1-4','SC001'
SELECT * FROM VE

exec sp_themVe 'SQL0001','KH01', 'NV01', 'LV001', 'MP01', 'R1','SC001', 'R1A1', N'Bình Thường', '2022-01-04'
exec sp_themVe 'SQL0002','KH02', 'NV01', 'LV001', 'MP01', 'R1','SC001', 'R1A2', N'Bình Thường', '2022-01-04'
exec sp_themVe 'SQL0003','KH03', 'NV01', 'LV001', 'MP01', 'R1','SC001', 'R1A3', N'Bình Thường', '2022-01-04'
exec sp_themVe 'SQL0004','KH04', 'NV01', 'LV001', 'MP01', 'R1','SC001', 'R1A4', N'Bình Thường', '2022-01-04'
exec sp_themVe 'SQL0005','KH05', 'NV01', 'LV001', 'MP01', 'R1','SC001', 'R1A5', N'Bình Thường', '2022-01-04'
exec sp_themVe 'SQL0006','KH06', 'NV01', 'LV001', 'MP01', 'R1','SC001', 'R1A6', N'Bình Thường', '2022-01-04'
exec sp_themVe 'SQL0007','KH07', 'NV01', 'LV001', 'MP01', 'R1','SC001', 'R1A7', N'Bình Thường', '2022-01-04'

EXEC proc_SeatsIn 'R1', '2022-1-4', 'SC001'
SELECT * FROM Ve

EXEC sp_huyVe 'SQL0001'
EXEC sp_huyVe 'SQL0002'
EXEC sp_huyVe 'SQL0003'
EXEC sp_huyVe 'SQL0004'
EXEC sp_huyVe 'SQL0005'
EXEC sp_huyVe 'SQL0006'
EXEC sp_huyVe 'SQL0007'

select * from v_Doanhthu_theoNgay
