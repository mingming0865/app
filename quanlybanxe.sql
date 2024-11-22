-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2021 lúc 10:57 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanxe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `TenDN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `MatKhau` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Quen` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `TrangThai` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Loi` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(50) CHARACTER SET utf8 NOT NULL,
  `TenKH` varchar(50) CHARACTER SET utf8 NOT NULL,
  `DiachiKH` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DienthoaiKH` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `DiachiKH`, `DienthoaiKH`) VALUES
('kh001', 'Quang Nhật', 'Hà Nội', '56565322'),
('kh002', 'Mạnh Dũng', 'Hà Nội', '1223566'),
('kh003', 'Hữu Mạnh', 'Hà Nội', '9456565'),
('kh004', 'Cù Đức', 'Hà Nội', '3232320'),
('kh005', 'Quốc Khanh', 'Hà Nội', '9645650'),
('kh006', 'Tấn Trung', 'Sa Đéc', '21312312'),
('kh007', 'Hùng', 'Hà Nam', '12555'),
('kh008', 'Cù Đức', 'Hà Nội', '323232066'),
('kh010', 'Công Huy', 'Vinh', '56565652');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(50) CHARACTER SET utf8 NOT NULL,
  `TenNCC` varchar(50) CHARACTER SET utf8 NOT NULL,
  `DiachiNCC` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DienthoaiNCC` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiachiNCC`, `DienthoaiNCC`) VALUES
('ncc001', 'Honda VN', 'Hà Nội', '26565656'),
('ncc002', 'Mercedes Gr', 'Nam ĐỊnh', '26212122'),
('ncc003', 'VNAA', 'Korean', '5546556'),
('ncc005', 'TGXH', 'HCM', '56565656');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `SoPN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `MaNCC` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MaHang` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NgayNhap` datetime(6) DEFAULT NULL,
  `SoLuongNhap` int(255) DEFAULT NULL,
  `GiaNhap` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`SoPN`, `MaNCC`, `MaHang`, `NgayNhap`, `SoLuongNhap`, `GiaNhap`) VALUES
('pn001', 'ncc001', 'xe005', '2019-12-26 15:29:59.000000', 5, 2000000000),
('pn002', 'ncc002', 'xe001', '2012-12-10 15:29:59.000000', 6, 1000000000),
('pn003', 'ncc003', 'xe005', '2015-06-20 15:32:57.000000', 10, 1000002000),
('pn004', 'ncc002', 'xe004', '2019-12-21 15:33:54.000000', 5, 200000001),
('pn005', 'ncc002', 'xe004', '2019-02-03 15:35:02.000000', 7, 10000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` varchar(50) CHARACTER SET utf8 NOT NULL,
  `MaKH` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MaXe` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NgayBan` datetime(6) DEFAULT NULL,
  `SoLuongBan` int(50) DEFAULT NULL,
  `GiaBan` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPX`, `MaKH`, `MaXe`, `NgayBan`, `SoLuongBan`, `GiaBan`) VALUES
('px001', 'kh001', 'xe002', '2013-12-03 15:36:25.000000', 3, 500000000),
('px002', 'kh001', 'xe003', '2016-12-30 15:36:25.000000', 1, 200000000),
('px003', 'kh002', 'xe003', '2016-06-01 15:38:03.000000', 1, 200000000),
('px004', 'kh003', 'xe001', '2017-06-02 15:39:01.000000', 2, 100000000),
('px005', 'kh005', 'xe005', '2019-12-25 15:40:17.000000', 2, 150000000),
('px006', 'kh004', 'xe004', '2019-10-20 15:41:40.000000', 1, 10000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe`
--

CREATE TABLE `xe` (
  `MaXe` varchar(50) CHARACTER SET utf8 NOT NULL,
  `TenXe` varchar(50) CHARACTER SET utf16 NOT NULL,
  `LoaiXe` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `DonViTinh` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `xe`
--

INSERT INTO `xe` (`MaXe`, `TenXe`, `LoaiXe`, `DonViTinh`) VALUES
('xe001', 'New power', 'HYUNDAI', '500000000'),
('xe002', 'Mega', 'HYUNDAI', '350000000'),
('xe003', 'S500', 'Mercedes', '100000000'),
('xe004', 'S600', 'Mercedes', '500000000'),
('xe005', 'Honda city', 'Honda', '156000000'),
('xe006', 'Audi A6', 'Audi', '600000000'),
('xe007', 'Audi A8', 'Audi', '400000000'),
('xe008', 'BMW 730', 'BMW', '2000000000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`TenDN`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`SoPN`),
  ADD KEY `MaNCC` (`MaNCC`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`MaXe`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
