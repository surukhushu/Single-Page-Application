-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 04, 2018 at 05:54 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tut`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `A` varchar(5000) NOT NULL,
  `B` varchar(1000) NOT NULL,
  `C` varchar(1000) NOT NULL,
  `D` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=222 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `A`, `B`, `C`, `D`) VALUES
(215, '<!DOCTYPE html>\n<html>\n<body>\n\n<h2>JavaScript String Properties</h2>\n\n<p>The length property returns the length of a string:</p>\n\n<p id="demo"></p>\n\n<script>\nvar txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";\ndocument.getElementById("demo").innerHTML = txt.length;\n</script>\n\n</body>\n</html>\n', '', '', ''),
(216, '<!DOCTYPE html>\n<html>\n<body>\n\n<h2>JavaScript Array Sort</h2>\n\n<p>The sort() method sorts an array alphabetically.</p>\n\n<button onclick="myFunction()">Try it</button>\n\n<p id="demo"></p>\n\n<script>\nvar fruits = ["Banana", "Orange", "Apple", "Mango"];\ndocument.getElementById("demo").innerHTML = fruits;\n\nfunction myFunction() {\n    fruits.sort();\n    document.getElementById("demo").innerHTML = fruits;\n}\n</script>\n\n</body>\n</html>\n', '', '', ''),
(218, '<!DOCTYPE html>\n<html>\n<body>\n\n<h2>JavaScript Array Sort</h2>\n\n<p>Click the button to sort the array in ascending order.</p>\n\n<button onclick="myFunction()">Try it</button>\n\n<p id="demo"></p>\n\n<script>\nvar points = [40, 100, 1, 5, 25, 10];\ndocument.getElementById("demo").innerHTML = points;    \n\nfunction myFunction() {\n    points.sort(function(a, b){return a - b});\n    document.getElementById("demo").innerHTML = points;\n}\n</script>\n\n</body>\n</html>\n', '', '', ''),
(217, '<!DOCTYPE html>\n<html>\n<body>\n\n<h2>JavaScript Array Sort</h2>\n\n<p>Click the button to sort the array in ascending order.</p>\n\n<button onclick="myFunction()">Try it</button>\n\n<p id="demo"></p>\n\n<script>\nvar points = [40, 100, 1, 5, 25, 10];\ndocument.getElementById("demo").innerHTML = points;    \n\nfunction myFunction() {\n    points.sort(function(a, b){return a - b});\n    document.getElementById("demo").innerHTML = points;\n}\n</script>\n\n</body>\n</html>\n', '', '', ''),
(211, '<html>\n<body>\n\n<button onclick="document.getElementById(''demo'').innerHTML=Date()">The time is?</button>\n\n<p id="demo"></p>\n\n</body>\n</html>', '', '', ''),
(219, '<html>\n<head></head>\n<body>\n<p>This is html page</p>\n</body>\n</html>\n', '', '', ''),
(220, '<!DOCTYPE html>\n<html>\n<body>\n\n<h2>JavaScript Array.forEach()</h2>\n\n<p>Calls a function once for each array element.</p>\n\n<p id="demo"></p>\n\n<script>\nvar txt = "";\nvar numbers = [4, 9, 16, 25];\nnumbers.forEach(myFunction);\ndocument.getElementById("demo").innerHTML = txt;\n\nfunction myFunction(item, index) {\n    txt = txt + item + "<br>"; \n}\n</script>\n\n</body>\n</html>\n', '', '', ''),
(221, '<!DOCTYPE html>\n<html>\n<body>\n\n<h2>JavaScript new Date()</h2>\n\n<p id="demo"></p>\n\n<script>\nvar d = new Date();\ndocument.getElementById("demo").innerHTML = d;\n</script>\n\n</body>\n</html>\n', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
