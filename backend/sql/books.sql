-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2019 at 06:39 PM
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
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `description`, `image`) VALUES
(1, 'Mollie Hemingway', 'Mollie Ziegler Hemingway is an American conservative columnist and political commentator. She is a senior editor at the online magazine The Federalist and a contributor for Fox News.', 'https://thefederalist.com/wp-content/uploads/2013/09/MZHphoto-300x300.jpg'),
(2, 'Tara Westover', 'Tara Westover is an American memoirist, essayist and historian. Her memoir Educated debuted at #1 on the New York Times bestseller list and was a finalist for a number of national awards, including the LA Times Book Prize, PEN America\'s Jean Stein Book Aw', 'https://images-na.ssl-images-amazon.com/images/I/B1PNLDB9k9S._SY600_.jpg'),
(3, 'Mark Levin', 'Mark Reed Levin is an American lawyer, author, and radio personality. He is the host of syndicated radio show The Mark Levin Show, as well as Life, Liberty & Levin on Fox News. Levin worked in the administration of President Ronald Reagan and was a chief ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Mark_Levin_by_Gage_Skidmore_2.jpg/220px-Mark_Levin_by_Gage_Skidmore_2.jpg'),
(4, 'gregg jarrett', 'Gregory Walter \"Gregg\" Jarrett is an American news commentator, author, and attorney. He joined the Fox News Channel in November 2002, after working over ten years for local NBC and ABC TV stations, as well as national networks Court TV and MSNBC', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg'),
(5, 'Jeanine Pirro', 'Jeanine Ferris Pirro is an American television host, author, and a former judge, prosecutor, and politician from New York. Pirro is the host of Fox News Channel\'s Justice with Judge Jeanine. She was a frequent contributor to NBC News', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg'),
(6, 'Lori Gottlieb', 'Lori Gottlieb is an American writer and psychotherapist, who writes the weekly Dear Therapist advice column for The Atlantic', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg'),
(7, 'Debbie Macomber', 'Debbie Macomber is an American author of romance novels and contemporary women\'s fiction. Six of her novels have become made-for-TV movies and her Cedar Cove series of novel was adapted into the television series of the same name.', 'https://images-na.ssl-images-amazon.com/images/I/51XqOhOpxlL._US230_.jpg');

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
(1, 'Educated: A Memoir', 8, 2, '2019-02-10', 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg', 'Tara Westover', 'For readers of The Glass Castle and Wild, a stunning new memoir about family, loss and the struggle for a better future#1 International BestsellerTara', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(2, 'Justice on Trial', 9, 1, '2019-03-11', 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg', 'Mollie Hemingway', '#1 NATIONAL BESTSELLER! Justice Anthony Kennedy slipped out of the Supreme Court building on June 27, 2018', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(3, 'Unfreedom of the Press ', 9, 3, '2019-05-21', 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg', 'Mark Levin\r\n', 'From six-time #1 New York Times bestselling author, FOX News star, and radio host Mark R. Levin comes a groundbreaking and enlightening book that shows how the great tradition', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(4, 'Witch Hunt', 8, 4, '2019-08-08', 'https://i.harperapps.com/covers/9780062960092/x510.jpg', 'gregg jarrett', 'A witch-hunt or a witch purge is a search for people who have been labelled \"witches\" or a search for evidence of witchcraft, and it often involves a moral panic or mass hysteria', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(5, 'Radicals, Resistance, and Revenge', 9, 5, '2019-09-27', 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg', 'Jeanine Pirro', 'Picking up where her #1 New York Times bestseller, Liars, Leakers and Liberals, left off, Judge Jeanine Pirro of Fox\'s Justice with Judge Jeanine exposes the latest chapter in the unfolding liberal attack on our most basic values', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(6, 'Liars, Leakers, and Liberals', 3, 5, '2019-07-17', 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg', 'Jeanine Pirro', 'Liars, Leakers, and Liberals: The Case Against the Anti-Trump Conspiracy is a 2018 book authored by Jeanine Pirro, an American TV personality, former judge, prosecutor, district attorney and Republican politician in New York.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(7, 'Maybe You Should Talk to Someone', 4, 6, '2019-04-02', 'https://images-na.ssl-images-amazon.com/images/I/51OBv43TthL._SX329_BO1,204,203,200_.jpg', 'Lori Gottlieb', 'sdasd', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(8, 'Trump vs. the Media ', 7, 1, '2017-04-25', 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg', 'Mollie Hemingway', 'How bad is the problem of media bias? The answer can be summed up in a few words: President Donald J. Trump', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(9, 'Marry Him', 8, 6, '2011-02-01', 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg', 'Lori Gottlieb', 'An eye-opening, funny, painful, and always truthful in-depth examination of modern relationships and a wake-up call for single women about getting real about Mr. Right.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(10, 'Stick Figure', 10, 6, '2017-11-17', 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg', 'Lori Gottlieb', 'Stick Figure is an American reggae and dub band founded in 2006 and based in Northern California', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(11, 'Maybe You Should Talk to Someone v2', 10, 6, '2019-02-02', 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg', 'Lori Gottlieb', '. So, despite my misgivings about listening to all the therapist-speak, I used a ..... It is the type of book that you read and then immediately hand off to someone ', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf'),
(12, 'A Little Bit Country', 10, 7, '2019-05-21', 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg', 'Debbie Macomber', 'The boys learn about the politics of war and the consequences of homework.', 'https://www.investigatii.md/uploads/resurse/Clean_Code.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `book_gallery`
--

CREATE TABLE `book_gallery` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_gallery`
--

INSERT INTO `book_gallery` (`id`, `book_id`, `image`) VALUES
(1, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(2, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(3, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(4, 1, 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(5, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(6, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(7, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(8, 2, 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg'),
(9, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(10, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(11, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(12, 3, 'https://images-na.ssl-images-amazon.com/images/I/81Scw9HLl5L.jpg'),
(13, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(14, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(15, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(16, 4, 'https://i.harperapps.com/covers/9780062960092/x510.jpg'),
(17, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(18, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(19, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(20, 5, 'https://images-na.ssl-images-amazon.com/images/I/51lXCepytGL._SX329_BO1,204,203,200_.jpg'),
(21, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(22, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(23, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(24, 6, 'https://images-na.ssl-images-amazon.com/images/I/81UDmZOb1wL.jpg'),
(25, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(26, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(27, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(28, 7, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(29, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(30, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(31, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(32, 8, 'https://images-na.ssl-images-amazon.com/images/I/51EfDxAyoJL._SX337_BO1,204,203,200_.jpg'),
(33, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(34, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(35, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(36, 9, 'https://images-na.ssl-images-amazon.com/images/I/41y2kiw0IUL._SX331_BO1,204,203,200_.jpg'),
(40, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(41, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(42, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(43, 10, 'https://images-na.ssl-images-amazon.com/images/I/519S9wbpPIL._AC_SY400_.jpg'),
(44, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(45, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(46, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(47, 11, 'https://images-na.ssl-images-amazon.com/images/I/41pg5NFijeL._SX325_BO1,204,203,200_.jpg'),
(48, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg'),
(49, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg'),
(50, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg'),
(51, 12, 'https://images-na.ssl-images-amazon.com/images/I/51QnrWCM1HL.SX316.SY316.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mob` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `address`, `mob`) VALUES
(53, 'Ahmed', '265 street', 1125458788);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'politics '),
(2, 'science');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `token`) VALUES
(36, 'mohammad', 'elfarash', 'mohammad.elfarash@gmail.com', '123456789', '01151234879', '7d43306fd65fdbd9dc3ad259bcb17724'),
(37, 'ahmed', 'naser', 'ahmed.naser@gmail.com', '123456789', '01151234879', '4d07f01a1c90997e3431baf72c839ff4'),
(38, 'alaa', 'mohammad', 'm.3laa.95@gmail.com', '123456', '01151234879', '944bb541b0c4a953446a001cc5b78b85'),
(39, 'ahmed', 'naser', 'ahmed.elfarash@gmail.com', '123456789', '01151234879', '6ae9c7ce606058249b69e38813ab5fbd'),
(53, 'mohamoud', 'ahmed', 'mhmoudahmed@gmail.com', '123456789', '01224866972', '7ca9129f4b3b812fd681c38ce6b27936'),
(54, 'ahmedd', 'fathy', 'ahmed.fathi74@gmail.com', '123456789', '01143177934', 'ec4089d86e63fa1a549393cad5e129db'),
(95, 'ahmed', 'naser', 'ahmed_naser@gmail.com', '123456789', '01151234879', 'ef789f3bf5b357fde016732a1a71072f'),
(96, 'aa', 'aa', 'dsadssa@hotmail.com', '123456789', '01100600239', 'e51dbac89a92afb599975869278d9c09'),
(97, 'dads', 'asdsaas', 'ddsa@hotmail.com', '1234567', '01100600732', '21f5c8e9b3fc1489717633b60cab5478'),
(98, 'ahmed', 'fathy', 'af7200097@gmail.com', '123456789', '01143177394', '80998b7c9e11530a963302110102e0b6'),
(99, 'ahmed', 'essam', 'ahmedessam@hotmail.com', 'ahmed', '01100600297', 'f256add92510bc11de344f6bab305c36'),
(100, 'ahmeed', 'esssam', 'hhhhsdd@hotmail.com', 'ahmed', '01100200123', '1513f8b9b25e6b8d27c69300b3a8c69a'),
(101, 'ahmedd', 'essamm', 'ahmedessamm@hotmail.com', '123456789', '01100600297', '4f9b3538b6fff727b28513820c7055d3'),
(102, 'mohamoud', 'ahmed', 'mhmoudahmed188@gmail.com', '1234', '01224866972', 'a2cb5855f2947fa01659532aa6148b21'),
(103, 'ahmed', 'naser', 'mohammad.elfaras4h@gmail.com', '12345', '01151234879', '35caf0c4e636efaeb96965d6eeb57e1c'),
(104, 'mohamoud', 'fathy', 'mhmoudahmed1888@gmail.com', 'qwerty', '01224866972', '440a1fe2eb80c36a3c2ff2f97323bcce'),
(105, 'ahmed', 'naser', 'mohammad.elfarassaasdhhhhh@gmail.com', '123456789', '01151234879', '8ccd47ff19f20ff7af9d031fffd02a36');

-- --------------------------------------------------------

--
-- Table structure for table `users_books`
--

CREATE TABLE `users_books` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_gallery`
--
ALTER TABLE `book_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_books`
--
ALTER TABLE `users_books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `book_gallery`
--
ALTER TABLE `book_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `users_books`
--
ALTER TABLE `users_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
