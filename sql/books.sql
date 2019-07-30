-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2019 at 06:26 PM
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
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `description`) VALUES
(1, 'Mollie Hemingway', 'Mollie Ziegler Hemingway is an American conservative columnist and political commentator. She is a senior editor at the online magazine The Federalist and a contributor for Fox News.'),
(2, 'Tara Westover', 'Tara Westover is an American memoirist, essayist and historian. Her memoir Educated debuted at #1 on the New York Times bestseller list and was a finalist for a number of national awards, including the LA Times Book Prize, PEN America\'s Jean Stein Book Aw');

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
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `rate`, `author_id`, `published_at`, `image_path`) VALUES
(1, 'Educated: A Memoir', 8, 2, '2019-02-10', 'https://images-na.ssl-images-amazon.com/images/I/81XR45UdqkL.jpg'),
(2, 'Justice on Trial: The Kavanaugh Confirmation and the Future of the Supreme Court', 9, 1, '2019-03-11', 'https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg');

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
-- Table structure for table `user's books`
--

CREATE TABLE `user's books` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
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
(74, 'mohamoud', 'ahmed', 'mhmoudahmed18@gmail.com', '1123456789', '01224866972', '0b34a16bce0d4b1b5af7730b6c889ca1'),
(75, 'mohamoud', 'ahmed', 'mhmoudahmeweed@gmail.com', '123456789', '01224866972', '6951e6d69171761784310fdd3ca063f0'),
(76, 'mohamoud', 'ahmed', 'mhmoudahmed12@gmail.com', '123456789', '01224866972', '9179d2dd73b777974fefd4a4e09ffb16'),
(77, 'dwqwdq', 'qwdqwqd', 'ahmedfawaz@hotmail.co.uk', 'ahmedessam', '01100200125', '2160860d10b45a13448449bf77e72160'),
(78, 'ahmed', 'essam', 'ahmedessam@hotmail.com', 'ahmed', '01100600297', '81d6a105f5f0059d98f7671a846d5038'),
(79, 'ahmed', 'essam', 'ahmedessamm@hotmi.co', '12345', '01100600297', '33e5f949e208ca3da5144ea52dbf2a50'),
(80, 'ahmed', 'essam', 'ahmedessamm@hotmi.com', '123456', '01100600297', '6aae116ae7e492402572fde7fab40ee0'),
(81, 'ahmed', 'essam', 'ahmedfawazz@hotmail.co.uk', 'ahmed', '01100500123', '1d202bd4c0af678c2ae1e189c20b2edc'),
(82, 'ahmed', 'essam', 'ahmedessam1996@gmail.com', 'ahmedfawaz', '01100600297', '78d42af132feb4850f2b041c69cc37eb'),
(84, 'ahmed', 'fathy', 'mohammad.elfarashwewed@gmail.com', '123456789', '01151234879', '4420a89dd4eb27e62495ed759bc24806'),
(86, 'bbk', 'j bkj', 'akjsa@gmail.com', '123456', '01221548763', '31a39ecfad2ef8d3334c8955285af9b9'),
(87, 'iolnekf', 'ek', 'dsf@gmail.com', '654321', '01221548763', '918441b2ebe32b005a5de8b65a5d8ee7'),
(88, 'kdsjnkj', 'iug', 'jhui@ff.com', 'asdd', '01221548763', '19fd26ad43751ffc824c175a9a611504'),
(89, 'dfg', 'sdcfb', 'asd@dd.com', 'asdf', '01221548763', 'c471a530f8d5cd5e74e7e73d4c54c06b'),
(90, 'ilknlk', 'jb', 'hkn@k.com', '123654', '01221548763', '32192b4054c40db8bc8ad758e71538a1'),
(91, 'oji', 'ijn', 'kjn@we.com', '654321', '01221548763', 'a2e5a6cd03c9e052e81c36a5a5ddd9c8'),
(92, 'bbk', 'j bkj', 'akjsja@gmail.co', 'zxcbnm', '01221548763', 'b93cf0a550c2a9d7dd8bf5e9a2e18c6d'),
(93, 'ahmed', 'naser', 'mohammad.elfaras4h@gmail.com', '12345', '01151234879', '0f697bb9bbf9a25a12373ea9f067ca68'),
(94, 'bbk', 'ek', 'akfjsa@gmail.com', 'zxcvbnm', '01221548763', 'abc44c00973b908a3776945afde74d33'),
(95, 'ahmed', 'naser', 'ahmed_naser@gmail.com', '123456789', '01151234879', 'ef789f3bf5b357fde016732a1a71072f');

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
-- Indexes for table `user's books`
--
ALTER TABLE `user's books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user's books`
--
ALTER TABLE `user's books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
