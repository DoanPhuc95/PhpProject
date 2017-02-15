-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2016 at 02:49 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlsv_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `MaAD` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` char(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`MaAD`, `HoTen`, `GioiTinh`, `DiaChi`, `Email`, `MatKhau`) VALUES
('AD01', 'Doãn Minh Phúc', 'Nam', 'Hà Nội', 'Phucdoan@gmail.com', 'ad001'),
('AD02', 'Dương Công Nguyên', 'Nam', 'Hà Nội', 'duongcongnguyen1095@gmail.com', 'ad002'),
('AD03', 'Nguyễn Thanh Tuấn', 'Nam', 'Thái Bình', 'Thanhtuan@gmail.com', 'ad003'),
('AD04', 'Nguyễn Duy Long', 'Nam', 'Hà Nội', 'duylong@gmail.com', 'ad004');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_id`, `category_name`) VALUES
(0, 2, 'Thông báo đăng ký học tập'),
(1, 0, 'Lịch Thi'),
(2, 1, 'Thông báo của ban Quản trị\r\n'),
(3, 3, 'Thông báo xét tốt nghiệp'),
(4, 4, 'Thông báo xử lý học tập');

-- --------------------------------------------------------

--
-- Table structure for table `chuongtrinh`
--

CREATE TABLE `chuongtrinh` (
  `MaCT` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `ChTrinh` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `MaHP` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HocKy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuongtrinh`
--

INSERT INTO `chuongtrinh` (`MaCT`, `ChTrinh`, `MaHP`, `HocKy`) VALUES
('1', 'Chương Trình Việt Nhật', 'PE1010', 20121),
('10', 'Chương Trình Việt Nhật', 'MIL1110', 20121),
('11', 'Chương Trình Việt Nhật', 'MIL1120', 20122),
('12', 'Chương Trình Việt Nhật', 'MIL1130', 20131),
('13', 'Chương Trình Việt Nhật', 'FL1101', 20121),
('14', 'Chương Trình Việt Nhật', 'FL1102', 20122);

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `MSGV` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` bigint(20) DEFAULT NULL,
  `MaKhoa` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` char(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`MSGV`, `HoTen`, `GioiTinh`, `DiaChi`, `Email`, `SDT`, `MaKhoa`, `MatKhau`) VALUES
('GV01', 'Vũ Anh Minh', 'Nam', 'Hà Nội', 'theduc@gmail.com', 12345, 'K02', '12345'),
('GV02', 'Nguyễn Thanh Hùng', 'Nam', NULL, 'thanhhung@gmail.com', 912345678, 'K03', '12345'),
('GV03', 'Nguyễn Thanh Bình', 'Nam', NULL, NULL, NULL, 'K01', '12345'),
('GV04', 'Đoàn Thành Công', 'Nam', 'Hải Phòng', 'thanhcong@gmail.com', 1666777888, 'K01', '12345'),
('GV05', 'Nguyễn Hương Giang', 'Nữ', 'Hà Nội', 'huonggiang@gmail.com', 123456789, 'K02', '12345'),
('GV06', 'Nguyễn Huyền My', 'Nữ', 'Thái Bình', 'mymy@gmail.com', 988888888, 'K03', '12345'),
('GV07', 'Trần Anh Đức', 'Nam', 'Hà Nội', NULL, NULL, 'K01', '12345'),
('GV08', 'Hoàng Thanh Long', 'Nam', 'Nghệ An', 'Longthanh@gmai.com', NULL, 'K02', '12345'),
('GV09', 'Trần Thanh Bình', 'Nam', 'Hà Nội', 'thanhbinh@gmail.com', 984898989, 'K03', '12345'),
('GV10', 'Vũ Thu Hương', 'Nữ', 'Hòa Bình', NULL, NULL, 'K02', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `hocphan`
--

CREATE TABLE `hocphan` (
  `MaHP` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `TenHP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Sotinchi` smallint(6) NOT NULL,
  `SoTiet` int(11) NOT NULL,
  `MaKhoa` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `Trongso` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hocphan`
--

INSERT INTO `hocphan` (`MaHP`, `TenHP`, `Sotinchi`, `SoTiet`, `MaKhoa`, `Trongso`) VALUES
('IT2110', 'Nhập môn CNTT và TT', 2, 45, 'K02', 0.7),
('IT2120', 'Kiến thức máy tính', 2, 45, 'K02', 0.6),
('IT3230', 'Lập Trình C cơ bản', 2, 45, 'K02', 0.7),
('IT3250', 'Đạo đức máy tính', 2, 45, 'K02', 0.6),
('IT3312', 'Cấu trúc dữ liệu và giải thuật', 3, 60, 'K02', 0.7),
('JP1110', 'Tiếng Nhật 1', 5, 80, 'K01', 0.7),
('JP1120', 'Tiếng Nhật 2', 5, 80, 'K01', 0.7),
('JP1130', 'Tiếng Nhật 3', 4, 70, 'K01', 0.7),
('JP2110', 'Tiếng Nhật 4', 3, 45, 'K01', 0.7),
('SSH1010', 'Tư Tưởng Hồ Chí Minh', 2, 45, 'K03', 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `ketqua`
--

CREATE TABLE `ketqua` (
  `MSSV` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `MaLopHP` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `DiemQT` double NOT NULL,
  `DiemCK` double NOT NULL,
  `DiemTB` double NOT NULL,
  `XepLoai` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ThangDiem4` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ketqua`
--

INSERT INTO `ketqua` (`MSSV`, `MaLopHP`, `DiemQT`, `DiemCK`, `DiemTB`, `XepLoai`, `ThangDiem4`) VALUES
('20130350', '001', 10, 10, 10, 'A+', 4),
('20130699', '001', 1, 1, 1, 'F', 0),
('20131383', '001', 10, 1, 3.7, 'F', 0),
('20132373', '001', 5, 10, 8.5, 'A', 4),
('20132567', '001', 1, 1, 1, 'F', 0),
('20132807', '001', 1, 1, 1, 'F', 0),
('20132807', '002', 6, 6, 6, 'C', 2),
('20132812', '001', 1, 1, 1, 'F', 0),
('20132812', '002', 10, 10, 10, 'A+', 4),
('20132812', '003', 7, 7, 7, 'B', 3),
('20132812', '004', 8, 8, 8, 'B+', 3.5),
('20132834', '005', 10, 10, 10, 'A+', 4),
('20132974', '001', 10, 10, 10, 'A+', 4),
('20132974', '006', 8, 8, 8, 'B+', 3.5),
('20133026', '007', 6, 6, 6, 'C', 2),
('20134308', '001', 5, 5, 5, 'D+', 1.5),
('20134308', '003', 5, 5, 5, 'D+', 1.5),
('20134308', '008', 7, 7, 7, 'B', 3),
('20134308', '009', 9, 9, 9, 'A', 4),
('2013807', '010', 10, 10, 10, 'A+', 4);

-- --------------------------------------------------------

--
-- Table structure for table `khoavien`
--

CREATE TABLE `khoavien` (
  `MaKhoa` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Phong` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoavien`
--

INSERT INTO `khoavien` (`MaKhoa`, `TenKhoa`, `Phong`, `SDT`) VALUES
('K01', 'Tiếng Nhật', '810', 43888888),
('K02', 'Công nghệ thông tin và truyền thông', '504', 46666666),
('K03', 'Lý luận chính trị', '304', 4345345),
('K04', 'Giáo dục thể chất', '404', 46565656);

-- --------------------------------------------------------

--
-- Table structure for table `lophp`
--

CREATE TABLE `lophp` (
  `MaLopHP` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `MaHP` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `HocKy` int(11) NOT NULL,
  `DangKymin` int(11) NOT NULL,
  `DangKymax` int(11) NOT NULL,
  `MSGV` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrangThai` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChuGiaoVien` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lophp`
--

INSERT INTO `lophp` (`MaLopHP`, `MaHP`, `HocKy`, `DangKymin`, `DangKymax`, `MSGV`, `TrangThai`, `GhiChu`, `GhiChuGiaoVien`) VALUES
('001', 'IT2110', 20161, 45, 90, 'GV01', 'Mở đăng kí', NULL, 'có điểm danh'),
('002', 'IT2120', 20161, 60, 120, 'GV02', 'Mở đăng kí', 'Lý thuyết', NULL),
('003', 'IT3230', 20161, 20, 40, 'GV03', 'Mở đăng kí', 'Thực hàng', 'Điểm danh'),
('004', 'IT3230', 20161, 20, 40, 'GV04', 'Mở đăng kí', 'thực hành', NULL),
('005', 'IT3312', 20161, 60, 120, 'GV05', 'Đóng đăng kí', 'lý thuyết', NULL),
('006', 'JP1110', 20161, 20, 40, 'GV06', 'Mở đăng kí', 'LT + BT', NULL),
('007', 'JP1110', 20161, 20, 40, 'GV07', 'Mở đăng kí', 'LT + BT', NULL),
('008', 'SSH1010', 20161, 20, 40, 'GV08', 'Mở đăng kí', 'BT', NULL),
('009', 'SSH1010', 20161, 20, 40, 'GV09', 'Mở đăng kí', 'BT', NULL),
('010', 'IT3250', 20161, 60, 120, 'GV10', 'Mở đăng kí', 'LT + BT', NULL),
('020', 'JP2110', 20161, 20, 40, 'GV01', 'Mở đăng kí', 'Lý thuyết', 'tuần 10 kiểm tra giữa kì');

-- --------------------------------------------------------

--
-- Table structure for table `lophpdk`
--

CREATE TABLE `lophpdk` (
  `MaLopHP` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `MSSV` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lophpdk`
--

INSERT INTO `lophpdk` (`MaLopHP`, `MSSV`, `TrangThai`) VALUES
('001', '20130350', 'thành công'),
('001', '20130699', 'thành công'),
('001', '20131383', 'thành công'),
('001', '20132373', 'thành công'),
('001', '20132567', 'thành công'),
('001', '20132807', 'thành công'),
('001', '20132812', 'thành công'),
('001', '20132974', 'Chờ đăng ký'),
('001', '20134308', 'thành công'),
('002', '20132812', 'thành công'),
('002', '20132870', 'thành công'),
('002', '20132893', 'thành công'),
('002', '20132974', 'thành công'),
('002', '20133026', 'thành công'),
('002', '20134308', 'thành công'),
('003', '20133026', 'thành công'),
('003', '20134308', 'thành công'),
('004', '20131383', 'thành công'),
('004', '20134308', 'thành công'),
('005', '20132567', 'thành công'),
('005', '20132812', 'thành công'),
('005', '20134308', 'thành công'),
('007', '20132974', 'Chờ đăng ký'),
('008', '20132893', 'thành công'),
('008', '20134308', 'thành công'),
('009', '20132150', 'thành công'),
('009', '20133026', 'thành công'),
('009', '20134308', 'thành công');

-- --------------------------------------------------------

--
-- Table structure for table `lopsv`
--

CREATE TABLE `lopsv` (
  `MaLopSV` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaKhoa` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `TenLopSV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ChTrinh` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KhoaHoc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lopsv`
--

INSERT INTO `lopsv` (`MaLopSV`, `MaKhoa`, `TenLopSV`, `ChTrinh`, `KhoaHoc`) VALUES
('VN6A', 'K02', 'Việt nhật 6A', 'Việt Nhật', 56),
('VN6B', 'K02', 'Việt Nhật 6B', 'Việt Nhật', 56),
('VN7C', 'K02', 'Việt nhật 7B', 'Việt Nhật', 57),
('VN8A', 'K02', 'Việt Nhật 8A', 'Việt Nhật', 58),
('VN8B', 'K02', 'Việt Nhật 8B', 'Việt Nhật', 58),
('VN8C', 'K02', 'Việt Nhật 8C', 'Việt Nhật', 58),
('VN9A', 'K02', 'Việt Nhật 9A', 'Việt Nhật', 59),
('VN9B', 'K02', 'Việt nhật 9B', 'Việt Nhật', 59);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `brief` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `date_post` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `admin_id` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header` text COLLATE utf8_unicode_ci,
  `file_attack` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `brief`, `content`, `date_post`, `category_id`, `admin_id`, `header`, `file_attack`) VALUES
(18, 'Kế hoạch đăng ký lớp học kỳ 2 năm học 2016-2017 cho các khóa K57-61', 'SV vào xem kế hoạch đăng ký lớp học kỳ 2 năm học 2016-2017 cho các khóa K57-61', 'Sinh viên các khoá K57 - K61 đăng ký lớp cho học kỳ 2 năm học 2016-2017 trực tuyến trên hệ SIS tại địa chỉ http://dk-sis.hust.edu.vn/(đăng nhập với tài khoản được cấp) theo hướng dẫn dưới đây.\r\nHỌC KỲ 2 NĂM HỌC 2016-2017\r\n1. Đăng ký học tập:\r\nNhà trường sẽ đăng thời khóa biểu kỳ 2 trước khi đăng ký và update thường xuyên trên trang: sis.hust.edu.vn; dtdh.hust.edu.vn; facebook của phòng ĐTĐH ( https://www.facebook.com/DTDHBKHN/ ) và của các khóa\r\nSinh viên có thể xem danh sách các mã lớp mở sẽ được cập nhật tại đây trong thời gian sớm nhất\r\nK61: Sinh viên K61 được Nhà trường xếp thời khoá biểu theo kế hoạch học tập chuẩn từng ngành (coi như đã được đăng ký).\r\nKhối lượng đăng ký tối đa 24TC, tối thiểu 12TC \r\nK57, K58, K59, K60: sinh viên tự đăng ký lớp\r\nKhối lượng đăng ký tối đa 24TC, tối thiểu 12TC \r\nLưu ý: với sinh viên bị cảnh cáo học tập mức 1 thì tối đa 18TC, mức 2 tối đa 14TC. Sinh viên bị cảnh cáo chuẩn tiếng anh TOEIC theo trình độ sinh viên thì tối đa 14TC\r\nThời gian: \r\nĐăng ký lớp học: sinh viên đã đăng ký học phần cho học kỳ 2 (vào tuần 6-7) sẽ được ưu tiên đăng ký lớp thời gian này\r\nK57 và khóa trước: từ 16h 19/12/2016 – 16h ngày 21/12/2016\r\nK58: từ 16h 21/12/2016 – 16h ngày 24/12/2016\r\nK59: từ 16h 24/12/2016 – 16h ngày 27/12/2016\r\nK60:    số hiệu sinh viên từ 20150000-20152000: 16h 27/12/2016 – 16h ngày 28/12/2016\r\nsố hiệu sinh viên từ 20152001-20154000: 16h 28/12/2016 – 16h ngày 29/12/2016\r\nsố hiệu sinh viên từ 20154001-hết: 16h 29/12/2016– 16h ngày 30/12/2016\r\nToàn bộ K60: từ 16h 30/12/2016 – 16h ngày 2/1/2017\r\nĐăng ký điều chỉnh lớp học: tất cả các sinh viên đều được đăng ký lớp\r\nK57-K59: 16h 2/1/2017 – 16h ngày 5/1/2017\r\nK60: 16h 5/1/2017 – 16h ngày 8/1/2017\r\nĐăng ký thêm vào các lớp đã mở:  từ 16h 8/1/2017 – 16h ngày 13/1/2017\r\nThời gian mở lớp mới: hết 16h ngày 4/1/2017\r\nThông báo lớp ít sinh viên: 9/1/2017\r\nThông báo lớp hủy/giữ, lớp ít sinh viên (trừ các lớp của K61): 10/1/2017\r\nĐóng đăng ký các lớp (trừ các lớp của K61): 16h ngày 13/1/2017\r\n            Đăng ký thêm vào các lớp của K61: 16/1/2017 – 16h ngày 18/1/2017 (Chú ý: không được điều chỉnh các lớp đã đăng ký của khóa trước)\r\n2. Chú ý mới: \r\nTrong thời gian đăng ký, đề nghị tất cả các sinh viên:\r\n-Chỉ truy nhập vào trang đăng ký học tập dk-sis.hust.edu.vn trong thời gian dành cho mình. Không trung nhập vào trong các thời gian khác.\r\n-Không thực hiện những thao tác gây ảnh hưởng đến đường mạng đăng ký của trường ví dụ như:\r\nTải lại trang liên tục\r\nMở nhiều trang đăng ký\r\nNhờ bên ngoài sử dụng những phần mềm không được phép để đăng ký\r\nTất cả những thao tác trên đều không có khả năng đăng ký được nhanh hơn nhưng làm ảnh hưởng rất lớn đến tốc độ đường truyền và làm cho toàn bộ hệ thống chậm lại và có khả năng không ai đăng ký được. Mọi hành động cố tình gây cản trở Nhà trường sẽ có các hình thức kiểm tra, phát hiện và kỷ luật.\r\n3. Nơi giải quyết các thắc mắc\r\n- Việc mở, đóng các lớp thí nghiệm, thực tập và tốt nghiệp sẽ do Viện dạy môn học đó phụ trách. Mọi yêu cầu, thắc mắc về lịch thí nghiệm đề nghị liên hệ trực tiếp với Viện phụ trách môn học.\r\n- Trong quá trình đăng ký, sinh viên có thể không đăng ký được môn học. Khi đó, hệ thống sẽ thông báo lý do không đăng ký được. Các xử lý một số thông báo như sau:\r\n- Do chưa học môn điều kiện: sinh viên cần học môn điều kiện trước\r\n- Do đã học môn điều kiện nhưng mã khác: sinh viên cần liên hệ với Khoa Viện phụ trách môn học để bổ sung\r\n- Do sai mã môn điều kiện: sinh viên cần liên hệ với Khoa Viện phụ trách môn học để bổ sung\r\n-Do thiếu thí nghiệm hoặc lớp thí nghiệm đã quá số lượng: sinh viên cần liên hệ với Khoa Viện phụ trách môn học để bổ sung lớp thí nghiệm cần thiết. Viện sẽ gửi danh sách thời gian thí nghiệm cho Phòng Đào tạo để cập nhật.\r\n-Do quá số lượng sinh viên tối đa: số lượng sinh viên tối đa đã được đặt theo yêu cầu của Khoa Viện và dung tích phòng và không thêm vào được nữa. Nếu sinh viên muốn đăng ký vượt quá cần làm đơn gửi Khoa Viện, nếu số lượng sinh viên đăng ký thêm nhiều, Khoa Viện sẽ gửi yêu cầu để đổi phòng hoặc thêm lớp cho Phòng Đào tạo xử lý.\r\n-Do quá số tín chỉ: yêu cầu sinh viên được đăng ký tối đa 24 tín chỉ, nếu vượt quá, sinh viên cần rút ra khỏi môn học khác để đăng ký vào môn học cần thiết.\r\n-Do trùng thời khóa biểu: sinh viên cần rút khỏi môn học trùng và đăng ký vào môn học cần thiết\r\n-Do các lớp đều có giới hạn dưới, nếu số lượng sinh viên ít hơn giới hạn dưới, sinh viên sẽ không rút ra khỏi lớp đó được. Vì thế, sinh viên cần rất cẩn thận khi đăng ký lớp.\r\n4. Quy định về hủy lớp và mở thêm lớp\r\nHủy lớp:\r\nCác lớp có số lượng sinh viên ít sẽ bị hủy vào 10/1/2017. Sau đó, sinh viên vẫn được đăng ký thêm vào các lớp nhưng không rút ra được khỏi các lớp nữa.\r\nMở thêm lớp: \r\nCác sinh viên có nhu cầu mở thêm lớp cần làm đơn gửi Viện phụ trách. Căn cứ vào nhu cầu của sinh viên và khả năng đáp ứng của Viện, Viện sẽ gửi yêu cầu cho Phòng Đào tạo, chậm nhất ngày 2/1/2017. Các lớp mới mở muộn nhất 4/1/2017 và chốt hủy lớp vào ngày 10/1/2017.\r\n5. Rút học phần: \r\nTrong 6 tuần học đầu đối với các lớp mở học 15 tuần và 4 tuần học đầu đối với các lớp mở học 8 tuần, sinh viên có thể làm đơn xin rút học phần (lớp học) với điều kiện số tín chỉ học còn lại không dưới 12TC và vẫn phải đóng học phí các học phần xin rút (đơn nộp tại phòng C1-201, trong đơn ghi rõ mã lớp học, mã học phần, tên học phần cần rút (mẫu đơn trên http://dtdh.hust.edu.vn mục biểu mẫu).\r\n6. Lưu ý:  \r\nSinh viên chịu trách nhiệm về việc đăng ký của mình. Sau khi đăng ký xong, sinh viên cần kiểm tra kết quả đăng ký xem đã thành công chưa.\r\nThời khoá biểu cho các học phần trong KHHT chuẩn của kỳ học của một ngành được xếp không trùng lặp. Với các học phần  thuộc kỳ học khác, thời khoá biểu có thể bị trùng với các HP kỳ học. \r\nVới các môn học có dưới 5 sinh viên, nhà trường sẽ không mở lớp. Với các trường hợp các sinh viên cần học học phần để tốt nghiệp nhưng còn lại quá ít sinh viên, không đủ mở lớp, sinh viên có thể liên hệ với Khoa Viện để xin môn tương đương (nếu có) hoặc môn thay thế (nếu không có môn tương đương)\r\nSau thời gian đăng ký chính thức và chỉnh sửa đăng ký, sinh viên không được thay đổi môn học đã đăng ký.\r\n                                                                      Hà Nội, ngày 10 tháng 12 năm 2016\r\n                                                                         PHÒNG ĐÀO TẠO ĐẠI HỌC  Chia sẻ bài viết lên facebook\r\n\r\nTHÔNGBÁO VỀ XỬ LÝ HỌC TẬP HỌC KỲ 20132\r\n\r\n(Đốivới sinh viên đại học chính quy)\r\n\r\n\r\n            Được sự phê duyệt của Ban Giám Hiệu, Phòng Đàotạo Đại học thông báo việc xử lý học tập học kỳ 20132 đối với sinh viên đại họcchính quy  như sau:\r\n\r\n      1/-Cảnh cáo học tập:\r\n\r\n-        Nâng mộtmức cảnh cáo học tập khi số tín chỉ không đạt trong học kỳ vượt quá 8.\r\n-        Nâng haimức cảnh cáo học tập khi số tín chỉ không đạt trong học kỳ vượt quá 16, hoặckhông đăng ký học tập, tự ý bỏ học.\r\n-        Nâng ba mứccảnh cáo học tập khi tổng số tín chỉ không đạt (chỉ tính các học phần trongchương trình đào tạo) tính từ đầu khóa học vượt quá 27.\r\n-        Giảm mộtmức cảnh cáo học tập khi số tín chỉ không đạt trong học kỳ nhỏ hơn 5.\r\n      2/-Buộc thôi học: nếu rơi vào một trong những trường hợp sau:\r\n\r\n-        Cảnh cáohọc tập từ mức 2 ở kỳ gần nhất và cảnh cáo học tập mức 3 ở kỳ 20132\r\n-        Cảnh cáohọc tập mức 1 ở kỳ gần nhất, cảnh cáo học tập mức 3 ở kỳ 20132 và có số tín chỉkhông đạt tính từ đầu khóa vượt quá 34.\r\n-        Hết thờihạn tối đa được phép học mà chưa đủ điều kiện để tốt nghiệp.\r\n3/- Các trường hợp CCHT mức 3 được xem xét tạm hoãn ra quyết định buộc thôi học\r\n\r\n      3.1/- Sinh viên là đối tượng chính sách (con liệt sỹ, con thương binh, con bệnh binh,dự bị dân tộc, dân tộc thiểu số), sinh viên có hoàn cảnh khó khăn (mồ côi cả cha lẫn mẹ, tàn tật, …), sinh viên gửiđào tạo (HV An Ninh, HV Khoa học QS, HV KTQS, Lưu học sinh) nếu có đơn của sinhviên và gia đình hoặc cơ quan quản lý. Không áp dụng đối với những đối tượng đãbị cảnh cáo học tập mức 3 ở kỳ 20131.\r\n\r\n3.2/-Sinh viên bị cảnh cáo học tập mức 0 ở  kỳgần nhất và mức 3 ở kỳ 20132;  Sinh viênbị cảnh cáo học tập mức 1 ở  kỳ gần nhất,mức 3 ở kỳ 20132 và có số tín chỉ không đạt tính từ đầu khóa  ≤  34.\r\n\r\n3.3/-Sinh viên có thể cải thiện kết quả học tập sau kỳ hè 20133.\r\n\r\n            3.4/- Đối với sinh viên K52, K53 và K54 ở trình độ năm thứnăm, hiện chỉ học trả nợ các môn không đạt sẽ không bị xử lý học tập.\r\n\r\nLưu ý:\r\n\r\n1/- Sinhviên có thắc mắc về điểm và mức cảnh cáo học tập, sinh viên diện 3.1, 3.3, phải làm đơn xin xem xéthoặc xin treo quyết định buộc thôi học (có ý kiến gia đình hoặc cơ quan quản lý),nộp tại Phòng Đào tạo đại học (C1-201) từngày 26/8/2014  đến 05/9/2014 .\r\n\r\n2/- Sinhviên thuộc diện 3.2 được treo quyết định buộc thôi học, không phải làm đơn.\r\n\r\n3/-Sinh viên bị xử lý buộc thôi học có thể nộp đơn (tại Phòng ĐTĐH C1-202) để đượcxét tiếp nhận vào học hệ cao đẳng của Trường trong học kỳ tới (thời hạn sẽ đượcthông báo sau). Chỉ xét đối tượng sinh viên có thể tiếp tục vào học kỳ 2 năm thứ3 trở lên của chương trình cao đẳng.\r\n\r\n            4/- Những sinh viên thuộc diện bị buộc thôi học sẽ nhậnquyết định và làm các thủ tục liên quan tại Phòng Công tác chính trị và Côngtác sinh viên.\r\n\r\n Danh sách dự kiến xử lý cảnh cáo mức 3 (buộc thôi học) tại đây\r\n\r\nDanh sách dự kiến xử lý treo QĐ mức 3 tại đây.\r\n\r\n \r\n\r\nPHÒNG ĐÀO TẠO ĐẠI HỌC\r\n\r\n \r\n\r\nPGS. TS. Trần Trung Kiên\r\n\r\n(đã ký)\r\n\r\n \r\n', '2016-09-20', 0, 'ad01', 'Lịch thi', NULL),
(20, 'Thông báo lịch khai giảng và lịch học VB2 ngành CNTT k37 năm 2016', 'Sinh viên đã thi tuyển và nộp hồ sơ VB2 ngành CNTT vào xem thông tin lịch khai giảng và lịch học năm 2016 ', 'PHÒNG ĐÀO TẠO ĐẠI HỌC THÔNG BÁO LỊCH KHAI GIẢNG VÀ LỊCH HỌC LỚP VĂN BẰNG 2 NGÀNH CÔNG NGHỆ THÔNG TIN KHÓA 37 NĂM 2016\r\nPhòng đào tạo đại học đã thu nhận hồ sơ đăng ký học lớp văn bằng 2 ngành Công nghệ thông tin K37\r\nLịch khai giảng và lịch học: 18h00 ngành 12/12/2016 tại D5-101\r\nThông tin liên hệ: Phòng đào tạo đại học C1-202A\r\nSố điện thoại: 0438692104', '2016-10-12', 1, 'ad01', 'Thông báo của ban Quản trị', NULL),
(21, 'Thông báo về học phí kỳ 1 năm học 2016-2017 ( Đợt 1 )', 'Thông báo về học phí học kỳ 20161 (đợt 1) ', 'THÔNG BÁO\r\n\r\nVề học phí kỳ I năm học 2016-2017 (20161-đợt 1)\r\n\r\n\r\n\r\n\r\n\r\n1) Sinh viên tra cứu học phí trực tiếp học kỳ 20161 bằng cách đăng nhập vào tài khoản, vào mục Tra cứu --> Tra cứu học phí sinh viên, ngoài ra sinh viên có thể xem cụ thể đăng kýhọc tập và học phí 20161 bằng cách xin Phiếu học tập sinh viên tại Văn phòng  khoa/viện nơi mình đang theo học.\r\n\r\n2) Sinh viên tham khảo Quy định về mức học phí đào tạo đại học hệ chính quy năm học 2016-2017 và 2 năm tiếp theo tại đây.\r\n\r\n3) Mọi thắc mắc về học phí kỳ 20161 để nghị sinh viên liên hệ trực tiếp tại Phòng C1-201 (gặp CV Trần Lê Hùng) hoặc qua email: hung.tranle@hust.edu.vn trước 16h ngày 09/11/2016.\r\n\r\n', '2016-10-14', 2, NULL, 'Thông báo đăng ký học tập', NULL),
(22, 'Kết quả xét nhận đồ án tốt nghiệp kỳ 20153 ngày 12/07/2016', 'Kết quả xét đồ án kỳ hè ngày 12/07/2016 ', 'KẾT QUẢ XÉT NHẬN ĐỒ ÁN TỐT NGHIỆP KỲ HÈ 20153\r\n\r\n\r\n\r\n Phòng Đào tạo Đại học đã có danh sách kết quả xét nhận Đồ án tốt nghiệp kỳ 20153 cho những sinh viên đã đăng ký mã lớp đồ án. Sinh viên chú ý chỉ được xét nhận đồ án nếu không nợ quá 8 TC so với yêu cầu của chương trình đào tạo chưa kể TTTN, ĐATN và các học phần đang học trong kỳ chuẩn cũng như TOEIC đạt từ 450 điểm trở lên ( điểmTOEIC  trước ngày 14.06.2016).  Đề nghị các sinh viên vào kiểm tra và nếu có thắc mắc gì về kết quả xét nhận Đồ án thì nộp đơn trực tiếp tại Phòng 201-C1 hoặc gửi đơn qua thư điện tử : huong.nguyenthi1@hust.edu.vn; ninh.lequang@hust.edu.vn .\r\n\r\nThời gian nhận đơn: 10 giờThứ 3  ngày 12/07/2016 đến 10 giờ Thứ 6 ngày 15/07/2016\r\n\r\nThời gian trả kết quả cho các đơn thắc mắc: từ 10 giờ Thứ 4 ngày 20/07/2016\r\n\r\n Đối với những đơn thắc mắc mà không đủ điều kiện nhận Đồ án tốt nghiệp kỳ 20153 thì Phòng ĐTĐH sẽ xóa mã lớp Đồ án tốt nghiệp cho sinh viên vào ngày 20.07.2016\r\n\r\nĐể biết kết quả xét nhận ĐATN kỳ 20153 các em hãy vào trang cá nhân phần Đăng ký học tập --> Kếtquả xét nhận đồ án tốt nghiệp để xem trực tiếp.\r\n\r\nMẫu đơn: TẢI VỀ\r\n\r\nDanh sách xét nhận Đồ án tốt nghiệp kỳ 20153 ngày 12/07/2016: TẢI VỀ', '2016-04-12', 3, NULL, 'Thông báo xét tốt nghiệp\r\n', NULL),
(23, 'Thông báo về việc xứ lý học tập Buộc thôi học do không đăng ký học tập tính đến kỳ 20152 ( Chính thức )', 'Danh sách chính thức bị xử lý học tập tính đến kỳ 20152 ', 'THÔNG BÁO\r\n\r\n(Về việc xử lý học tập chính thức buộc thôi học, cảnh cáo học tập mức 2 đối với các sinh viên không đăng ký học tập tính đến kỳ 20152)\r\nDanh sách sinh viên Buộc thôi học chính thức do không đăng ký học tập tính đến kỳ 20152 tại đây.\r\nDanh sách sinh viên bị cảnh cáo học tập mức 2 (hạn chế 14 tín chỉ) chính thức kỳ 20152 do không đăng ký học tập tính đến kỳ 20152 tại đây.\r\nLưu ý :\r\nĐối với những sinh viên bị cảnh cáo học tập mức 2 do không đăng ký học tập kỳ 20152 nếu kỳ 20161 không đăng ký học tập sẽ bị cảnh cáo học tập mức 3 (Buộc thôi học).\r\nĐã hết thời gian nhận đơn thắc mắc nên Phòng ĐTĐH không giải quyết  bất cứ trường hợp nào nữa.', '2015-10-12', 4, NULL, 'Thông báo xử lý học tập\r\n', NULL),
(24, 'a', 'a', 'a', '0000-00-00', 0, 'AD01', 'a', '');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MSSV` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySinh` date NOT NULL,
  `QueQuan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaLopSV` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HeHoc` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KhoaHoc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`MSSV`, `HoTen`, `GioiTinh`, `NgaySinh`, `QueQuan`, `MaLopSV`, `Email`, `MatKhau`, `HeHoc`, `KhoaHoc`) VALUES
('20112134', 'Đỗ Đức Quyền', 'Nam', '1993-12-28', 'Hưng Yên', 'VN6B', NULL, '12345', 'Đại học', 56),
('2011674', 'Nguyễn Văn An', 'Nam', '1993-11-11', 'Nghệ An', 'VN6A', NULL, '12345', 'Đại học', 56),
('20121234', 'Nguyễn Đức Linh', 'Nam', '1994-04-16', 'Thái Bình', 'VN7C', NULL, '12345', 'Đại học', 57),
('20130233', 'Trần Tuấn Anh', 'Nam', '1995-01-01', 'Hà Nội', 'VN8A', NULL, '12345', 'Việt Nhật', 58),
('20130350', 'Phí Đức Bình', 'Nam', '1995-01-02', 'Lạng Sơn', 'VN8B', 'binh@gmail.com', '12345', 'Việt Nhật', 58),
('20130401', 'Phạm Đình Chiến', 'Nam', '1995-06-06', 'Hà Nội', 'VN8B', NULL, '12345', 'Việt Nhật', 58),
('20130520', 'Nguyễn Mạnh Cường', 'Nam', '1995-04-01', 'Hà Nội', 'VN8B', 'cuong@gmail.com', '12345', 'Việt Nhật', 58),
('20130526', 'Phan Mạnh Cường', 'Nam', '1995-04-04', 'Hà Tĩnh', 'VN8A', NULL, '12345', 'Việt Nhật', 58),
('20130699', 'Tạ Đức Dũng', 'Nam', '1995-08-08', 'Cao Bằng', 'VN8C', 'ducdung@gmail.com', '12345', 'Việt Nhật', 58),
('20131111', 'Nguyễn Văn Chinh', 'Nam', '1995-02-05', 'hà nội', 'VN8B', ' ', '20131111', 'Đại Học', 58),
('20131383', 'Vũ Thu Hiền', 'Nữ', '1995-05-05', 'Hà Nam', 'VN8B', 'hien@gmail.com', '12345', 'Việt Nhật', 58),
('20131949', 'Nguyễn Khánh Hưng', 'Nam', '1995-04-06', 'Hà Nội', 'VN8B', 'hien@gmail.com', '12345', 'Việt Nhật', 58),
('20132043', 'Nguyễn Linh Khang', 'Nam', '1995-10-18', 'hưng yên', 'VN8A', ' ', '20132043', 'Đại Học', 58),
('20132150', 'Nguyễn Linh Khang', 'Nam', '1995-07-07', 'Hưng Yên', 'VN8A', NULL, '12345', 'Việt Nhật', 58),
('20132373', 'Nguyễn Duy Long', 'Nam', '1995-12-01', 'Hà Nội', 'VN6A', 'longlong@gmail.com', '12345', 'Việt Nhật', 59),
('20132567', 'Bùi Đăng Minh', 'Nam', '1995-12-12', 'Hải Phòng', 'VN8B', NULL, '12345', 'Việt Nhật', 58),
('20132807', 'Trần Hữu Ngọc', 'Nam', '1995-11-11', 'Hà Nội', 'VN8C', NULL, '12345', 'Việt Nhật', 58),
('20132812', 'Dương Công Nguyên', 'Nam', '1995-11-10', 'Hà Nội', 'VN8C', NULL, '12345', 'Việt Nhật', 58),
('20132834', 'Phạm Thị Nhài', 'Nữ', '1995-10-10', 'Hà Nội', 'VN8C', NULL, '12345', 'Việt Nhật', 58),
('20132870', 'Cao Thị Nhi', 'Nữ', '1995-03-03', 'Bắc Ninh', 'VN8B', NULL, '12345', 'Việt Nhật', 58),
('20132893', 'Lại Thùy Ninh', 'Nữ', '1995-11-11', 'Hà Nam', 'VN8B', NULL, '12345', 'Việt Nhật', 58),
('20132974', 'Doãn Minh Phúc', 'Nam', '1995-05-05', 'Hà Nội', 'VN8B', NULL, '12345', 'Việt Nhật', 58),
('20133026', 'Nguyễn Thế Phương', 'Nam', '1995-10-12', 'Hà Nội', 'VN8C', NULL, '12345', 'Việt Nhật', 58),
('20134308', 'Nguyễn Thanh Tuấn', 'Nam', '1995-12-11', 'Thái Bình', 'VN8C', NULL, '12345', 'Việt Nhật', 58),
('20139911', 'D', 'Nam', '1995-01-19', 'Thái Bình', 'VN8A', ' ', '20139911', 'Đại Học', 58),
('20141111', 'Trịnh Đình Quang', 'Nam', '1996-01-03', 'Hà Tây', 'VN9B', NULL, '12345', 'Đại học', 59),
('20142389', 'Nguyễn Phương Linh', 'Nữ', '1996-06-15', 'Thanh Hóa', 'VN9A', NULL, '12345', 'Đại học', 59),
('20145678', 'Hà Anh Tuấn', 'Nam', '1996-09-12', 'Nam Định', 'VN9A', NULL, '12345', 'Đại học', 59);

-- --------------------------------------------------------

--
-- Table structure for table `thoigianhoc`
--

CREATE TABLE `thoigianhoc` (
  `MaLopHP` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `NgayHoc` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `PhongHoc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TuanHoc` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GioHoc` char(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thoigianhoc`
--

INSERT INTO `thoigianhoc` (`MaLopHP`, `NgayHoc`, `PhongHoc`, `TuanHoc`, `GioHoc`) VALUES
('001', 'Thứ 3', '813', '1 - 20', '06h45 - 10h15'),
('002', 'Thứ 5', '814', '1 - 20', '06h45 - 10h15'),
('003', 'Thứ 4', '811', '1 - 20', '06h45 - 10h15'),
('004', 'Thứ 5', '811', '1 - 20', '06h45 - 10h15'),
('005', 'Thứ 2', '405', '1 - 20', '12h30 - 15h00'),
('006', 'Thứ 3', '406', '1 - 20', '12h30 - 15h00'),
('007', 'Thứ 3', '403', '1 - 20', '12h30 - 15h00'),
('008', 'Thứ 6', '811', '1 - 10', '08h30 - 10h15'),
('009', 'Thứ 2', '406', '1 - 20', '15h20 - 17h30'),
('010', 'Thứ 5', '812', '1 - 20', '10h30 - 12h00'),
('020', 'Thứ 2', 'D9-501', '1 - 15', '06h45 - 07h30');

-- --------------------------------------------------------

--
-- Table structure for table `tichluy`
--

CREATE TABLE `tichluy` (
  `MSSV` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `HocKy` int(11) NOT NULL,
  `GPA` double NOT NULL,
  `CPA` double NOT NULL,
  `TCdangky` int(11) NOT NULL,
  `TCtichluy` int(11) NOT NULL,
  `TrinhDo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tichluy`
--

INSERT INTO `tichluy` (`MSSV`, `HocKy`, `GPA`, `CPA`, `TCdangky`, `TCtichluy`, `TrinhDo`) VALUES
('20132812', 20131, 3.59, 3.57, 16, 16, 'Sinh viên năm thứ nhất'),
('20132812', 20132, 2.89, 3.31, 25, 25, 'Sinh viên năm thứ nhất');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`MaAD`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuongtrinh`
--
ALTER TABLE `chuongtrinh`
  ADD PRIMARY KEY (`MaCT`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`MSGV`);

--
-- Indexes for table `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`MaHP`);

--
-- Indexes for table `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`MSSV`,`MaLopHP`);

--
-- Indexes for table `lophp`
--
ALTER TABLE `lophp`
  ADD PRIMARY KEY (`MaLopHP`);

--
-- Indexes for table `lophpdk`
--
ALTER TABLE `lophpdk`
  ADD PRIMARY KEY (`MaLopHP`,`MSSV`);

--
-- Indexes for table `lopsv`
--
ALTER TABLE `lopsv`
  ADD PRIMARY KEY (`MaLopSV`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MSSV`);

--
-- Indexes for table `thoigianhoc`
--
ALTER TABLE `thoigianhoc`
  ADD PRIMARY KEY (`MaLopHP`,`NgayHoc`);

--
-- Indexes for table `tichluy`
--
ALTER TABLE `tichluy`
  ADD PRIMARY KEY (`MSSV`,`HocKy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
