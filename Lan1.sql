-- Tạo bảng Sách
CREATE TABLE nha_xuat_ban (
    ma_nha_xuat_ban INT PRIMARY KEY IDENTITY(1,1),
    ten_nha_xuat_ban NVARCHAR(255) NOT NULL,
    dia_chi_nha_xuat_ban TEXT NOT NULL,
    so_dien_thoai NVARCHAR(15) NOT NULL,
);
CREATE TABLE sach (
    ma_sach INT PRIMARY KEY IDENTITY(1,1),
    ten_sach NVARCHAR(255) NOT NULL,
    ten_tac_gia NVARCHAR(255) NOT NULL,
    ngay_nhap_sach DATE NOT NULL,
    gia_nhap_sach DECIMAL(10,2) NOT NULL,
	ma_nha_xuat_ban int,
	FOREIGN KEY (ma_nha_xuat_ban) REFERENCES nha_xuat_ban(ma_nha_xuat_ban),
);

-- Tạo bảng Đại lý
CREATE TABLE dai_ly (
    ma_dai_ly INT PRIMARY KEY IDENTITY(1,1),
    ten_dai_ly NVARCHAR(255) NOT NULL,
    dia_chi_dai_ly TEXT NOT NULL,
    so_dien_thoai NVARCHAR(15) NOT NULL,
);

-- Tạo bảng Nhân viên
CREATE TABLE nhan_vien (
    ma_nhan_vien INT PRIMARY KEY IDENTITY(1,1),
    ten_nhan_vien NVARCHAR(255) NOT NULL,
    so_dien_thoai NVARCHAR(15) NOT NULL,
    tuoi INT NOT NULL,
    que_quan NVARCHAR(255) NOT NULL,
    dia_chi_thuong_tru TEXT NOT NULL,
);

-- Tạo bảng Con
CREATE TABLE con (
    ma_con INT PRIMARY KEY IDENTITY(1,1),
    ten_con NVARCHAR(255) NOT NULL,
    gioi_tinh NVARCHAR(10) NOT NULL,
    ngay_sinh DATE NOT NULL,
    ma_nhan_vien INT,
    FOREIGN KEY (ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien),
);

-- Tạo bảng Phòng ban
CREATE TABLE phong_ban (
    ma_phong_ban INT PRIMARY KEY IDENTITY(1,1),
    ten_phong_ban NVARCHAR(255) NOT NULL,
    dia_chi_phong_ban TEXT NOT NULL,
    so_dien_thoai NVARCHAR(15) NOT NULL,
    ma_truong_phong INT,
    ngay_nhan_chuc DATE,
    FOREIGN KEY (ma_truong_phong) REFERENCES nhan_vien(ma_nhan_vien),
);
--Thêm NXB
INSERT INTO nha_xuat_ban (ten_nha_xuat_ban, dia_chi_nha_xuat_ban, so_dien_thoai) VALUES
    (N'Nhà xuất bản Kim Đồng', N'15 Đinh Lễ', '02438695845'),
    (N'Nhà xuất bản Giáo dục Việt Nam', N'495 Tây Sơn', '02438521194'),
    (N'Nhà xuất bản Trẻ', N'668 Điện Biên Phủ', '02838695845'),
    (N'Nhà xuất bản Văn học', N'5 Đinh Lễ', '02438521195'),
    (N'Nhà xuất bản Nhã Nam', N'59 Đinh Lễ', '02438521196'),
    (N'Nhà xuất bản NXB Trí Việt', N'100 Lò Đúc', '02438521197');
-- Thêm sách
INSERT INTO sach (ten_sach, ten_tac_gia, ngay_nhap_sach, gia_nhap_sach, ma_nha_xuat_ban) VALUES
    (N'Harry Potter và Hòn đá Phù thủy', N'J.K. Rowling', '2023-11-14', 120000, 1),
    (N'Lược sử Vạn vật', N'Bill Bryson', '2023-11-15', 150000, 2),
    (N'Nhà giả kim', N'Paulo Coelho', '2023-11-16', 80000, 3),
    (N'Đắc nhân tâm', N'Dale Carnegie', '2023-11-17', 100000, 4),
    (N'Tuổi trẻ đáng giá bao nhiêu?', N'Rosie Nguyễn', '2023-11-18', 90000, 5),
    (N'Nhà Lãnh đạo Tự giác', N'Robin Sharma', '2023-11-19', 125000, 6),
    (N'Sapiens: Lược sử Loài người', N'Yuval Noah Harari', '2023-11-20', 180000, 7),
    (N'Muôn Kiếp Nhân Sinh', N'Nguyên Phong', '2023-11-21', 155000, 8),
    (N'Bố Già', N'Mario Puzo', '2023-11-22', 140000, 9),
    (N'Lục Quốc Sử', N'Lê Văn Hưu', '2023-11-23', 130000, 10),
    (N'Hoàng Tử Bé', N'Antoine de Saint-Exupéry', '2023-11-24', 115000, 3),
    (N'Nghệ thuật sống', N'Erich Fromm', '2023-11-25', 105000, 6);

