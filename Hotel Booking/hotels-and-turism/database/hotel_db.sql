SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00":


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--base de datos de hotel y turismo 

----------------------------------------------------------------------------

--
--Table structure for table `checked`
--

CREATE Table `checked`(
    `id` int(30) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `date_in` datetime NOT NULL,
  `date_out` datetime NOT NULL,
  `booked_cid` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1=checked in , 2 = checked out',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


---
-- Dumping data for table `checked`
--


INSERT INTO `checked` (`id`, `ref_no`, `room_id`, `name`, `contact_no`, `date_in`, `date_out`, `booked_cid`, `status`, `date_updated`) VALUE
(4 '000\n', 1, 'Adriana Chaparro', '+573055255940', '2022-03-21 11:48:14', '2022-03-29 14:25:22' 0, 2, '2022-03-21 13:31:11'),
(5, '9564082520\n', 1, 'Helen Montoya', '+57526-5455-44', '2022-09-19 11:48:33', '2022-09-22 11:48:33', 0, 2, '2022-09-19 13:12:19'),
(6, '2765813481\n', 1, 'Danna Smit', '8747808787', '2022-09-19 13:16:00', '2022-09-24 13:16:00', 0, 2, '2022-09-19 13:43:21'),
(7, '4392831400\n', 3, 'Sofia Osman', '5205525544', '2022-09-19 13:00:00', '2022-09-23 13:00:00', 0, 2, '2022-09-19 16:00:55'),
(10, '6479004224\n', 1, 'Jose Pachon', '+14526-5455-44', '2022-09-23 10:31:00', '2022-09-29 10:31:00', 3, 1, '2022-09-19 16:39:59');


-- ---------------------------------------------------------------------------------

--
-- Table structure for table `rooms`


CREATE TABLE `rooms`(
    `id` init(30) NOT NULL,
    `room` varchar(30) NOT NULL,
    `category_id` init(30) NOT NULL,
    `staus`tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Aviable , 1 = Unvailables'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- DUMPING DATA FOR TABLE ROOMS
--

INSERT INTO `rooms`(`room` ,`category_id` ,`status`)VALUES
(1, 'Room-145' ,3 ,1),
(3, 'Room-121' ,2 ,0);

-- ---------------------------------------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories`(
    `id` init(30) NOT NULL,
    `name` text NOT NULL,
    `price`float NOT NULL,
    `cover_img`text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories`(`ìd` ,`name` ,`price`,`cover_img`) VALUES
(2, 'Deluxe Room', 500, '1600480260_4.jpg'),
(3, 'Single Room', 120, '1600480680_2.jpg'),
(4, 'Family Room', 350, '1600480680_room-1.jpg'),
(6, 'Twin Bed Room', 200, '1600482780_3.jpg');
