-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: rerun
-- 生成日期: 2018 年 05 月 05 日 21:19
-- 服务器版本: 5.5.37
-- PHP 版本: 5.3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `poti`
--

-- --------------------------------------------------------

--
-- 表的结构 `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `author_lastname` varchar(20) DEFAULT NULL,
  `author_firstname` varchar(20) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `books`
--

INSERT INTO `books` (`book_id`, `title`, `author_lastname`, `author_firstname`, `category`) VALUES
(1, 'War of the Worlds', 'Wells', 'H.G.', 'SciFi'),
(2, 'The Anubis Gates', 'Powers', 'Tim', 'SciFi'),
(3, 'The Bold Riders', 'Sykes', 'Trevor', 'Business'),
(4, 'Corporate Collapse', 'Clarke', 'Frank', 'Business'),
(5, 'Structures', 'Gordon', 'James Edward', 'Engnrng'),
(6, 'To Engineer is Human', 'Petroski', 'Henry', 'Engnrng'),
(7, 'Rebel Code', 'Moody', 'Glynn', 'Computing'),
(8, 'Just for Fun', 'Torvalds', 'Linus', 'Computing'),
(9, 'Pi in the Sky', 'Barrow', 'John', 'Maths'),
(10, 'e:Story of a number', 'Maor', 'Eli', 'Maths'),
(11, 'Crucial Classics', 'Mcleish', 'Kenneth', 'Music'),
(12, 'Beethoven', 'Autexier', 'Philippe', 'Music');

-- --------------------------------------------------------

--
-- 表的结构 `book_catalog`
--

CREATE TABLE IF NOT EXISTS `book_catalog` (
  `product_id` varchar(6) NOT NULL DEFAULT '',
  `isbn` varchar(14) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `edition` char(2) DEFAULT NULL,
  `author_firstname` varchar(25) DEFAULT NULL,
  `author_lastname` varchar(25) DEFAULT NULL,
  `category` varchar(15) NOT NULL DEFAULT '',
  `keywords` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `book_catalog`
--

INSERT INTO `book_catalog` (`product_id`, `isbn`, `title`, `edition`, `author_firstname`, `author_lastname`, `category`, `keywords`, `price`, `description`) VALUES
('1000', '0735709211', 'MySQL', '1', 'Paul', 'Dubois', 'Computing', 'SQL Database', 80.00, 'In MySQL Paul Dubois provides you with a comprehensive guide to one of the most popular relational database systems. Instead of merely giving you a general overview of MySQL, Paul teaches you how to make the most of its capabilities. Through two sample applications that run throughout the book, he gives you solutions to problems that you are sure to face.This is also a comprehensive reference to column types, operators, functions, SQL syntax, MySQL Programming, C API, Perl DBI, and PHP API.'),
('1001', '0672319144', 'Teach Yourself MySQL in 21 Days', '1', 'Mark', 'Maslakowski', 'Computing', 'SQL Database', 75.00, 'In just 21 Days, you''ll have all the skills you need to get up and running efficiently. With this complete tutorial, you''ll master the basics and then move on to the more advanced features and concepts. You''ll understand the fundamentals and master all the key features of MySQL. You will learn how to effectively use the latest tools and features of MySQL by following practical, real-world examples. The book has expert tips from a leading authority on implementing MySQL in the corporate environment.'),
('1003', '1861005091', 'Professional XML Web Services', '1', 'Patrick', 'Cauldwell', 'Computing', 'XML Web Services Jav', 150.00, 'Web Services are self-describing, modular applications. The Web Services architecture can be thought of as a wrapper for the application code. This wrapper provides standardised means for describing the Web Service and what it does, publishing the registry so it can be easily located, and exposing an interface so that the service can be invoked - all in a machine readable format. What is particualarly compelling about web services is that they can be accessed by any client that understands XML, regardless of the platform, language, or object model. \nThis book provides a snapshot of the current state of these rapidly evolving technologies.'),
('1004', '0072132329', 'HTML Programmer''s Reference', '2', 'Thomas', 'Powell', 'Computing', 'web HTML', 40.00, 'HTML Programmer''s Reference is a valuable quick-reference guide with concise explanations of all HTML elements, attributes, and syntax listed in alphabetical order. You''ll also find examples and definitions of the latest Navigator, Internet Explorer and WebTV tags at your fingertips - plus expert advice on which commands to use and when to use them. This vital memory jogger and "idea book" is perfect for beginning through advanced HTML programmers!'),
('1005', '0937175676', 'Learning the Vi Editor', '', 'Linda', 'Lamb', 'Computing', 'Computing', 50.00, 'For many users, working in the Unix environment means using vi, a full-screen text editor available on most UNIX systems. Even those who know vi often make use of only a small number of its features. This handbook is a complete guide to text editing with vi. Quickly learn the basics of editing, cursor movement, and global search and replacement. Then take advantage of the more subtle, frequently overlooked powers of vi. Extend your editing skills by learning to use ex, a powerful line editor, from within vi. Topics covered include: Basic editing, moving around in a hurry, beyond the basics, greater power with ex, global search and replacement, customising vi and ex, and command shortcuts. There is also a quick reference to vi and ex commands.'),
('1006', '1565925157', 'Web Design in a Nutshell', '', 'Jennifer', 'Niederst', 'Computing', '', 70.00, NULL),
('5000', '0586062327', 'Gods of Riverworld', '', 'Philip Jose', 'Farmer', 'Science Fiction', '', 12.50, 'Philip Jose Farmer''s superb science fiction saga did not, after all end with The Magic Labyrinth. Now, in Gods of Riverworld, this giant classic is renewed in epic style. '),
('5001', '0006476317', 'A Tupolev too far', '', 'Brian', 'Aldiss', 'Science Fiction', '', 11.95, 'Twelve stories assemble a mindscape of places as close as the Oxford garden where an orgy begins and as remote as the Afterworld, calling along the way at Prague, where a cockroach believes he is Kafka, the Aswan Sheraton, a cabbage planet and the heart of our galaxy.'),
('5002', '1857236181', 'The Anubis Gates', '', 'Tim', 'Powers', 'Science Fiction', '', 15.00, 'Ancient Egyptian magic reaches into the London of 1810 as literary scholar Brendan Doyle heads there from the late 20th century via a time-travel device. The centuries collide in a chiaroscuro of stories in this enormous fantastical book.'),
('5004', '0345323874', 'The two faces of tomorrow', '', 'James P.', 'Hogan', 'Science Fiction', '', 12.00, 'Civilisation had grown so complex that only a world-wide computer network could control it. But the computer was only logical-it lacked common sense, and its all-too-logical decisions were beginning to cause too many near fatal accidents.\r\n\r\nAnother thriller from James P. Hogan'),
('5005', '185798837X', 'Martian Time-Slip', '', 'Phillip K.', 'Dick', 'Science Fiction', '', 16.95, 'Mars. A desolate place, forgotten by Earth. Isolated homesteaders huddle along the lines of the great canals, in thrall to Arnie Kott and his plumbing union, which controls the vital water supply.\r\nPhilip K. Dick was one of the foremost Science Fiction writers of the 20th Century. This is another one of the great works by Dick.'),
('5003', '0330243322', 'The War of the Worlds', '', 'H.G.', 'Wells', 'Science Fiction', '', 10.00, 'H.G. Wells classic novel of the invasion of planet Earth by warrior squadrons of an alien world. An undisputed masterpiece of Science Fiction.'),
('10000', '0521585236', 'Corporate Collapse', '', 'Frank', 'Clarke', 'Business Histor', 'Business Accounting', 29.95, 'When financial statements paint a rosy picture of a company one day and the same company announces massive losses the next, it can be assumed that fortunes haven''t actually changed overnight. This provocative booktells why accounting has failed to deliver the truth about a company''s state of affairs or to give warning of its drift towards failure.\r\nWritten by Frank Clarke and two other academics this book provides a series of case studies in corporate failures from the 1960''s to the late 1980''s.'),
('10001', '0868246646', 'Westpac: The Bank that broke the bank', '', 'Edna', 'Carew', 'Business Histor', 'Business', 29.95, 'Thursday, 1 October 1992. Ten years to the day since Australia''s oldest bank, the Bank of NSW, was reborn as Westpac Banking Corporation, a bank bullishly ready to take on the world. But the heady optimism of the eighties had given way to a nineties recession., and tyhe bank had been battling to control the damage.\r\nWestpac: The bank that broke the Bank is a story of corporate ambition and high finance , of big property deals and some bad loans. '),
('10003', '1863253386', 'Rich Kids', '', 'Paul', 'Barry', 'Business', '', 45.00, 'Rich Kids is the inside story of One.Tel''s meteoric rise and fall, told by award winning journalist Paul Barry. It is a tale of chaos, incompetence, greed and deceit; of an era when huge fortunes were made in the crazy dot-com boom; and of James Packer''s and Lachlan Murdoch''s business brilliance... or lack of it.'),
('10500', '0670040258', 'Thoughtlines', '', 'Bob', 'Carr', 'Politics', '', 35.00, 'It is usual for politicians to conceal their beliefs, but Bob Carr says what he thinks with clarity, passion, elegance, wit and commanding logic.\r\nOn literature, nature, art and public affairs, on Margaret Thatcher, Bill Clinton, the bush, the beach, the Olympic games, the meaning of history and many other topics, he writes from the unique perspective of a head of government who must wrestle daily with forces that shape and alter human lives.'),
('10501', '1864367563', 'Australian Prime Ministers', '', 'Michelle', 'Grattan', 'Politics', '', 29.95, 'In this lively and authoritative book, part profile, part political analysis, 21 historians, biographers and political analysts discuss the men who have reached australia''s highest public office and the forces that have shaped them. In doing so, Australian Prime Ministers obliquely considers the nature of australian democratic and political power.\r\n'),
('10502', '0091836654', 'Goodbye Jerusalem', '', 'Bob', 'Ellis', 'Politics', '', 25.00, 'For over three decades Bob Ellis has trodden the fringes of the corridors of power. Here he gives his personal insight into the tribe that is the Australian Labor Party: The personalities, the quirks, the fabled anecdotes and the grand ideals. Goodbye Jerusalem is a reflection on the nature of Labor politics in Australia, its flaws, its heroes, its victories and its bitter defeats.'),
('20000', '0747558191', 'Harry Potter and the Philosopher''s Stone', '', 'J.K.', 'Rowling', 'Children', '', 15.00, 'The first in the Harry Potter series, this book introduces us to Harry, his nearest relatives - the repulsive Dursley''s, his closest friends - Ron & Hermione, and the Hogwarts School of Witchcraft and Wizardry, Hagrid, Professor Dumbledore and many other characters in the series.\r\n'),
('20001', '0747546290', 'Harry Potter and the Prisoner of Azkaban', '', 'J.K.', 'Rowling', 'Children', '', 15.00, 'Harry Potter, along with his best friends, Ron and Hermione, is about to start his third year at Hogwarts School of Witchcraft and Wizardry. Harry cant wait to get back to school after the summer holidays.  (Who wouldn''t if they lived with the horrible Dursleys?) But when Harry gets to Hogwarts the atmosphere is tense. There''s an escaped mass murderer on the loose, and the sinister prison guards of Azkaban have been called in to guard the school...\r\nA fantastic new story featuring Harry and his friends from the spellbinding J.K. Rowling.\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `films`
--

CREATE TABLE IF NOT EXISTS `films` (
  `film_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `director` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `films`
