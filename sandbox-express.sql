-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2021 at 06:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sandbox`
--

--
-- Dumping data for table `books`
--

INSERT INTO `type_book` (`id`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Premium', '2012-07-28 02:51:54', '2003-02-05 22:29:57'),
(3, 'Biografi', '2015-05-06 01:45:46', '1982-10-16 22:12:04'),
(4, 'Dongeng', '2006-11-25 07:53:16', '2009-08-24 22:06:54'),
(6, 'Komik', '1975-10-12 21:34:30', '2016-03-18 16:50:00'),
(7, 'Ensiklopedi', '1997-05-09 15:27:21', '2020-12-28 21:04:06');


INSERT INTO `book` (`id`, `type_book_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 0, 'Jika kamu menjadi tanda tambah', '1973-08-14 20:31:28', '1991-08-06 08:17:39'),
(2, 3, 'Beruang kutub dan panda', '1991-04-19 02:33:05', '2017-12-19 00:57:04'),
(3, 4, 'Hantu Digoel; Politik Pengamanan Politik Zaman Kolonial', '2001-07-07 00:28:14', '1988-01-21 23:20:49'),
(4, 6, 'Islam Agama ramah perempuan; Pembelaan kiai pesantren', '2000-11-17 18:00:21', '1990-07-05 11:15:30'),
(5, 7, 'buku pintar pengetahuan umum', '1987-03-29 20:32:17', '2019-01-17 23:26:44'),
(6, 0, 'membaca pikiran orang lewat bahasa tubuh', '2018-10-03 15:45:32', '2009-10-20 09:26:13'),
(7, 3, 'Islam Jawa; Kesalehan Normatif Versus Kebatinan', '1988-10-18 10:59:02', '1989-12-12 04:29:34'),
(8, 4, 'Islam Pasar Keadilan; Artikulasi Lokal, Kapitalisme, dan Demokrasi', '2019-03-31 06:48:40', '1994-02-03 12:19:24'),
(9, 6, 'Aplikasi Klinis Induk Ovulasi & Stimulasi Ovariu', '1999-07-22 06:31:09', '1995-01-28 04:26:06'),
(10, 7, '	Aplikasi Praktis Asuhan Keperawatan Keluarga', '2014-01-26 14:51:46', '2001-04-04 15:32:39'),
(11, 0, '	A-Z Psikologi : Berbagai kumpulan topik Psikologi', '1979-05-05 11:29:37', '2011-10-27 07:13:13'),
(12, 3, 'Bangsa gagal ; Mencari identitas kebangsaan', '1994-05-15 21:29:35', '2016-06-05 19:46:24'),
(13, 4, 'Biografi Gus Dur ; The Authorized Biography of KH. Abdurrahman Wahid (Soft Cover)', '1970-12-20 23:23:02', '2005-04-13 17:25:37'),
(14, 6, '	Buku Ajar Tumbuh Kembang Remaja & Permasalahanya', '1999-08-06 02:48:08', '1974-05-08 09:16:02'),
(15, 7, '	Etnografi Pengobatan; Praktik Budaya peramuan & sugesti komunitas adat Tau Taa Vana', '1999-09-16 19:40:56', '2017-12-09 06:46:08');

--
-- Dumping data for table `orders`
--


