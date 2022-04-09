--Tạo table LOAIPHIM
CREATE TABLE LOAIPHIM( MaLoai char(10) primary key not null, TenLoaiPhim nvarchar(100));

INSERT INTO LOAIPHIM VALUES('ML01',N'Hành động');
INSERT INTO LOAIPHIM VALUES('ML02',N'Hoạt hình');
INSERT INTO LOAIPHIM VALUES('ML03',N'Tình cảm');
INSERT INTO LOAIPHIM VALUES('ML04',N'Kinh dị');
INSERT INTO LOAIPHIM VALUES('ML05',N'Hài');
INSERT INTO LOAIPHIM VALUES('ML06',N'Khoa học viễn tưởng');

SELECT * FROM LOAIPHIM
CREATE TABLE PHIM(MaPhim char(10) primary key not null, MaLoai char(10) references LOAIPHIM(Maloai), TenPhim nvarchar(100));

INSERT INTO PHIM VALUES('MP01', 'ML01', N'Người nhện');
INSERT INTO PHIM VALUES('MP02', 'ML02', N'Turning red');
INSERT INTO PHIM VALUES('MP03', 'ML02', N'Encanto: Vùng đất thần kỳ');
INSERT INTO PHIM VALUES('MP04', 'ML03', N'Titanic');
INSERT INTO PHIM VALUES('MP05', 'ML03', N'Love, Roise');
INSERT INTO PHIM VALUES('MP06', 'ML04', N'Bẫy linh hồn');
INSERT INTO PHIM VALUES('MP07', 'ML05', N'Zombieland');

INSERT INTO PHIM VALUES('MP09', 'ML01', N'Morbius');
INSERT INTO PHIM VALUES('MP10', 'ML05', N'Thầy Đạt và những người bạn');
INSERT INTO PHIM VALUES('MP11', 'ML05', N'Thành phố mất tích');
INSERT INTO PHIM VALUES('MP12', 'ML04', N'Bóng đè');
INSERT INTO PHIM VALUES('MP13', 'ML04', N'Vết nứt-Ám hồn trong tranh');
INSERT INTO PHIM VALUES('MP14', 'ML01', N'Batman');
INSERT INTO PHIM VALUES('MP15', 'ML02', N'Những kẻ xấu xa');
INSERT INTO PHIM VALUES('MP16', 'ML01', N'Xe cấp cứu');

SELECT * FROM PHIM
-- Tạo thủ tục thêm trong bảng LOAIPHIM
CREATE PROC sp_ThemLoaiPhim @MaLoai char(10), @TenLoaiPhim nvarchar(100)
AS
BEGIN
	IF(EXISTS(SELECT MaLoai FROM LOAIPHIM WHERE MaLoai = @MaLoai))
		PRINT N'Mã loại phim này đã tồn tại, vui lòng nhập lại!'
	IF(EXISTS(SELECT TenLoaiPhim FROM LOAIPHIM WHERE TenLoaiPhim = @TenLoaiPhim))
		PRINT N'Tên loại phim này đã tồn tại, vui lòng nhập lại!'
	ELSE
		INSERT INTO LOAIPHIM VALUES( @MaLoai, @TenLoaiPhim)
END
-- Tạo thủ tục: xóa trong LOAIPHIM
CREATE PROC sp_XoaLoaiPhim @MaLoai char(10)
AS
BEGIN
	IF(EXISTS(SELECT MaLoai FROM PHIM WHERE Maloai = @MaLoai))
		PRINT N'Mã loại này đang được sử dụng trong bảng khác, không thể xóa được!'
	ELSE 
		DELETE FROM LOAIPHIM WHERE MaLoai = @MaLoai 
END
--Tạo thủ tục thêm phim vào bảng PHIM
CREATE PROC sp_ThemPhim @MaPhim char(10), @MaLoai char(10), @TenPhim nvarchar(100)
AS
BEGIN
	IF(EXISTS(SELECT MaPhim FROM PHIM WHERE MaPhim = @MaPhim))
		PRINT N'Mã phim này đã tồn tại, vui lòng nhập lại!'
	ELSE IF(NOT EXISTS(SELECT MaLoai FROM LOAIPHIM WHERE MaLoai = @MaLoai))
		PRINT N'Mã loại này không tồn tại, vui lòng nhập lại!'
	ELSE 
		INSERT INTO PHIM VALUES(@MaPhim, @MaLoai, @TenPhim)
END

--Tạo thủ tục: xóa trong bảng PHIM
CREATE PROC sp_XoaPhim @MaPhim char(10)
AS
BEGIN
	IF(NOT EXISTS(SELECT MaPhim FROM PHIM WHERE MaPhim = @MaPhim))
		PRINT N'Mã phim này không tồn tại, vui lòng nhập lại!'
	ELSE 
		DELETE FROM PHIM WHERE MaPhim = @MaPhim 
END

-- Tạo view xem thông tin phim
CREATE VIEW V_TTPHIM 
AS
(SELECT MaPhim, TenPhim, TenLoaiPhim
FROM PHIM, LOAIPHIM
WHERE PHIM.MaLoai = LOAIPHIM.MaLoai)

SELECT * FROM V_TTPHIM