--

INSERT INTO `films` (`film_id`, `title`, `year`, `director`) VALUES
(1, 'The 39 Steps', 1935, 'Alfred Hitchcock'),
(2, 'Stagecoach', 1939, 'John Ford'),
(3, 'Metropolis', 1927, 'Fritz Lang'),
(4, 'M', 1931, 'Fritz Lang'),
(5, 'A Night at the Opera', 1935, 'Sam Wood'),
(6, 'A Day at the Races', 1937, 'Sam Wood'),
(7, 'The Rock', 1996, 'Michael Bray'),
(8, 'Babel', 2005, 'Alejandro Inarritu'),
(9, 'On Golden Pond', 1981, 'Mark Rydell'),
(10, 'Rocky', 1976, 'John G. Avildsen'),
(11, 'A Good Year', 2006, 'Ridley Scott'),
(12, 'Goldfinger', 1964, 'Guy Hamilton'),
(13, 'Moulin Rouge', 2001, 'Baz Luhrmann'),
(14, 'Batman & Robin', 1997, 'Joel Schumaker'),
(15, 'Roman Holiday', 1953, 'William Wyler'),
(16, 'Edward Scissorhands', 1990, 'Tim Burton'),
(17, 'Ned Kelly', 2003, 'Gregor Jordan'),
(18, 'Double Indemnity', 1944, 'Billy Wilder'),
(19, 'Bridge on the River Kwai', 1957, 'David Lean'),
(20, 'The Seven Samurai', 1954, 'Akira Kurosawa');

