-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-03-26 15:54:52
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nanfang`
--

-- --------------------------------------------------------

--
-- 表的结构 `new_detail`
--

CREATE TABLE `new_detail` (
  `id` int(8) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(20) NOT NULL DEFAULT '南方',
  `content` mediumtext NOT NULL,
  `pic` mediumtext NOT NULL,
  `data` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `new_link`
--

CREATE TABLE `new_link` (
  `id` int(5) NOT NULL,
  `links` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `new_link`
--

INSERT INTO `new_link` (`id`, `links`) VALUES
(1, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6482.html'),
(2, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6481.html'),
(3, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6478.html'),
(4, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6476.html'),
(5, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6475.html'),
(6, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6477.html'),
(7, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6479.html'),
(8, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6480.html'),
(9, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6465.html'),
(10, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6463.html'),
(11, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6420.html'),
(12, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/15/id/6419.html'),
(13, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6427.html'),
(14, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6426.html'),
(15, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6361.html'),
(16, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6362.html'),
(17, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6363.html'),
(18, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6364.html'),
(19, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6365.html'),
(20, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6366.html'),
(21, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6367.html'),
(22, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6339.html'),
(23, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6340.html'),
(24, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/16/id/6325.html'),
(25, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6467.html'),
(26, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6474.html'),
(27, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6454.html'),
(28, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6455.html'),
(29, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6418.html'),
(30, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6417.html'),
(31, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6448.html'),
(32, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6449.html'),
(33, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6451.html'),
(34, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6416.html'),
(35, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6450.html'),
(36, 'http://www.nfu.edu.cn//index.php/home/article/detail/cid/17/id/6434.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_detail`
--
ALTER TABLE `new_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_link`
--
ALTER TABLE `new_link`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `new_detail`
--
ALTER TABLE `new_detail`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `new_link`
--
ALTER TABLE `new_link`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
