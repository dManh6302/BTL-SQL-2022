create table Ve(
	mave char(10) primary key,
	makh char(10) references khachhang(makh),
	manv char(10) references nhanvien(manv),
	maLv char(5) references loaive(malv),
	maphim char(10) references phim(maphim),
	maphong char(10) references phongchieu(maphong),
	masc char(5) references suatchieu(masc),
	maghe char(5),
	trangthai varchar(25),
	ngaychieu date
)
drop table Ve
--View in ra danh sách KH hủy vé
create view DS_HuyVe
as
select KHACHHANG.makh, tenkh, mave, malv, masc, trangthai
from KHACHHANG, Ve
where KHACHHANG.makh = Ve.makh and trangthai = 'Huy'

--Thủ tục hủy vé
alter proc sp_huyVe @mave char(4), @column char(10), @mahang char(1)
as
begin
	if((select trangthai from Ve where mave = @mave) = N'Bình thường')
		begin
			update Ve set trangthai = N'Đã hủy' where mave = @mave

			declare @maphong char(10), @masc char(5), @ngaychieu date
			set @maphong = (select maphong from Ve where mave = @mave)
			set @masc = (select masc from Ve where mave = @mave)
			set @ngaychieu = (select ngaychieu from ve where mave = @mave) 

			if(@column = 'A')
				update V_SOGHETRONGNGAY set columnA = 0 where mahang = @mahang and maphong = @maphong and masc = @masc and NGAYCHIEU = @ngaychieu
			else if(@column = 'B')
				update V_SOGHETRONGNGAY set columnB = 0 where mahang = @mahang and maphong = @maphong and masc = @masc and NGAYCHIEU = @ngaychieu
			else if(@column = 'C')
				update V_SOGHETRONGNGAY set columnC = 0 where mahang = @mahang and maphong = @maphong and masc = @masc and NGAYCHIEU = @ngaychieu
			else if(@column = 'D')
				update V_SOGHETRONGNGAY set columnD = 0 where mahang = @mahang and maphong = @maphong and masc = @masc and NGAYCHIEU = @ngaychieu
			else if(@column = 'E')
				update V_SOGHETRONGNGAY set columnE = 0 where mahang = @mahang and maphong = @maphong and masc = @masc and NGAYCHIEU = @ngaychieu
			else if(@column = 'F')
				update V_SOGHETRONGNGAY set columnF = 0 where mahang = @mahang and maphong = @maphong and masc = @masc and NGAYCHIEU = @ngaychieu
			else if(@column = 'G')
				update V_SOGHETRONGNGAY set columnG = 0 where mahang = @mahang and maphong = @maphong and masc = @masc and NGAYCHIEU = @ngaychieu

			print N'Mã vé [' + @mave + N'] được hủy thành công !'
		end	
	else
		print N'Mã vé [' + @mave + N'] đã bị hủy trước đó rồi !'
end

exec sp_huyVe 've04', 'C', '2'

select * from V_SOGHETRONGNGAY