-- --------------------------------------------------------

--
-- 表的结构 `flights`
--

CREATE TABLE IF NOT EXISTS `flights` (
  `route_no` int(5) NOT NULL AUTO_INCREMENT,
  `from_city` varchar(20) DEFAULT NULL,
  `to_city` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`route_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `flights`
--

INSERT INTO `flights` (`route_no`, `from_city`, `to_city`, `price`) VALUES
(1, 'Sydney', 'Melbourne', 180.00),
(2, 'Sydney', 'Brisbane', 170.00),
(3, 'Sydney', 'Canberra', 120.00),
(4, 'Canberra', 'Sydney', 120.00),
(5, 'Sydney', 'Newcastle', 90.00),
(6, 'Newcastle', 'Sydney', 90.00),
(7, 'Sydney', 'Broken Hill', 130.00),
(8, 'Broken Hill', 'Sydney', 130.00),
(9, 'Melbourne', 'Sydney', 180.00),
(10, 'Melbourne', 'Canberra', 140.00),
(11, 'Canberra', 'Melbourne', 140.00),
(12, 'Melbourne', 'Adelaide', 175.00),
(13, 'Melbourne', 'Hobart', 130.00),
(14, 'Melbourne', 'Bendigo', 70.00),
(16, 'Bendigo', 'Melbourne', 70.00),
(17, 'Melbourne', 'Launceston', 100.00),
(18, 'Adelaide', 'Melbourne', 175.00),
(19, 'Adelaide', 'Broken Hill', 100.00),
(20, 'Broken Hill', 'Adelaide', 100.00),
(21, 'Adelaide', 'Perth', 220.00),
(22, 'Adelaide', 'Darwin', 230.00),
(23, 'Darwin', 'Adelaide', 230.00),
(24, 'Darwin', 'Alice Springs', 120.00),
(25, 'Alice Springs', 'Darwin', 120.00),
(26, 'Perth', 'Adelaide', 220.00),
(27, 'Perth', 'Albany', 100.00),
(28, 'Perth', 'Kalgoorlie', 80.00),
(29, 'Perth', 'Broome', 90.00),
(30, 'Albany', 'Perth', 100.00),
(31, 'Kalgoorlie', 'Perth', 80.00),
(32, 'Broome', 'Perth', 90.00),
(33, 'Launceston', 'Melbourne', 100.00),
(34, 'Launceston', 'Hobart', 80.00),
(35, 'Hobart', 'Melbourne', 130.00),
(36, 'Hobart', 'Launceston', 80.00),
(37, 'Brisbane', 'Sydney', 170.00),
(38, 'Brisbane', 'Mt Isa', 170.00),
(39, 'Brisbane', 'Rockhampton', 180.00),
(40, 'Brisbane', 'Cairns', 230.00),
(41, 'Brisbane', 'Darwin', 240.00),
(42, 'Mt Isa', 'Brisbane', 170.00),
(43, 'Rockhampton', 'Brisbane', 180.00),
(44, 'Cairns', 'Brisbane', 230.00),
(45, 'Darwin', 'Brisbane', 240.00),
(46, 'Mt Isa', 'Darwin', 120.00),
(47, 'Darwin', 'Mt Isa', 120.00),
(48, 'Adelaide', 'Pt Augusta', 50.00),
(49, 'Pt Augusta', 'Adelaide', 50.00);

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `unit_price` float(8,2) DEFAULT NULL,
  `unit_quantity` varchar(15) DEFAULT NULL,
  `in_stock` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `unit_price`, `unit_quantity`, `in_stock`) VALUES
(1000, 'Fish Fingers', 2.55, '500 gram', 1500),
(1001, 'Fish Fingers', 5.00, '1000 gram', 750),
(1002, 'Hamburger Patties', 2.35, 'Pack 10', 1200),
(1003, 'Shelled Prawns', 6.90, '250 gram', 300),
(1004, 'Tub Ice Cream', 1.80, 'I Litre', 800),
(1005, 'Tub Ice Cream', 3.40, '2 Litre', 1200),
(2000, 'Panadol', 3.00, 'Pack 24', 2000),
(2001, 'Panadol', 5.50, 'Bottle 50', 1000),
(2002, 'Bath Soap', 2.60, 'Pack 6', 500),
(2003, 'Garbage Bags Small', 1.50, 'Pack 10', 500),
(2004, 'Garbage Bags Large', 5.00, 'Pack 50', 300),
(2005, 'Washing Powder', 4.00, '1000 gram', 800),
(3000, 'Cheddar Cheese', 8.00, '500 gram', 1000),
(3001, 'Cheddar Cheese', 15.00, '1000 gram', 1000),
(3002, 'T Bone Steak', 7.00, '1000 gram', 200),
(3003, 'Navel Oranges', 3.99, 'Bag 20', 200),
(3004, 'Bananas', 1.49, 'Kilo', 400),
(3005, 'Peaches', 2.99, 'Kilo', 500),
(3006, 'Grapes', 3.50, 'Kilo', 200),
(3007, 'Apples', 1.99, 'Kilo', 500),
(4000, 'Earl Grey Tea Bags', 2.49, 'Pack 25', 1200),
(4001, 'Earl Grey Tea Bags', 7.25, 'Pack 100', 1200),
(4002, 'Earl Grey Tea Bags', 13.00, 'Pack 200', 800),
(4003, 'Instant Coffee', 2.89, '200 gram', 500),
(4004, 'Instant Coffee', 5.10, '500 gram', 500),
(4005, 'Chocolate Bar', 2.50, '500 gram', 300),
(5000, 'Dry Dog Food', 5.95, '5 kg Pack', 400),
(5001, 'Dry Dog Food', 1.95, '1 kg Pack', 400),
(5002, 'Bird Food', 3.99, '500g packet', 200),
(5003, 'Cat Food', 2.00, '500g tin', 200),
(5004, 'Fish Food', 3.00, '500g packet', 200),
(2006, 'Laundry Bleach', 3.55, '2 Litre Bottle', 500);

-- --------------------------------------------------------

--
-- 表的结构 `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `route_no` int(5) NOT NULL AUTO_INCREMENT,
  `from_city` varchar(20) DEFAULT NULL,
  `to_city` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`route_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- 转存表中的数据 `routes`
--

INSERT INTO `routes` (`route_no`, `from_city`, `to_city`, `price`) VALUES
(1, 'London', 'Paris', 200.00),
(2, 'London', 'Rome', 300.00),
(3, 'London', 'Moscow', 400.00),
(4, 'London', 'New York', 600.00),
(5, 'Paris', 'London', 200.00),
(6, 'Paris', 'Rome', 200.00),
(7, 'Paris', 'Moscow', 350.00),
(8, 'Paris', 'Cairo', 500.00),
(9, 'Rome', 'Paris', 200.00),
(10, 'Moscow', 'Paris', 350.00),
(11, 'Cairo', 'Paris', 500.00),
(12, 'Rome', 'London', 300.00),
(13, 'Moscow', 'London', 400.00),
(14, 'Moscow', 'Beijing', 900.00),
(15, 'Moscow', 'New Delhi', 920.00),
(16, 'Moscow', 'Cairo', 600.00),
(17, 'Beijing', 'Moscow', 900.00),
(18, 'New Delhi', 'Moscow', 920.00),
(19, 'Cairo', 'Moscow', 600.00),
(20, 'Cairo', 'Nairobi', 570.00),
(21, 'Cairo', 'Johannesburg', 770.00),
(22, 'Nairobi', 'Cairo', 570.00),
(23, 'Johannesburg', 'Cairo', 770.00),
(24, 'Johannesburg', 'New Delhi', 720.00),
(25, 'Johannesburg', 'Perth', 790.00),
(26, 'Johannesburg', 'Rio De Janeiro', 770.00),
(27, 'Rio De Janeiro', 'Lima', 300.00),
(28, 'Rio De Janeiro', 'Santiago', 340.00),
(29, 'Rio De Janeiro', 'Johannesburg', 770.00),
(30, 'Lima', 'Rio De Janeiro', 300.00),
(31, 'Santiago', 'Rio De Janeiro', 340.00),
(32, 'Lima', 'Sydney', 1030.00),
(33, 'Sydney', 'Lima', 1030.00),
(34, 'Sydney', 'Auckland', 280.00),
(35, 'Sydney', 'Melbourne', 200.00),
(36, 'Sydney', 'Perth', 340.00),
(37, 'Sydney', 'Jakarta', 520.00),
(38, 'Sydney', 'Honolulu', 620.00),
(39, 'Honolulu', 'Sydney', 620.00),
(40, 'Auckland', 'Sydney', 280.00),
(41, 'Melbourne', 'Sydney', 200.00),
(42, 'Melbourne', 'Perth', 250.00),
(43, 'Perth', 'Melbourne', 250.00),
(44, 'Perth', 'Sydney', 340.00),
(45, 'Jakarta', 'Sydney', 520.00),
(46, 'Auckland', 'Lima', 970.00),
(47, 'Lima', 'Auckland', 970.00),
(48, 'New York', 'London', 600.00),
(49, 'New York', 'Washington', 200.00),
(50, 'New York', 'Chicago', 230.00),
(51, 'New York', 'Los Angeles', 400.00),
(52, 'New York', 'San Francisco', 390.00),
(53, 'Washington', 'New York', 200.00),
(54, 'Chicago', 'New York', 230.00),
(55, 'Los Angeles', 'New York', 400.00),
(56, 'San Francisco', 'New York', 390.00),
(57, 'Los Angeles', 'Honolulu', 350.00),
(58, 'Honolulu', 'Los Angeles', 350.00),
(59, 'Beijing', 'Tokyo', 280.00),
(60, 'Beijing', 'Manila', 340.00),
(61, 'Beijing', 'Hong Kong', 460.00),
(62, 'Beijing', 'Jakarta', 500.00),
(63, 'Tokyo', 'Beijing', 280.00),
(64, 'Manila', 'Beijing', 340.00),
(65, 'Hong Kong', 'Beijing', 460.00),
(66, 'Jakarta', 'Beijing', 500.00),
(67, 'Beijing', 'New Delhi', 430.00),
(68, 'New Delhi', 'Beijing', 430.00),
(69, 'New Delhi', 'Johannesburg', 720.00),
(70, 'New Delhi', 'Jakarta', 400.00),
(71, 'Jakarta', 'New Delhi', 400.00);

-- --------------------------------------------------------

--
-- 表的结构 `sudoku`
--

CREATE TABLE IF NOT EXISTS `sudoku` (
  `game_no` mediumint(5) NOT NULL AUTO_INCREMENT,
  `rating` varchar(14) DEFAULT NULL,
  `row1` varchar(20) DEFAULT NULL,
  `row2` varchar(20) DEFAULT NULL,
  `row3` varchar(20) DEFAULT NULL,
  `row4` varchar(20) DEFAULT NULL,
  `row5` varchar(20) DEFAULT NULL,
  `row6` varchar(20) DEFAULT NULL,
  `row7` varchar(20) DEFAULT NULL,
  `row8` varchar(20) DEFAULT NULL,
  `row9` varchar(20) DEFAULT NULL,
  `game_row1` varchar(20) DEFAULT NULL,
  `game_row2` varchar(20) DEFAULT NULL,
  `game_row3` varchar(20) DEFAULT NULL,
  `game_row4` varchar(20) DEFAULT NULL,
  `game_row5` varchar(20) DEFAULT NULL,
  `game_row6` varchar(20) DEFAULT NULL,
  `game_row7` varchar(20) DEFAULT NULL,
  `game_row8` varchar(20) DEFAULT NULL,
  `game_row9` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`game_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `sudoku`
--

INSERT INTO `sudoku` (`game_no`, `rating`, `row1`, `row2`, `row3`, `row4`, `row5`, `row6`, `row7`, `row8`, `row9`, `game_row1`, `game_row2`, `game_row3`, `game_row4`, `game_row5`, `game_row6`, `game_row7`, `game_row8`, `game_row9`) VALUES
(1, 'medium', '5,1,8,3,6,7,4,2,9', '9,4,7,5,2,1,6,3,8', '3,6,2,8,9,4,7,5,1', '8,3,4,2,1,9,5,7,6', '6,7,5,4,8,3,9,1,2', '2,9,1,6,7,5,3,8,4', '4,5,6,1,3,2,8,9,7', '7,2,3,9,4,8,1,6,5', '1,8,9,7,5,6,2,4,3', '0,1,8,3,0,0,0,0,9', '0,0,0,5,0,1,0,0,8', '3,0,0,0,0,0,7,0,1', '0,3,0,2,0,9,0,0,0', '0,7,0,4,0,0,0,1,0', '0,0,0,6,0,5,0,8,0', '4,0,6,0,0,0,0,0,7', '7,0,0,9,0,4,0,0,5', '1,0,0,0,0,0,2,4,0'),
(2, 'medium', '5,9,6,8,1,4,3,2,7', '7,1,4,5,2,3,8,6,9', '2,8,3,7,6,9,5,1,4', '9,7,5,3,8,6,2,4,1', '3,6,1,2,4,5,9,7,8', '4,2,8,9,7,1,6,5,3', '8,5,2,4,9,7,1,3,6', '6,3,7,1,5,8,4,9,2', '1,4,9,6,3,2,7,8,5', '5,0,6,0,1,0,3,0,7', '0,0,0,0,0,0,0,0,0', '0,0,3,0,0,9,5,0,0', '0,0,0,0,0,0,0,4,0', '3,0,0,2,0,5,0,0,8', '0,2,0,0,0,0,0,0,0', '0,0,2,4,9,7,1,0,0', '0,0,0,0,0,0,0,0,0', '1,0,9,0,3,0,7,0,5'),
(3, 'medium', '9,8,6,4,2,5,7,1,3', '3,7,5,6,8,1,4,2,9', '2,1,4,7,3,9,8,6,5', '4,6,1,8,7,3,5,9,2', '5,2,7,9,1,6,3,8,4', '8,9,3,2,5,4,1,7,6', '1,3,8,5,9,2,6,4,7', '6,5,2,1,4,7,9,3,8', '7,4,9,3,6,8,2,5,1', '0,8,0,0,0,0,0,1,3', '0,0,5,6,0,1,0,2,0', '0,0,4,0,3,0,8,0,0', '0,0,1,8,0,3,5,0,0', '0,0,0,0,0,0,0,0,0', '0,0,3,2,0,4,1,0,0', '0,0,8,0,9,0,6,0,0', '0,5,0,1,0,7,9,0,0', '7,4,0,0,0,0,0,5,0'),
(4, 'easy', '5,2,3,8,1,9,6,7,4', '6,1,7,3,4,2,8,5,9', '9,8,4,5,6,7,3,1,2', '3,5,9,2,8,4,1,6,7', '2,6,1,7,5,3,4,9,8', '4,7,8,6,9,1,5,2,3', '8,3,6,9,7,5,2,4,1', '7,4,5,1,2,8,9,3,6', '1,9,2,4,3,6,7,8,5', '0,0,3,0,0,9,6,0,0', '0,1,0,3,0,2,0,5,0', '9,0,4,0,6,0,3,0,2', '3,5,0,0,8,0,0,6,0', '0,0,1,7,0,3,4,0,0', '0,7,0,0,9,0,0,2,3', '8,0,6,0,7,0,2,0,1', '0,4,0,1,0,8,0,3,0', '0,0,2,4,0,0,7,0,0'),
(5, 'easy', '4,6,8,2,9,3,1,7,5', '7,9,5,4,8,1,6,3,2', '2,1,3,5,6,7,8,4,9', '6,8,7,1,5,2,3,9,4', '5,4,1,9,3,8,7,2,6', '3,2,9,6,7,4,5,1,8', '8,3,6,7,4,9,2,5,1', '1,7,4,8,2,5,9,6,3', '9,5,2,3,1,6,4,8,7', '4,6,0,0,9,0,0,7,5', '7,0,0,4,0,1,0,0,2', '0,0,3,0,0,0,8,0,0', '0,8,0,0,5,0,0,9,0', '5,0,0,9,0,8,0,0,6', '0,2,0,0,7,0,0,1,0', '0,0,6,0,0,0,2,0,0', '1,0,0,8,0,5,0,0,3', '9,5,0,0,1,0,0,8,7'),
(6, 'easy', '8,1,4,9,5,7,6,3,2', '2,9,3,4,1,6,7,8,5', '6,5,7,3,2,8,1,4,9', '4,2,9,6,3,1,5,7,8', '5,8,1,7,9,2,3,6,4', '7,3,6,8,4,5,2,9,1', '1,6,8,2,7,4,9,5,3', '3,7,2,5,8,9,4,1,6', '9,4,5,1,6,3,8,2,7', '0,1,0,9,0,7,0,3,0', '2,0,3,0,0,0,7,0,5', '0,5,0,0,2,0,0,4,0', '4,0,0,6,0,1,0,0,8', '0,0,1,0,0,0,3,0,0', '7,0,0,8,0,5,0,0,1', '0,6,0,0,7,0,0,5,0', '3,0,2,0,0,0,4,0,6', '0,4,0,1,0,3,0,2,0'),
(7, 'hard', '1,3,7,9,6,2,4,5,8', '2,8,6,5,4,7,1,9,3', '9,4,5,3,8,1,7,6,2', '8,2,4,1,7,5,9,3,6', '3,6,1,8,9,4,2,7,5', '7,5,9,2,3,6,8,4,1', '4,1,2,6,5,9,3,8,7', '5,7,8,4,2,3,6,1,9', '6,9,3,7,1,8,5,2,4', '0,0,7,9,0,0,4,0,0', '2,8,0,0,0,0,1,0,0', '0,0,0,0,8,1,0,0,0', '0,0,4,1,0,0,0,3,0', '0,6,0,0,0,0,0,7,0', '0,5,0,0,0,6,8,0,0', '0,0,0,6,5,0,0,0,0', '0,0,8,0,0,0,0,1,9', '0,0,3,0,0,8,5,0,0'),
(8, 'hard', '6,5,9,2,1,4,3,8,7', '2,8,7,9,5,3,6,4,1', '4,1,3,6,7,8,5,2,9', '9,7,5,4,3,6,2,1,8', '8,4,2,1,9,5,7,6,3', '3,6,1,8,2,7,9,5,4', '1,2,4,3,6,9,8,7,5', '7,9,8,5,4,2,1,3,6', '5,3,6,7,8,1,4,9,2', '6,0,0,0,1,0,0,0,0', '2,0,0,0,0,3,0,4,0', '0,1,0,0,0,0,5,0,0', '0,0,5,4,0,0,0,0,0', '8,0,0,0,0,0,0,0,3', '0,0,0,0,0,7,9,0,0', '0,0,4,0,0,0,0,7,0', '0,9,0,5,0,0,0,0,6', '0,0,0,0,8,0,0,0,2'),
(9, 'hard', '5,8,1,3,7,9,4,6,2', '2,7,6,5,4,1,9,3,8', '9,4,3,6,2,8,7,1,5', '6,1,7,8,5,2,3,9,4', '8,5,4,9,3,7,6,2,1', '3,2,9,1,6,4,8,5,7', '4,6,8,2,1,3,5,7,9', '1,9,5,7,8,6,2,4,3', '7,3,2,4,9,5,1,8,6', '0,0,1,0,0,9,0,0,2', '0,0,0,5,4,0,0,3,0', '9,0,0,0,0,0,7,0,0', '0,1,0,0,0,2,0,0,4', '0,5,0,0,0,0,0,2,0', '3,0,0,1,0,0,0,5,0', '0,0,8,0,0,0,0,0,9', '0,9,0,0,8,6,0,0,0', '7,0,0,4,0,0,1,0,0');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `userpass` char(40) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`user_id`, `username`, `userpass`, `first_name`, `last_name`, `email`) VALUES
(1, 'homer', '08ee6f23dfd10dfa64796217955d7f51d51dae62', 'Homer', 'Simpson', 'homer@simpsons.com'),
(2, 'bart', '2f9044d21f683f01804080497e506ee0c3b9695e', 'Bart', 'Simpson', 'bart@simpsons.com'),
(3, 'mrburns', '325632abab2196d49e01f904129efa36843426b1', 'Godfrey', 'Burns', 'mr_burns@gmail.com'),
(4, 'moe', '73d1fa96257c5dc6be0dc532557c63fb69c8d5f2', 'Moe', 'Szyslak', 'moe@duffbeer.com'),
(5, 'edna', 'a6a2c0a8253b36f2973211725bf68661fb84c788', 'Edna', 'Krabappel', 'edna_k@hotmail.com'),
(6, 'otto', '925b5f18b09bbdd75165296e0eabc2fbdf90aabe', 'Otto', 'Mann', 'otto_dude@hotmail.com'),
(7, 'lisa', 'd915f4e970e53654202c1cf5c62e60a7280a8219', 'Lisa', 'Simpson', 'lisa@simpsons.com'),
(8, 'marge', '8f4d79dbad59e07309d8adcb6af0497fba385c8a', 'Marge', 'Simpson', 'marge@simpsons.com'),
(9, 'lurleen', '8f4d79dbad59e07309d8adcb6af0497fba385c8a', 'Lurleen', 'Lumpkin', 'lurleen@countrymusic.com'),
(10, 'krusty', 'c11a6a31261caff5d07f83b7fcb37d7bc5ec5ea9', 'Herschel', 'Krustofsky', 'krusty@comedians.org');