INSERT INTO `user` (`id`, `name`, `address`, `phone`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Alexa', '7603 Spinka Garden Apt. 450\nNew Jennyfermouth, WA 83169', '(083)161-1629x6802', 'M', '1994-07-13 17:30:04', '1982-10-23 05:39:56'),
(2, 'Ricis', '32722 Era Locks\nPaytonfort, MT 72145-1144', '+90(5)8403520599', 'F', '2005-03-27 23:34:53', '1977-08-20 11:55:04'),
(3, 'Alamanda', '42481 Botsford Crescent\nStarkburgh, MO 40960-0210', '+22(5)7528379122', 'F', '1975-10-21 05:27:37', '1995-12-24 06:28:16'),
(4, 'Shovia', '9696 Elvie Street Apt. 319\nSouth Alexys, TN 60636', '605-874-5803', 'F', '1999-10-01 06:18:08', '2002-10-07 12:32:50'),
(5, 'Rendra', '9206 Keeling Trace\nNew Presleyview, MI 28476-3335', '1-427-736-1697x243', 'M', '2008-04-22 14:53:04', '2013-03-10 10:55:48'),
(6, 'Kinan', '237 Eriberto Summit\nEmmettview, OR 91100', '499-151-9896x4468', 'F', '1990-04-15 00:33:32', '1978-01-07 16:26:25'),
(7, 'Retha', '420 Kailey Point\nJanetstad, ND 31177-6017', '929-576-8832x894', 'F', '1984-07-15 02:46:57', '2002-01-19 15:18:04'),
(8, 'Agatha', '6014 Marjory Junction Suite 850\nBennyburgh, MO 97154-5107', '691.451.1552x2973', 'F', '1971-05-01 12:37:19', '1999-12-16 21:21:56'),
(9, 'Malik', '4105 Brekke Trace\nHodkiewiczmouth, HI 68310', '200.895.0299x0755', 'M', '1976-04-06 20:54:09', '1992-08-25 07:43:10'),
(10, 'Morgan', '2746 Jalyn Forks Suite 478\nRogahnton, WA 93083-9184', '468-464-9248x279', 'M', '1979-01-25 10:17:29', '2012-11-20 18:32:44'),
(11, 'Rofi', '076 Schulist Dale\nEast Demetris, WV 13006', '03828234910', 'M', '1996-03-23 14:31:56', '2004-01-01 14:18:36'),
(12, 'Ferdinan', '8203 Ratke Prairie\nMargarettetown, NM 61871', '1-770-801-8560x028', 'M', '1977-02-22 04:02:05', '2005-10-26 13:59:38'),
(13, 'Ramadhan', '0359 Labadie Plaza Suite 300\nEast Buford, NJ 63688-4623', '1-531-560-9569', 'M', '1979-11-29 01:56:17', '1974-05-27 10:12:48'),
(14, 'Agus', '643 Dale Land\nHudsonland, NC 67273-3678', '439-278-7369', 'M', '2004-08-09 02:19:01', '1983-11-09 12:21:12'),
(15, 'Julita', '5023 Kris Ridges\nHaleychester, NY 69027', '957.450.5864x84692', 'F', '1996-03-21 02:48:15', '2016-09-20 23:32:46'),
(16, 'Elga', '151 Johanna Road Apt. 419\nSouth Mellieview, SD 33959', '1-249-803-7470x785', 'M', '1971-11-19 12:59:20', '2009-10-11 07:48:16'),
(17, 'Dodik', '6434 Jacques Pike Apt. 693\nPort Eloisa, OH 02663', '166-460-9809x6803', 'M', '1976-09-14 02:21:09', '2018-09-27 13:07:22'),
(18, 'Riska', '5345 Joyce Green\nNorth Royalmouth, VA 08571', '1-030-538-8940', 'F', '1973-12-30 16:57:41', '2020-10-13 08:38:10'),
(19, 'Siska', '0384 Keon Courts\nWelchport, MI 90495-4304', '+55(1)0033038328', 'F', '1972-04-03 14:34:06', '1998-08-24 23:19:46'),
(20, 'Margaretha', '11585 Franco Road\nEast Ross, MS 38538-9118', '308.010.4529x9385', 'F', '2019-11-03 07:30:53', '1979-12-13 06:17:19');


INSERT INTO `order` (`id`, `user_id`, `book_id`, `qty`, `order_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4292450, '1974-03-05 17:37:52', '2003-02-05 14:19:20', '1995-10-07 01:06:12'),
(2, 2, 2, 6171, '1988-10-15 04:34:10', '1970-01-02 13:19:05', '1989-11-21 03:06:59'),
(3, 3, 3, 42, '1973-08-14 21:44:37', '2008-10-01 04:19:28', '2016-04-06 14:45:28'),
(4, 4, 4, 61084, '2020-03-11 14:16:38', '1977-11-18 22:19:37', '1997-10-22 04:13:23'),
(5, 5, 5, 0, '1978-12-31 07:28:29', '2010-02-02 00:01:35', '2010-12-28 11:45:25'),
(6, 6, 6, 580, '2008-03-30 17:48:05', '1972-07-07 18:53:05', '1981-08-20 16:24:48'),
(7, 7, 7, 90188, '1980-12-14 18:10:32', '1997-09-23 13:22:14', '2001-04-22 03:25:03'),
(8, 8, 8, 6134, '2017-04-12 10:27:48', '1980-09-13 16:33:52', '1972-11-18 23:48:10'),
(9, 9, 9, 11758, '1978-02-13 19:39:37', '2004-05-30 05:07:10', '2018-07-01 21:21:48'),
(10, 10, 10, 1170, '2020-12-16 03:23:43', '2019-06-01 10:44:46', '1988-02-01 11:57:20'),
(11, 11, 11, 9, '2015-09-25 22:33:20', '1970-12-06 12:50:05', '1976-08-01 18:04:06'),
(12, 12, 12, 56595, '2019-08-18 13:11:30', '1993-09-07 05:31:22', '2010-06-02 03:23:33'),
(13, 13, 13, 60327, '2008-07-02 13:57:55', '1982-04-05 08:04:48', '2018-06-17 05:57:56'),
(14, 14, 14, 28, '2007-01-09 04:58:42', '2017-09-16 16:11:06', '1974-11-28 23:55:06'),
(15, 15, 15, 1, '1971-10-10 23:43:14', '2016-05-02 02:12:45', '2006-03-02 13:38:44'),
(16, 16, 1, 15675, '2007-12-13 09:27:38', '2014-09-25 21:43:54', '2009-04-24 15:16:15'),
(17, 17, 2, 91028384, '1987-04-21 04:09:23', '2008-10-28 08:17:18', '1980-09-03 15:03:22'),
(18, 18, 3, 76, '1983-05-19 06:23:35', '1999-05-24 13:15:18', '2002-11-10 12:53:56'),
(19, 19, 4, 0, '2005-02-05 09:19:08', '2010-10-16 15:27:15', '1997-10-21 07:44:45'),
(20, 20, 5, 853, '2008-11-23 16:43:46', '1983-12-20 15:14:11', '1999-10-27 12:25:15');
COMMIT;

--
-- Dumping data for table `type_books`
--

--
-- Dumping data for table `users`
--
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
