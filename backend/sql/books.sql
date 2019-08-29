-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 03:14 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `rate`, `author_id`, `published_at`, `image_path`, `author_name`, `description`, `url`) VALUES
(1, 'Educated: A Memoir', 8, 36, '2019-02-10', 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg', 'elfarash', 'For readers of The Glass Castle and Wild, a stunning new memoir about family, loss and the struggle for a better future#1 International BestsellerTara', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(2, 'Justice on Trial', 9, 36, '2019-03-11', 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg', 'elfarash', '#1 NATIONAL BESTSELLER! Justice Anthony Kennedy slipped out of the Supreme Court building on June 27, 2018', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(3, 'Unfreedom of the Press ', 9, 36, '2019-05-21', 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg', 'elfarash', 'From six-time #1 New York Times bestselling author, FOX News star, and radio host Mark R. Levin comes a groundbreaking and enlightening book that shows how the great tradition', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(4, 'Witch Hunt', 8, 36, '2019-08-08', 'https://i.harperapps.com/covers/9780062960092/x510.jpg', 'elfarash', 'A witch-hunt or a witch purge is a search for people who have been labelled \"witches\" or a search for evidence of witchcraft, and it often involves a moral panic or mass hysteria', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(5, 'Radicals, Resistance, and Revenge', 9, 36, '2019-09-27', 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg', 'elfarash', 'Picking up where her #1 New York Times bestseller, Liars, Leakers and Liberals, left off, Judge Jeanine Pirro of Fox\'s Justice with Judge Jeanine exposes the latest chapter in the unfolding liberal attack on our most basic values', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(6, 'Liars, Leakers, and Liberals', 3, 36, '2019-07-17', 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg', 'elfarash', 'Liars, Leakers, and Liberals: The Case Against the Anti-Trump Conspiracy is a 2018 book authored by Jeanine Pirro, an American TV personality, former judge, prosecutor, district attorney and Republican politician in New York.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(7, 'Maybe You Should Talk to Someone', 4, 36, '2019-04-02', 'https://images-na.ssl-images-amazon.com/images/I/51OBv43TthL._SX329_BO1,204,203,200_.jpg', 'elfarash', 'sdasd', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(8, 'Trump vs. the Media ', 7, 36, '2017-04-25', 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg', 'elfarash', 'How bad is the problem of media bias? The answer can be summed up in a few words: President Donald J. Trump', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(9, 'Marry Him', 8, 36, '2011-02-01', 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg', 'elfarash', 'An eye-opening, funny, painful, and always truthful in-depth examination of modern relationships and a wake-up call for single women about getting real about Mr. Right.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(10, 'Stick Figure', 10, 36, '2017-11-17', 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg', 'elfarash', 'Stick Figure is an American reggae and dub band founded in 2006 and based in Northern California', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(11, 'Maybe You Should Talk to Someone v2', 10, 36, '2019-02-02', 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg', 'elfarash', '. So, despite my misgivings about listening to all the therapist-speak, I used a ..... It is the type of book that you read and then immediately hand off to someone ', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(12, 'A Little Bit Country', 10, 36, '2019-05-21', 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg', 'elfarash', 'The boys learn about the politics of war and the consequences of homework.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(243, 'zzzzzzzzzz', 6, 36, '2019-10-12', 'images/IMG_3557.JPG', 'elfarash', 'asdasdadsads', 'books/My Resume.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
