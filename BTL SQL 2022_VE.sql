create table Ve(
mave char(10) primary key,
makh char(10) references khachhang(makh),
manv char(10) references nhanvien(manv),
maLv char(5) references loaive(malv),
maphim char(10) references phim(maphim),
maphong char(10) references phongchieu(maphong),
masc char(5) references suatchieu(masc),
trangthai char(10)
)