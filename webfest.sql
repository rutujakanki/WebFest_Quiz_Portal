-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2019 at 04:25 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webfest`
--

-- --------------------------------------------------------

--
-- Table structure for table `aptitude`
--

CREATE TABLE `aptitude` (
  `id` int(1) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aptitude`
--

INSERT INTO `aptitude` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?\r\n', '180 metres', '	324 metres', '150 metres', '120 metres', 'C'),
(2, 'Y has to score 40% marks to pass. He gets 20 marks and fails by 40 marks. The maximum marks of the exam are?\n', '100', '200', '150', '250\n\n', 'C'),
(3, 'Which of the following two ratios is greater 17:18 and 10:11?', '17:18', '10:11', 'Both are same', 'Can\'t Say', 'A'),
(4, 'Amit covers a distance at a speed of 24 km/hr in 6 min. If he wants to cover the same distance in 8 min, what should be his speed?\n', '18 km/hr', '21 km/hr', '30 km/hr', '15 km/hr\n\n', 'A'),
(5, ' Ram is three times as old as his Sam. 2 years ago he was five times as old as Sam. What is the present age of Ram?', ' 14 years', ' 18 years', ' 12 years', '24  years', 'C'),
(6, ' Find average of natural numbers from 1 to 65', '33.5', '33', '130', '65', 'B'),
(7, ' Find the number of ways the letters of the word ‘RUBBER can be arranged?', '450', '362', '250', '180', 'D'),
(8, 'In how many ways can the letters of the word \'LEADER\' be arranged?', '256', '144', '360', '720', 'C'),
(9, 'Express 25 mps in kmph?', '15 ', '90', '99', '60', 'B'),
(10, 'A car covers a distance of 624 km in 6 ½ hours. Find its speed?', '104 kmph', '140 Kmph', '10.4 kmph', '140 Mph', 'A'),
(11, 'Two cars cover the same distance at the speed of 60 and 64 kmps respectively. Find the distance (im KM)traveled by them if the slower car takes 1 hour more than the faster car.', '860', '906', '740', '960', 'D'),
(12, 'Two trains each 250 m in length are running on the same parallel lines in opposite directions with the speed of 80 kmph and 70 kmph respectively. In what time will they cross each other completely?', '10s ', '11s', '12s', '6s', 'C'),
(13, ' If a train, travelling at a speed of 90 kmph, crosses a pole in 5 sec, then the length of train is?', '140 m', '104 m', '125 m', '152 m', 'C'),
(14, 'How many seconds will a train 100 meters long take to cross a bridge 150 meters long if the speed of the train is 36 kmph?', '18 s', '22 s', '28 s', '25s', 'D'),
(15, ' A train 100 meters long completely crosses a 300 meters long bridge in 45 seconds. What is the speed(In Kmph) of the train is?', '32 ', '36', '40', '48', 'A'),
(16, 'A train leaves Delhi at 9 a.m. at a speed of 30 kmph. Another train leaves at 2 p.m. at a speed of 40 kmph on the same day and in the same direction. How far from Delhi, will the two trains meet?', '300 km', '600 km', '900 km', '1200 km', 'B'),
(17, 'The distance between Delhi and Mathura is 110 kms.\' A \'starts from Delhi with a speed of 20 kmph at 7 a.m. for Mathura and\' B\' starts from Mathura with a speed of 25 kmph at 8 p.m. from Delhi. When will they meet?', '9:00  a.m.', '9:30 a.m', '10:00  a.m.', '10:30 a.m.', 'C'),
(18, 'A train sets off at 2 p.m. at the speed of 70 kmph. Another train starts at 3:30 p.m. in the same direction at the rate of 85 kmph. At what time the trains will meet?', '9:00  a.m.', '9:30 a.m', '10:00  a.m.', '10:30 a.m.', 'D'),
(19, 'Two trains of length 100 m and 200 m are 100 m apart. They start moving towards each other on parallel tracks, at speeds 54 kmph and 72 kmph. After how much time will the trains meet?', '10/7 s', '15/7 s', '20/7s', '25/7s', 'C'),
(20, 'If a man can cover 12 metres in one second, how many kilometres can he cover in 3 hours 45 minutes?', '162', '168', '150', '158', 'A'),
(21, 'The probability that a number selected at random from the first 50 natural numbers is a composite number is -.', '21/25', '17/25', '13/25', '19/25', 'B'),
(22, 'A bag contains 2 red, 3 green and 2 blue balls. Two balls are drawn at random. What is the probability that none of the balls drawn is blue?', '11/21', '5/7', '10/21', '43503', 'C'),
(23, '	\nWhat is the probability of getting a sum 9 from two throws of a dice?', '1/6', '1/8', '1/9', '1/12', 'C'),
(24, 'In a lottery, there are 10 prizes and 25 blanks. A lottery is drawn at random. What is the probability of getting a prize?', '1/10', '2/5', '2/7', '5/7', 'C'),
(25, '	\r\nA bag contains 4 white, 5 red and 6 blue balls. Three balls are drawn at random from the bag. The probability that all of them are red, is', '1/22', '2/91', '3/22', '2/77', 'B'),
(26, ' If six persons sit in a row, then the probability that three particular persons are always together is -.', '1/5', '4/5 ', '1/20', '3/10', 'A'),
(27, ' A bag contains 7 green and 8 white balls. If two balls are drawn simultaneously, the probability that both are of the same colour is -.', '8/15', '3/5', '7/5', '7/15', 'D'),
(28, ' A basket has 5 apples and 4 oranges. Three fruits are picked at random. The probability that at least 2 apples are picked is -.', '9/20', '25/42', '10/23', '41/42', 'B'),
(29, ' A box contains nine bulbs out of which 4 are defective. If four bulbs are chosen at random, find the probability that atleast one bulb is good.', '1/125', '125/126', '1/63', '2/63', 'B'),
(30, 'One card is drawn at random from a pack of 52 cards. What is the probability that the card drawn is a face card (Jack, Queen and King only)?', '3/13', '2/13', '1/26', '1/52', 'A'),
(31, 'Find the roots of the quadratic equation: 2x^2 + 3x - 9 = 0?', '3, -3/2', '3/2, -3', '3/2, 3', '-3/2, -3', 'B'),
(32, ' The roots of the equation 3x2 - 12x + 10 = 0 are?', ' rational and unequal', 'complex', 'rational and equa', 'none', 'A'),
(33, ' If the roots of a quadratic equation are 20 and -7, then find the equation?', 'x^2 + 13x - 140 = 0', ' x^2 - 13x + 140 = 0', 'x^2 + 13x + 140 = 0', 'x^2 - 13x - 140 = 0', 'C'),
(34, 'The sum and the product of the roots of the quadratic equation x2 + 20x + 3 = 0 are?', '10, 3', '-10, 3', '-20, 3', ' -10, -3', 'C'),
(35, 'The sum of the squares of two consecutive positive integers exceeds their product by 91. Find the integers?', '9, 10', '10, 11', '12, 13', '11, 12', 'A'),
(36, ' What sum of money will produce Rs.70 as simple interest in 4 years at 3 1/2 percent?', 'Rs.525', 'Rs.500', 'Rs.550', 'Rs.555', 'B'),
(37, 'At what rate percent on simple interest will Rs.750 amount to Rs.900 in 5 years?', '0.05', '0.04', '0.035', '0.055', 'C'),
(38, ' In what time a sum of money double itself at 3% per annum simple interest?', '29 years', '33 1/3 years', '23 1/3 years', '13 1/3 years', 'B'),
(39, ' If x is the interest on y and y is the interest on z, the rate and time is the same on both the cases. What is the relation between x, y and z?', 'xyz = 1', 'x*x= yz', ' y*y = xz', 'x*z= xy', 'C'),
(40, 'If rupee one produces rupees nine over a period of 40 years, find the rate of simple interest?', '0.2', '0.1', '22 .5%', '0.15', 'C'),
(41, 'The cost of 2 chairs and 3 tables is Rs.1300. The cost of 3 chairs and 2 tables is Rs.1200. The cost of each table is more than that of each chair by?', 'Rs.70', 'Rs.75', 'Rs.50', 'Rs.100', 'D'),
(42, 'The sum of the digits of a two-digit number is 12. The difference of the digits is 6. Find the number?', '97', '39', '75', '48', 'B'),
(43, 'The number obtained by interchanging the two digits of a two-digit number is less than the original number by 45. If the sum of the two digits of the number so obtained is 13, then what is the original number?', '49', '94', '83', '95', 'B'),
(44, 'The cost of 16 pens and 8 pencils is Rs.352 and the cost of 4 pens and 4 pencils is Rs.96. Find the cost of each pen?', 'Rs. 32', 'Rs.80', 'Rs.320', 'Rs 20', 'D'),
(45, ' Three consecutive odd integers are in increasing order such that the sum of the last two integers is 13 more than the first integer. Find the three integers?', '9, 11, 13', '11, 13, 15', '7, 9, 11', '13, 15, 17', 'D'),
(46, 'Find the one which does not belong to that group ?', '36', '49', '81', '100', 'B'),
(47, 'If the sides of a triangle are 26 cm, 24 cm and 10 cm, what is its area?', '120  sqcm', '130  sqcm', '312  sqcm', '315   sqcm', 'A'),
(48, ' Find the area of a parallelogram with base 24 cm and height 16 cm.', '262 sqcm', '384 sqcm', '192 sqcm', '131 sqcm', 'B'),
(49, ' The ratio of the length and the breadth of a rectangle is 4 : 3 and the area of the rectangle is 6912 sq cm. Find the ratio of the breadth and the area of the rectangle?', '1:48', '1:68', '1:84', '1:96', 'D'),
(50, 'The parameter of a square is double the perimeter of a rectangle. The area of the rectangle is 480 sq cm. Find the area of the square.', '200 sq cm', '72 sq cm', '162 sq cm ', 'Can\'t Say', 'D'),
(51, 'A and B complete a work in 6 days. A alone can do it in 10 days. If both together can do the work in how many days?', '3.75 days', '4 days', '5 days', '6 days', 'A'),
(52, ' A and B together can do a piece of work in 8 days. If A alone can do the same work in 12 days, then B alone can do the same work in(days)?', '20', '16', '24', '28', 'C'),
(53, 'A can do a piece of work in 4 days. B can do it in 5 days. With the assistance of C they completed the work in 2 days. Find in how many days can C alone do it(days)?', '10', '20', '5', '4', 'B'),
(54, 'A boat goes 100 km downstream in 10 hours, and 75 km upstream in 15 hours. The speed of the stream is?', '7 km/h', '5 km/h', '3km/h', '2.5 km/h', 'D'),
(55, 'A man can row his boat with the stream at 6 km/h and against the stream in 4 km/h. The man\'s rate is?', '1 kmph', '5 kmph', '8 kmph', '3 kmph', 'A'),
(56, 'A man can swim in still water at 4.5 km/h, but takes twice as long to swim upstream than downstream. The speed of the stream is?', '3', '7.5', '2.25', '1.5', 'D'),
(57, ' Two pipes A and B can separately fill a tank in 2 minutes and 15 minutes respectively. Both the pipes are opened together but 4 minutes after the start the pipe A is turned off. How much time will it take to fill the tank?', '9 min', '10 min', '12 min', '11 min', 'B'),
(58, 'Two taps can separately fill a cistern 10 minutes and 15 minutes respectively and when the waste pipe is open, they can together fill it in 18 minutes. The waste pipe can empty the full cistern in?', '7 min', '9 min', '13 min ', '23 min', 'B'),
(59, 'A, B and C invested Rs.6300, Rs.4200 and Rs.10500 respectively, in a partnership business. Find the share of A in profit of Rs.12100 after a year?', 'Rs.3630', ' Rs.2840', 'Rs.5600', 'Rs.3200', 'A'),
(60, 'Find the one which does not belong to that group ?', '43', '47', '57', '41', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `chemical`
--

CREATE TABLE `chemical` (
  `id` int(1) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemical`
--

INSERT INTO `chemical` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Maximum work that could be secured by expanding the gas over a given pressure range is the __________ work.\r\n', 'isentropic', 'adiabatic', 'none of these', 'isothermal', 'D'),
(2, 'Fundamental principle of refrigeration is based on the __________ law of thermodynamics.', 'zeroth', 'first', 'second', 'third', 'C'),
(3, 'For a spontaneous process, free energy', 'is zero', 'increases', 'decreases whereas the entropy increases', 'and entropy both decrease', 'C'),
(4, 'The temperature at which both liquid and gas phases are identical, is called the __________ point.', 'critical', 'triple', 'freezing', 'boilong', 'A'),
(5, 'The four properties of a system viz. P, V, T, S are related by __________ equation.', 'Gibbs-Duhem', 'Gibbs-Helmholtz', 'Maxwell\'s', 'none of these', 'C'),
(6, 'If the pressure on 100 c.c. of air is halved, then its volume (at the same temperature) would be __________ c.c.', '100', '50', '200', '10', 'C'),
(7, '\nWhich of the following units is not present in both the vapor compression refrigeration system and absorption refrigeration system ?', 'Expansion valve', 'Compressor', 'Condenser', 'Refrigerator', 'B'),
(8, 'In a turbine, the fluid expands almost', 'isothermally', 'isobarically', 'adiabatically', 'none of these', 'C'),
(9, ' The temperature at which the magnetic property of iron disappears (i.e., it becomes nonmagnetic) and its electrical conductivity & specific heat also changes, is called the \'Curie point\', which is __________ °C. ', '768', '908', '1400', '1539', 'A'),
(10, ' For the same heat load and mass flow rate in the tube side of a shell and tube heat exchanger, one may use multipass on the tube side, because it ', 'Decreases the pressure drop', 'Decreases the outlet temperature of cooling medium', 'Increases the overall heat transfer coefficient', 'None of these ', 'C'),
(11, ' The thermal radiation emitted by a body is proportional to Tn, where T is its absolute temperature. The value of \'n\' is exactly 4 for ', 'Black painted bodies only', 'All bodies ', 'Polished bodies only ', 'A black body', 'B'),
(12, ' Heat transfer by __________ may not necessarily require the presence of a medium. ', 'Conduction ', 'Natural convection', 'Forced convection', 'Radiation', 'D'),
(13, ' Evaporator tubes are generally ', ' Horizontal', 'Vertical', 'Inclined', 'Random', 'B'),
(14, ' Which area is used in case of heat flow by conduction through a cylinder? ', ' Logarithmic mean area ', ' Arithmetic mean area', ' Geometric mean area ', ' None of these ', 'A'),
(15, 'Jule/Kg.Kelvin is a', 'SI unit', 'AE unit', 'Neither SI nor AE unit', 'None of the mentioned', 'A'),
(16, 'Mass of a compound per mole is', 'Mole', 'Molecular weight', 'Mole fraction', 'None of the mentioned', 'B'),
(17, '__________ is mass of a particular substance divided by the total mass of all the substances present in the mixture or solution.', 'Molecular weight', 'Weight fraction', 'Atomic weight', 'Mole fraction', 'B'),
(18, 'Specific volume is the inverse of', 'Volume', 'Pressure', 'Density', 'Flow rate', 'C'),
(19, 'A cube of ice is floating on water surface and when it completely melts, the level of water would', 'Increase', 'Decrease', 'Remains unchanged', 'None of the mentioned', 'C'),
(20, 'An object is once immersed in oil and once in water. The loss in weight would be', 'More in water', 'More in oil', 'Equal in both oil and water', 'None of the mentioned', 'B'),
(21, 'Piezometer is used for the pressure measurement of only', 'Solid', 'Liquid', 'Gas', 'None of the mentioned', 'B'),
(22, 'If the open end manometer`s open end is closed and in the blank area there is vacuum. The manometer measures', 'Absolute pressure', 'Gauge pressure', 'Atmospheric pressure', 'Vacuum', 'A'),
(23, 'When vapour is cooled at constant total system volume, the _______ changes.', 'Pressure', 'Volume', 'Temperature', 'None of the mentioned', 'A'),
(24, 'Condensation starts ________ point.', 'Dew point', 'Bubble point', 'Triple point', 'None of the mentioned', 'A'),
(25, 'A cube of ice is floating on water surface and when it completely melts, the level of water would', 'Increase', 'Decrease', 'Remains unchanged', 'None of the mentioned', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `civil`
--

CREATE TABLE `civil` (
  `id` int(35) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `civil`
--

INSERT INTO `civil` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'In a mortar the binding material is\r\n', 'Sand', 'Surkhi', 'Cinder', 'Cement', 'A'),
(2, 'To construct a loan thick partition wall, you will prefer', 'English Bond', 'Flemish Bond', 'Header Bond', 'Strecher Bond', 'D'),
(3, 'The p-orbital is the shape of a ', 'sphere', 'Dumbbell', 'Pear-shaped lobe', 'None of the above', 'B'),
(4, 'Dip of needle at equator is ', '0 degree', '5 degree', '45 degree', '90 degree', 'A'),
(5, 'Viscocity of fluid is measured in', 'Ns/m2', 'N/m2', 'm2/n', 'm/s', 'A'),
(6, 'How many types of pavment surface are there', '4', '5', '6', '2', 'D'),
(7, 'The initial setting time of lime pozzolana is', '30min', '60min', '90min', '120min', 'D'),
(8, 'The minimum reinforcement recommended by IS456-2000 in case of slab ', '0.20%', '0.15%', '0.08%', '2%', 'C'),
(9, 'Which of this word is correct?', 'Allign', 'Align', 'Aligne', 'Alline', 'B'),
(10, 'What is the percentage of iron oxide in white cement?', 'High', 'very high', 'Medium', 'Very low', 'D'),
(11, 'Which grade of pencile is used for drawing arrowheads?', '2H', '2B', '7H', 'H', 'A'),
(12, 'The symbol \"Φ\" represent ', 'Radius', 'Depth', 'Diameter', 'Angle', 'C'),
(13, 'The unit of movement of inertia f body is ___________ .', 'm', 'm2', 'm3', 'm4', 'D'),
(14, 'The operation of levelling across any river is term as - ', 'Profile Levelling', 'Fly levelling', 'Compund levelling', 'Reciprocal levelling', 'D'),
(15, 'Percentage of reinforcement in axially loaded columns shall be resticted to -', '0.8% to 6%', '1.2% to 6%', '0.8% to 4%', '1.2% to 4%', 'A'),
(16, 'In prismatic compass zero is marked in the following direction', 'East', 'West', 'North', 'South', 'D'),
(17, 'The dotted lines represents ___________ .', 'Hidden edges', 'Projection line', 'Center line', 'Hatching line', 'A'),
(18, 'Sand stone is ________.', 'Sedimentary rock', 'Metamorphic Rock', 'Igneous Rock', 'Volcanic Rock', 'A'),
(19, 'After which of the following treatment turbidiy is maximum?', 'Chorination', 'Flocculation Basin', 'Primary Sedimentation', 'Secondary Sedimentation', 'B'),
(20, 'The quantity of sanitary sewage directly depends on_______.', 'Rate of water supply', 'Area', 'Population', 'Precipiation', 'C'),
(21, 'The distance between the forces acting in the couple if?', 'Infinity', 'Zero', 'Finite Distance ', 'A circular Loop', 'C'),
(22, 'Which of the following scale if the largest one?', '1cm = 50m', '1mm = 20m', 's1: 4000', 'R.F = 1/200.000', 'C'),
(23, '_______ gives the general investigation', 'IS', 'GIS', 'IGS', 'BIS', 'C'),
(24, 'The minimum reinforcement for  axialy loaded columns', '4% of c/s area', '1.8% of c/s area', '0.8% of c/s area', '6% of c/s area', 'C'),
(25, 'For eccentricity in ellipse ( e ) which relation is correct?', 'e < 1', 'e = 1', 'e > 1', 'e =  ∞', 'A'),
(26, 'Fluid cannot resist shear stress', 'TRUE', 'FALSE', 'Cannot Say', 'None of the above', 'A'),
(27, 'Aggregate impact value indicates the following property.', 'Durability', 'Toughness', 'Hardness', 'Strength', 'B'),
(28, 'What must be done to wooden sleepers before use - ', 'Seasoning', 'Washing', 'Pointing', 'Hydrating', 'A'),
(29, 'The locus of the instantaneous center of a moving rigid body is ______ .', 'Straight line', 'Involute', 'Centroid', 'Spiral', 'C'),
(30, 'In simply supported beams reinforcing bar provided near the support is intended to resist', 'Bond stress', 'Shear Stress', 'Tensile Stress', 'Compressive Stress', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `computer`
--

CREATE TABLE `computer` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Instructions written by a programmer for a computer use is called?\r\n', 'Software Instructions', 'Software', 'System Software', 'Hardware', 'C'),
(2, 'Reference is like a ____', 'Pointer ', 'Structure', 'Macro', 'Enum', 'A'),
(3, 'Which software must be installed to a new  computer from a manufacter?', 'Device driver', 'OS', 'Application software', 'Utilities', 'B'),
(4, 'A supervisor is a central component of ', 'Software', 'Operating System', 'Device Driver', 'Utilities', 'B'),
(5, 'The software which provides specific services to its end user is called?', 'Application software', 'System software', 'Device driver', 'Microsoft office', 'A'),
(6, 'The three principal components of system software are:', 'OS,Utilities,Device driver', 'OS,hardware,Software', 'Device driver,hardware,software', 'Utilities,OS,printers', 'A'),
(7, 'What is normally used to configure a windows installation?', 'System configuration', 'safe mode', 'Start up', 'Live mode', 'A'),
(8, 'What is the first document needed before installing a software?', 'Software Requirement List', 'Hardware Compatibility List', 'Software Requirements', 'The computer', 'B'),
(9, 'Which of the following type of class allows only one object of it to be created?', 'Virtual class', 'Abstract class', 'Singleton class', 'friend class', 'C'),
(10, 'Which of the following is an example of Server Operating system?', 'Linux', 'Ubuntu', 'windows', 'Mac OS', 'A'),
(11, 'Which of the following is not a type of constructor?', 'Copy constructor', 'Friend constructor', 'Default constructor', 'Parametrised constructor', 'B'),
(12, 'Which operating system\'s source code is visible to user?', 'Linux ', 'Ubuntu', 'windows', 'Both A and B', 'D'),
(13, 'Which of the following concepts means determining at a runtime what method to invoke?', 'Data hiding', 'Dynamic Typing', 'Dynamic binding', 'Dynamic loading', 'C'),
(14, 'Which of the following is correct?', 'A reference is stored on a heap', 'A reference is stored on stack', 'A reference is stored in a queue', 'A reference is stored in a binary tree', 'B'),
(15, 'Which of the following function/type of function cannot be overloaded?', 'Member function', 'Static function', 'virtual function', 'B and C', 'C'),
(16, 'which of the following special is allowed in variable name?', '*', '|', '%', '_', 'D'),
(17, 'Where the default value of parameter have to be specified?', 'Function call', 'Function defination', 'Function prototype', 'B and C', 'C'),
(18, 'Which of the following languages is more suited to a structured program?', 'PL/1', 'FORTRAN', 'BASIC', 'PASCAL', 'D'),
(19, 'Which of the following function/types of function cannot have default parameters?', 'Member function of class', 'main()', 'Member function of structure', 'B and C', 'B'),
(20, 'The brain of any computer system is', 'ALU', 'Memory', 'CPU', 'Control unit', 'C'),
(21, 'Which of the following access specifier is used in a class defination by default?', 'Protected', 'Public', 'Private', 'Friend  ', 'C'),
(22, 'What difference does the 5th generation computer have from other generation computer?', 'Technological advancement', 'scientific code', 'OOP', 'All of the above', 'A'),
(23, 'Constructors are executed when ______', 'an object is created', 'an object is used', 'a class is declared', 'an object goes out of scope', 'A'),
(24, 'The tracks on a disk which can be accessed without repositioning the R/W heads is ', 'Surface', 'Cylinder', 'cluster', 'All of the above', 'B'),
(25, 'How many objects can be created from an abstract class?', '0', '1', '2', 'As many as we want', 'A'),
(26, 'A computer program that converts assembly language to machine language', 'Compiler', 'Interpreter', 'Assembler', 'Comparator', 'C'),
(27, 'A reference is declared using the ___ symbol.', '&&', '&', '||', '!', 'B'),
(28, 'The time required for the fetching and execution of one simple machine instruction is', 'Delay time', 'CPU cycle', 'Real time ', 'Seek time', 'B'),
(29, 'The primary tool used in structured design is a:', 'Structure chart', 'data flow diagram', 'program flowchart', 'module', 'A'),
(30, 'The step by step instruction that solves the problem are called', 'An algorithm', 'A list', 'A plan', 'A sequential strcuture', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `id` int(1) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'The magnitude of induced emf in a coil is directly proportional to the rate of change of flux linkages.This is known as\r\n', 'Fraday\'s second law of electromagnatic induction', 'Coulomb\'s Law', 'Fraday\'s first law of electromagnatic induction\r\n', 'Joules Law\r\n', 'A'),
(2, 'In which of these is reverse recovery time nearly zero?', 'Zener diode', 'Tunnel diode', 'Schottky diode', 'PIN diode', 'C'),
(3, 'A Law that states that the polarity of the induced voltage will oppose the change in magnetic flux causing the induction.', 'Joules\'s Law', 'Farday\'s Law ', 'Coloumb\'s Law', 'Lenz\' Law', 'D'),
(4, 'The amount of photoelectric emission current depends on', 'frequency of incident radiation', 'intensity of incident radiation', 'both frequency and intensity of incident radiation', 'none of the above', 'B'),
(5, 'If you hold the conductor with right hand so that the steched thumb points in the direction of the current, then encirlcling fingers will give the direction of the magnetic lines of force round the conductor.This is known as', 'Left hand cork screw rule', 'Right hand cork screw rule', 'Left hand rule', 'Right hand rule', 'D'),
(6, 'A 4 : 1 multiplexer requires __________ data select line.', '1', '2', '3', '4', 'B'),
(7, 'The magnetic potential in a magnetic circuit can be measured in terms of', 'MMF', 'EMF', 'Farad', 'All the above', 'A'),
(8, 'Double integration of a unit step function would lead to', 'an impulse', 'a parabola', 'a ramp', 'a doublet', 'B'),
(9, 'The lagging effect between flux density of the material and the magnetizing force applied ', 'Permeance', 'Eddy Current', 'Hysteresis', 'Reluctance', 'C'),
(10, 'At very high temperatures the extrinsic semi conductors become intrinsic because', 'drive in diffusion of dopants and carriers', 'band to band transition dominants over impurity ionization', 'impurity ionization dominants over band to band transition', 'band to band transition is balanced by impurity ionization', 'B'),
(11, '_______ is an electromagnet with its core in the form of a close magnetic ring.', 'Solenoid', 'Paraboloid', 'Toroid', 'Cycloid', 'C'),
(12, 'The number of bits in ASCII is', '12', '10', '9', '7', 'D'),
(13, 'voltage V(t) is a Gaussian ergodic random process with a mean of zero and a variance of 4 volt2. If it is measured by a dc meter. The reading will be', '0', '4', '2', '3', 'A'),
(14, '4 bit 2\'s complement representation of a decimal number is 1000. The number is', '8', '0', '-7', '-8', 'D'),
(15, 'If transfer function of a system is H(z) = 6 + z-1 + z-2 then system is', 'minimun phase', 'maximum phase', 'mixed phase', 'none', 'A'),
(16, 'It is desired to display the digit 7 using a seven segment display. The LEDs to be turned on are', 'a, b, c', 'b, c, d', 'c, d, e', 'a, b, d', 'A'),
(17, 'At room temperature the current in an intrinsic semiconductor is due to', 'holes', 'electrons', 'ions', 'holes and electrons', 'D'),
(18, 'A Karnaugh map with 4 variables has', '2 cells', '4 cells', '8 cells', '16 cells', 'D'),
(19, 'The most commonly used semiconductor material is', 'silicon', 'germanium', 'mixture of silicon and germanium', 'none of the above ', 'A'),
(20, 'Which one most appropriate dynamic system?', 'y(n) + y(n - 1) + y(n + 1)', 'y(n) + y(n - 1)', 'y(n) = x(n)', 'y(n) + y(n - 1) + y(n + 3) = 0', 'A'),
(21, 'd(t) is a', 'energy signal', 'power signal', 'neither energy nor power', 'none', 'B'),
(22, 'A signal g(t) = A then g(t) is a', 'energy signal', 'power signal', 'neither energy nor power signal', 'insufficient data', 'B'),
(23, 'An impulse function consist of', 'pure dc', 'pure a.c', 'entire frequency range with constant phase', 'infinite bandwidth with linear phase vaariations', 'C'),
(24, 'An energy signal has G(f) = 10. Its energy density spectrum is', '10', '100', '50', '20', 'B'),
(25, 'To increase Q factor of a coil, the wire should be', 'long', 'thin', 'thick', 'long and thin', 'C'),
(26, 'In a CRO which of the following is not a part of electron gun', 'cathode', 'grid', 'accelerating anode', 'X - Y plates', 'D'),
(27, 'In which of the transformer is the secondary nearly short circuited under normal operating conditions?', 'CT', 'PT', 'Distribution transformer', 'Power transformer', 'A'),
(28, 'In a strain measuring device using a strain gauge, the output quantity is', 'voltage', 'resistance', 'impedance', 'either (a) or (b)', 'A'),
(29, 'The household energy meter is', 'indicating instrument', 'recording instrument', 'integrating instrument', 'none of the above', 'C'),
(30, 'Potentiometer method of dc voltage measurement is more accurate than direct measurement using a voltmeter because', 'it loads the circuit to maximum extent', 'it loads the circuit moderately', 'it does not load the circuit at all', 'it uses centre zero galvanometer instead of Voltmeters', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `mechanical`
--

CREATE TABLE `mechanical` (
  `id` int(1) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mechanical`
--

INSERT INTO `mechanical` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Strain is defined as the ratio of\r\n', 'change in length to original length', 'change   in   cross-sectional\narea to original cross-sectional area', 'change in volume to original volume', 'all of the above', 'D'),
(2, ' Hooke’s law holds good up to', 'yield point', 'limit of proportionality', 'breaking point', 'elastic limit', 'B'),
(3, 'Young’s modulus is defined as the ratio of', 'volumetric stress and volumetric strain', 'lateral stress and lateral strain', 'longitudinal   stress   and   longitudinal   strain', 'shear stress to shear strain', 'C'),
(4, 'The unit of Young’s modulus is', 'mm/mm ', 'kg/cm', 'kg', 'kg/cm2', 'D'),
(5, 'Deformation per unit length in the direction of force is known as', 'strain', 'lateral strain', 'linear strain', 'linear stress', 'C'),
(6, 'If equal and opposite forces applied to a body tend to elongate it, the stress so produced is called ', 'internal resistanpe', 'tensile stress ', ' transverse stress', 'compressive stress', 'B'),
(7, 'The correct order of the coordination number is SC, BCC, FCC and HCP unit cells is', '12, 8, 12, 6.', ' 6, 8, 12, 12.', '8, 6, 12, 12.', '6, 12, 12, 8.', 'B'),
(8, 'Frankel and Schottky imperfections are', 'dislocations in ionic crystals.', 'Grain boundaries in covalent crystals.', 'Vacancies in ionic crystals.', 'Vacancies in covalent crystals.', 'C'),
(9, 'The forbidden energy gap of carbon in diamond structure is', '7.0 ev', '1.0 ev', '0.01 ev', 'none', 'A'),
(10, 'For silicon doped with trivalent impurity,', 'ne >> nh', 'ne > nh', 'nh >> ne', 'nh > ne', 'C'),
(11, 'With increase in temperature, the orientation polarization in general', 'decreases', 'increases', 'remains same', 'none of these', 'A'),
(12, 'The number of atoms present in the unit cell of HCP structure is', '2', '4', '6', '7', 'C'),
(13, 'Metallic bond is not characterized by', 'ductility', 'high conductivity', 'directionality', 'opacity', 'C'),
(14, 'Which of the following processes is used to harden a steel?', 'Normalizing', 'Annealing', 'Carburizing', 'Quenching', 'D'),
(15, 'Fermi level represents the energy level with probability of its occupation of', '0%', '25%', '50%', '100%', 'C'),
(16, 'The thermodynamic work done by the system on the surrounding is considered as ____.', 'positive', 'negative', 'neutral', 'none of the above', 'A'),
(17, 'First law of thermodynamics provides', 'a statement that energy balance occurs when a system undergoes the change of state or the process', 'a statement about whether the change of state or the process is at all feasible or not', 'both a. and b', 'none of the above', 'A'),
(18, 'Which of the following is NOT the heat engine cycle', 'refrigerator', 'stem power plant', 'mass of gas confined in a cylinder and piston machine', 'none of the above', 'A'),
(19, 'Two reversible adiabatic paths', 'can intersect with each other', 'cannot intersect with each other', ' may intersect or may not intersect', 'none of the above', 'A'),
(20, 'Thermodynamics is the study of', 'energy', 'equilibrium', 'entropy', 'none of the above', 'D'),
(21, 'What is the exergy of a system?', 'The minimum work that can be extracted from a system till it reaches thermodynamic equilibrium with its surroundings', 'The maximum work that can be extracted from a system till it reaches thermodynamic equilibrium with its surroundings', 'The maximum entropy that can be increased in a system till it reaches thermodynamic equilibrium with its surroundings', 'none of the above', 'B'),
(22, 'What will be the net change in internal energy of working fluid of power cycle over the complete cycle?', 'net change in internal energy of working fluid will be positive', 'net change in internal energy of working fluid will be negative', 'no any net change in internal energy of working fluid', 'none of the above', 'C'),
(23, 'What is the formula for efficiency of vapour power cycle?', 'cycle = Wnet / Qin', 'cycle = (WT - WP) / Qin', 'cycle = (Qin - Qout) / Qin', 'all of the above', 'D'),
(24, 'Which processes do the Rankine cycle contain?', 'two isothermal and two isochoric processes', 'two isentropic and two isobaric processes ', 'two isentropic and two isothermal processes', 'two isothermal and two isobaric processes', 'B'),
(25, 'At ideal condition of vapour power cycle, reversible constant pressure heat rejection is carried out at', 'boiler', 'turbine', 'condenser', 'feed pump', 'C'),
(26, 'Which thermodynamic cycle, for the same condition, has highest efficiency among the others?', 'Carnot cycle', 'Stirling cycle', 'Ericsson cycle', 'None. All of the above have same efficiency', 'D'),
(27, 'What is the correct formula for net work done of reciprocating engine?', 'Wnet = mean effective pressure × clearance volume', 'Wnet = mean effective pressure × total volume of cylinder', 'Wnet = mean effective pressure × displacement volume', 'none of the above', 'C'),
(28, 'The ratio of partial pressure of water vapour in a mixture to the saturation pressure of water at the same temperature of the mixture is called as', 'humidity', 'partial humidity', 'specific humidity', 'relative humidity', 'D'),
(29, 'The boiler in which the tubes are surrounded by hot gases is called as', 'fire tube boiler', 'water tube boiler', 'both a. and b.', 'none of the above', 'B'),
(30, 'Modulus of rigidity is defined as the ratio of', 'longitudinal stress and longitudinal strain', 'volumetric stress and volumetric strain', 'lateral stress and lateral strain', 'shear stress and shear strain', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `r1g1`
--

CREATE TABLE `r1g1` (
  `id` int(1) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL,
  `seriesname` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `r1g1`
--

INSERT INTO `r1g1` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `seriesname`) VALUES
(1, 'What does Chandler\'s co-worker, Bob, think Chandler\'s name is? \r\n', 'Richard', 'Toby', 'Zelner', 'Mr. Bong', 'C', 0),
(2, 'Joey says that giving Rachel pickles during her pregnancy is like giving him what? ', 'Salad', 'Sandwich', 'Burger', 'Turkey', 'A', 0),
(3, 'What were the names of characters in the book which phoebe was writing on chandler and monica? ', 'Chang and Marsey', 'Chester and marsha', 'Chanandler and mon', 'Chan and mon', 'B', 0),
(4, 'What did joey named his chair?', 'Steive', 'Yasmine', 'Janine', 'Rosita', 'D', 0),
(5, 'Emma\'s first utterance according to Rachel was? ', 'Cleba', 'Gleba', 'Tina ', 'meena', 'B', 0),
(6, 'Monica is a ______ freak ? ', 'Shopping', 'Beer', 'Cooking', 'Neat', 'D', 0),
(7, 'Complete the following: “I am bea……” ', 'I love tea', 'I drink tea', 'I like tea', 'I make tea', 'B', 0),
(8, 'What size shoe does Joey wear? ', '7.5', '6', '7', '6.5', 'C', 0),
(9, 'What was the Swedish name that phoebe made up of herself when Rachel asked her while having massage?', 'Ikea', 'Regina Phalangee', 'Princess consuela', 'Alice', 'A', 0),
(10, 'The delicious cheesecake devoured by Chandler and Rachel came from ? ', 'Mama\'s Little Bakery', 'Cake studio', 'Appetizing Bakes', 'Cake shoppe', 'A', 0),
(11, 'Who was rachel dating when she turned 30 years old?', 'Chip', 'Paul', 'Tag', 'Ross', 'C', 0),
(12, 'What did phoebe think  \"pheebs\" meant?', 'her nickname', 'Something they just call each other', 'a type of animal', 'a type of food monica cooks', 'B', 0),
(13, 'How did Phoebe\'s mother die?', 'She got mugged and shot', 'She bent down to get groceries and never came up', 'She killed herself', 'she got hit by the car', 'C', 0),
(14, 'What creature hurts monica at the beach?', 'Jellyfish', 'Starfish', 'crab', 'shrimp', 'A', 0),
(15, 'The Mountain\' is the nickname for which character?', 'Gerold Clegane', 'Gregor Clegane', 'Sendor Clegane', 'Oberyn Martell', 'B', 2),
(16, 'Who was Margaery Tyrell\'s first husband?', 'Renely Baratheon', 'Joffrey Baratheon', 'Tommen Baratheon', 'Stannis Baratheon', 'A', 2),
(17, 'How many times has Sansa Stark been married?', 'None', 'Once', 'Thrice', 'Twice', 'D', 2),
(18, 'Who was the Mad King\'s firstborn son?', 'Aemon  Targaryen', 'Aegon Targaryen', 'Viserys Targaryen', 'Rhaegar Targaryen', 'D', 2),
(19, 'Who does Oberyn Martell seek revenge for?', 'His wife', 'His Daughter', 'His Sister', 'His father', 'C', 2),
(20, 'Fill in the blank: The night is dark and full of ________.', 'Blood', 'Evil', 'Death', 'Terrors', 'D', 2),
(21, 'Who gave Sandor Clegane the scars on his face?', 'Gregor Clegane', 'Ilyn Payne', 'Joffrey Baratheon', 'Robert Baratheon', 'A', 2),
(22, 'Who teaches Arya Stark to \"stick \'em with the pointy end\"?', 'Syrio Forel', 'Jaime Lannister', 'Ned Stark', 'Jon Snow', 'D', 2),
(23, 'Who is Bran Stark named after?', 'His Uncle', 'His Grandfather', 'His Cousin', 'His Father', 'A', 2),
(24, 'Who has Petyr Baelish loved since he was a child?', 'Sansa Stark', 'Lysa Arryn', 'Cercei Lannister', 'Catelyn Stark', 'D', 2),
(25, 'Who is the Mad King to Daenerys Targaryen?', 'Her Grandfather', 'Her Brother', 'Her Father', 'Her Uncle', 'C', 2),
(26, 'What does \"khaleesi\" mean?', 'Warrior', 'Wife of Khal', 'Mother', 'Queen', 'B', 2),
(27, 'Who did Robb Stark promise to marry in exchange for troops?', 'A Bolton Girl', 'A Frey Girl', 'A Baratheon Girl', 'A Lannister Girl', 'B', 2),
(28, 'Fill in the blank: \"What is _______ may never die.\"', 'Iron', 'Dead', 'Reborn', 'Drowned', 'B', 2),
(29, 'Who were the Unsullied NOT instructed to kill in Astapor?', 'The Council', 'The Soldiers', 'The Men Holding Whips', 'The Masters', 'A', 2),
(30, 'Dominic Toretto is an elite street racer, auto mechanic, and a(n) _____.', 'Ex- convict', 'ex- FBI', 'Ex-Police officer', 'Banker', 'A', 5),
(31, 'In The  Fast and the Furious ,Toretto and his crew are under suspicion of stealing _____.', 'Daimonds', 'Gold', 'Electronic equipment', 'Car Parts', 'C', 5),
(32, ' How many movies are there in the Fast and Furious saga?', 'Ten', 'Nine', 'Seven', 'Eight', 'D', 5),
(33, 'In Fast and Furious ,Dominic\'s younger sister\'s name is _____.', 'Jordana', 'Mia', 'Eva', 'Letty', 'B', 5),
(34, 'In Fast & Furious 3 after totaling his car in an illegal street race, Sean Boswell (Lucas Black) is sent to live in _____.', 'Mexico', 'Rome', 'Brasil', 'Tokyo', 'D', 5),
(35, 'In Fast and Furious movie series what is the name of Dominic torretos love interest?\r\n\n', 'Eva', 'Mia', 'Letty', 'Jessy', 'C', 5),
(36, 'The movie in which vin diesel does not appear?\r\n\n', '2 Fast 2 Furious\n\n', 'The F&F: Tokyo Drift', 'Fast Five', 'Fast &Furious', 'A', 5),
(37, 'Which was the first Fast & Furious  film to feature \"The Rock \"as agent Luke Hobbs? \r\n\n', 'Fast & Furious 6', 'The F&F: Tokyo Drift', 'Fast Five', 'Fast &Furious', 'C', 5),
(38, 'In \"Fast & Furious,\" Dominic returns to Los Angeles because someone was killed. Who was it?\r\n\n', 'sister Mia\n\n', 'Brian\n\n', 'Letty', 'Hobbs', 'C', 5),
(39, 'Who challenges Sean to a race at the end of \"Tokyo Drift\"?\r\n\n', 'Han\r\n\n', 'Brain', 'Mia', 'Dom', 'D', 5),
(40, 'Jiski Kukoo Uska ___ ?', 'India', 'Mumbai', 'Kolkata', 'Bombay', 'B', 6),
(41, 'Who Killed Anjali Mathur (Radhika Apte) ?', 'Sartaj Singh', 'Gaitonde', 'Bunty', 'Malcolm Murad', 'D', 6),
(42, 'Who will survive till the end according to Gaintonde (25 days)?', 'Kukoo', 'Tridevi', 'Trivedi', 'Khanna', 'C', 6),
(43, 'What is the profession of Gaitonde\'s first father? ', 'Farmer', 'Pandit', 'Cobbler', 'Teacher', 'B', 6),
(44, 'What does Gaitonde steal from his second father', 'Silver', 'Daimonds', 'Cash(Money)', 'Gold', 'D', 6),
(45, '\"Teri g*nd mein chhatri daalke khole nahi toh mera naam _____ nahi\" Who quotes this in Sacred Games?', 'Parulkar', 'Gaitonde', 'Sartaj', 'Bunty', 'D', 6),
(46, '\"Bhagwan ko maante ho? Bhagwan ko l*nd farak padta hai\" Who quotes this in Sacred Games?', 'Sartaj Singh', 'Bunty', 'Mathu', 'Gaitonde', 'D', 6),
(47, '\"Guns, drugs, property sab chhota dhandha hai. Asli dhandha hai politics\" Who quotes this in Sacred Games?', 'Khanna Guru Ji', 'Bunty', 'Bipin Bhosale', 'Gaitonde', 'D', 6),
(48, 'Which of the following cuss words are not used in Sacred Games?', 'Bh*nch*d', 'Mat*erch*d', 'Ch*tya', 'This is tricky question', 'D', 6),
(49, 'What does jacob give Bella for her birthday? ', 'A wolf charm bracelet', 'A wolf necklace', 'A dream catcher', 'A keychain', 'C', 7),
(50, 'When is the first time Bella sees Edward cullen?', 'cafeteria', 'Classroom', 'Outside the college', 'Hotel', 'A', 7),
(51, 'Which vampire can see into future?', 'Jasper', 'Emmett', 'Edward', 'Alice', 'D', 7),
(52, 'What is the name of Bella and Edward\'s daughter?', 'Renee', 'Renes', 'Reneesmee', 'Esme', 'C', 7),
(53, 'what do Edward and Bella win in their second biology class together?', 'Golden Apple', 'Golden Microscope', 'A golden onion', 'Golden Pineapple', 'C', 7),
(54, 'What is bella\'s extra ordinary ability?', 'Vision', 'Flying', 'Mind control', 'Shield', 'D', 7),
(55, 'where does James meet bella at first?', 'Old ballet studio', 'Her mother\'s house', 'her father\'s house', 'her childhood house', 'A', 7),
(56, 'What does blood smell like according to bella?', 'salt and rust', 'Sweet ', 'Lemon', 'Flowery', 'A', 7),
(57, 'There is someone is the cullen\'s family that does NOT like bella very much.WHO?', 'Rosalie', 'Emmett', 'Esme', 'Jasper', 'A', 7),
(58, 'What did bella and Jacob witness from Sam and some other tribe members that caused her to pull over in a panic?', 'Car racing', 'Hurting a deer', 'Cliff hanging', 'Branding tattoos', 'C', 7);

-- --------------------------------------------------------

--
-- Table structure for table `r1g2`
--

CREATE TABLE `r1g2` (
  `id` int(1) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL,
  `seriesname` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `r1g2`
--

INSERT INTO `r1g2` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `seriesname`) VALUES
(1, '\"According to Harry Potter movie series what kind of monster was inhabiting the Chamber of Secrets?\r\n\r\n\"\r\n', 'Boggart', 'Basilisk', 'Dementor', 'Troll ', 'B', 1),
(2, 'What is the name of Harry Potter\'s father?\n', 'Arthur', 'James', 'Sirius', 'Kingsley\n\n', 'B', 1),
(3, 'According to Harry Potter movie series who was the Prisoner of Azkaban?', 'Remus Lupin', 'Sirius Black', 'Voldemort', 'Peter Pettigrew ', 'B', 1),
(4, 'According to Harry Potter movie series what is the name of house elf owned by malfoys\n', 'Dobby', 'Krecher', 'Fawkes', 'Griphook\n\n', 'A', 1),
(5, 'Which of the following Harry Potter movie does not have a Lord Voldemort appereance in it?', 'Philosopher\'s Stone\r\n\n', 'Chamber of Secrets\n\n', 'Prisoner of Askaban', 'Goblet of Fire', 'C', 1),
(6, 'According to Harry Potter movie series what is the name of  Ron Weasley\'s pet rat, that later turns out to be Peter Pettigrew?', 'Errol', 'Pigwideon', 'Hermes\r\n\n', 'Sabbers', 'D', 1),
(7, 'Platform from which Hogwarts express leaves?', '9(1/4)', '9', '10', '9(3/4)', 'D', 1),
(8, 'In the movie Harry Potter and Chambers of Secrets  Hagrid\'s spider is?', 'Argon', 'Basilisk', 'Aragog', 'Grwap ', 'C', 1),
(9, 'In the Movie Harry Potter and Chambers of Secrets  Where is entry in Chamber of Secrets?', 'In girl\'s bathroom', 'In boy\'s bathroom', 'Under Slytherin dorm', 'In Forbidden Forest', 'A', 1),
(10, 'According to Harry Potter movie series  what\'s the last Horcrux that has to be destroyed in order for Voldemort to die?', 'Nagini', 'Ravenclaw\'s Diadem', 'Harry', 'Hufflepuff\'s Cup', 'C', 1),
(11, 'According to Harry Potter movie series who was Harry\'s love interest before Ginny Weasley?', 'Hermione Granger', 'Luna Lovegood', 'Cho Chang', 'Fleur Delacour', 'C', 1),
(12, 'According to Harry Potter movie series who is the Heir of Slytherin?', 'Severus snape', 'Draco Malfoy', 'Harry Potter', 'Tom Riddle', 'D', 1),
(13, 'According to Harry Potter movie series who is theHalf Blood Prince?', 'Severus snape', 'Voldemort', 'Sirius Black', 'Tom Riddle', 'A', 1),
(14, 'According to Harry Potter movie series', 'Buckbeak', 'Crockshank', 'Nagini', 'Sabbers', 'B', 1),
(15, 'According to Harry Potter movie series who gives Harry the Gillyweed for the second Triwizard challenge?', 'Nevill longbottom', 'Mad eye moody\n', 'Hermione\n', 'Dobby', 'A', 1),
(16, 'According to Harry Potter movie series who destroyed the last remaining horcrux?', 'Nevill longbottom', 'Harrry', 'Hermione\n', 'Voldemort', 'D', 1),
(17, 'According to Harry Potter movie series which champion is the only one to die in the 1994-1995 Triwizard Tournament?', 'Harry Potter', 'Fleur Delacour', 'Viktor Krum', 'Cedric Diggory', 'D', 1),
(18, 'What role does Harry play in Quidditch?\n', 'Keeper', 'Beater', 'Chaser', 'Seeker', 'D', 1),
(19, 'In Harry Potter and the Order of Phoenix who betrays Dumbuldore\'s Army', 'Zacharius Smith', 'Hannah Abbot', 'Cho Chang', 'Draco Malfoy', 'C', 1),
(20, ' In what month is Harry Potter\'s birthday?', 'August', 'July', 'June', 'March', 'B', 1),
(21, 'After Vision is captured by the Avengers, Tony begins tampering with him to try to bring him to life. Who provides the power to bring Vision to life?', 'Iron Man ', 'Banner', 'Thor', 'Hawkeye', 'C', 3),
(22, 'Which Avenger dies twice in this movie?(Infinity War)', 'Bucky', 'Vision', 'Black Panther', 'Peter Guil', 'B', 3),
(23, 'While inside Stark Towers who did Hulk say \"Puny god\" to while throwing this person around like a rag doll?', 'Hawkeye', 'Loki', 'Iron Man', 'Thor', 'B', 3),
(24, 'Which of the following Avengers from the comics is not in the movie \'Avengers\'?', 'Captain America', 'The wasp', 'Black widow', 'Iron Man', 'B', 3),
(25, 'What villain from a previous movie returns in \"Avengers: Infinity War\"?', 'Klaue', 'Redskull', 'Ultron', 'Thanos', 'B', 3),
(26, 'When the military pilot yelled into his radio, \"Target angry! Target angry!\", to whom was he referring in the \'Avengers\'?', 'Iron Man', 'Loki', 'Hulk', 'Thor', 'C', 3),
(27, 'When Loki is locked up in the S.H.I.E.L.D. helicarrier, who gets him to reveal that he is planning to get Banner to change into the Hulk and destroy the ship from within?', 'Black Widow', 'Captian America', 'Hawkeye', 'Thor', 'A', 3),
(28, 'What is Stan Lee doing in this movie?(Infinity War)', 'Window Cleaner', 'Playing chess', 'Driving a bus', 'Delivery Man', 'C', 3),
(29, ' On Titan, Mantis was the first to dissolve after Thanos escaped Wakanda. Who in Wakanda was the first person to dissolve?', 'Captain America', 'Bucky', 'Shuri', 'Black Widow', 'B', 3),
(30, 'In the middle of the battle in Wakanda, Steve Rogers introduces himself to someone. Who is it?', 'Groot', 'The Rat', 'Black Panther', 'The Black Order', 'A', 3),
(31, 'On Nidavellir, who fashioned a handle for Thor\'s new axe called Stormbreaker?', 'Groot', 'The Rat', 'Thor', 'No one', 'A', 3),
(32, 'Hawkeye spends much of the movie as Loki\'s slave. Who is it that hits him in the head hard enough to finally return him to his normal self?', 'Blakc Widow', 'Hulk', 'Iron Man', 'Loki', 'A', 3),
(33, ' At the party in Stark\'s place, which Avenger ends an argument by stating that his girlfriend is better than another Avenger\'s girlfriend?', 'Thor', 'Iron Man', 'Hawkeye', 'The War Machine', 'A', 3),
(34, 'Which character gets \"officially\" inducted into the Avengers by Tony Stark during the events of \"Avengers: Infinity War\"?', 'Ant Man', 'Black Panther', 'The Winter Soldier', 'Spiderman', 'D', 3),
(35, 'What is the name of the creature that Ultron creates and Thor brings to life with his hammer?', 'Ultron', 'Vision', 'Jarwis', 'Alexa', 'B', 3),
(36, 'During a showdown between the Guardians of the Galaxy and the Avengers, there is some confusion about Gamora. What question does Drax ask? ', 'Who is Gamora?', 'What is Gamora?', 'Why is Gamora?', 'How is Gamora?', 'C', 3),
(37, 'What is Hawkeye\'s real name?', 'Tony Sark', 'Bucky Barns', 'Clint Barton', 'Peter Guil', 'C', 3),
(38, 'Who is the first Avenger?', 'Captain America', 'Thor', 'Nick Fury', 'Spiderman', 'A', 3),
(39, 'How many Avengers are there in the first part of Avengers?', '5', '6', '7', '4', 'B', 3),
(40, 'Which of the following Avengers from the comics is not in any Avengers movie?', 'Ant Man', 'The Wasp', 'Spiderman', 'Heimdal', 'B', 3),
(41, 'When Sheldon wasn\'t working at his desk in the apartment, he only liked to sit at one particular spot in his living room. What was his favorite seat?', 'Extreme left', 'Extreme right', 'Middle ', 'Anywhere ', 'B', 4),
(42, 'Who spoiled sheldon\'s sofa with a paintball gun?', 'Raj', 'Penny', 'Leonard ', 'Howard ', 'B', 4),
(43, 'In \"The Bath Item Gift Hypothesis\", Penny gives Sheldon a napkin autographed by someone, and in turn Sheldon gives her every gift basket he bought and a rare hug. Who was the one that autographed the napkin?', 'Wil Weaton', 'Leonard Nimoy', 'Prof. Proton', 'Dr Nowitzky', 'B', 4),
(44, ' \"The Creepy Candy Coating Corollary\" saw Sheldon pitted against actor Wil Wheaton in a skirmish to the death during a \"Mystic Warlords of Ka\'a\" tournament at the comic book store. Which movie did Sheldon quote extensively from in this episode?', 'Star Wars', 'Star Trek', 'Atom', 'None', 'B', 4),
(45, 'Throughout the series we will learn that all of the guys are big superhero fans, and that Sheldon often wears shirts depicting them. What superhero/superhero symbol is shown on Sheldon\'s shirt in this episode?', 'Batman', 'Flash', 'Green Lantern', 'Superman ', 'B', 4),
(46, ' Kaley Cuoco plays the object of Leonard\'s obsession. What is her character\'s name?', 'Penny', 'Amy', 'Bernadette ', 'Missy ', 'B', 4),
(47, 'What does Raj dress up as for Penny\'s Halloween party?', 'Batman', 'Norse God Thor ', 'Goku', 'Flash', 'B', 4),
(48, 'When Leonard needed help to fit in with Penny\'s friends in \"The Cornhusker Vortex\", he was surprised to find assistance from a most unlikely source. What sporting activity did Sheldon turn out to be an expert on in this episode?', 'American Football', 'American Soccer ', 'Baskteball', 'Baseball', 'A', 4),
(49, 'What cereal name became Howard\'s nickname while he was in space?', 'Shorty', 'Froot Loops', 'Lone Ranger', 'Astro boy', 'B', 4),
(50, 'When Penny slipped in the shower and dislocated her shoulder, Sheldon was the only person around to help her get to the emergency room. Later, a drug-addled Penny made Sheldon sing her his customary song that was reserved for situations when he was sick. What is the name of the song?', 'Soft Doggy', 'Soft Kitty', 'Warm kitty', 'Sleepy Kitty', 'B', 4),
(51, 'What kind of sporting equipment does Sheldon have?', 'Basketball', 'Golf', 'Baseball', 'Soccer ', 'B', 4),
(52, 'From where did Sheldon get the ring that he showed to us at the end of season 8?', 'His mother', 'His sister', 'Raj', 'Amy', 'A', 4),
(53, 'In \"The Deception Verification\", Leonard surprises Penny by returning early from the South Sea, but doesn\'t tell Sheldon so he can have a few days alone with Penny. When Sheldon finds out, he is hurt to discover just how important his friendship means to Leonard. Which estrogen-influenced friend convinces Sheldon and Leonard to get past their stupid fight?', 'Raj', 'Howard', 'Bernadette ', 'Amy', 'B', 4),
(54, 'In \"The Gothowitz Deviation\", Sheldon took it upon himself to weed out what he felt were Penny\'s more annoying or undesirable habits. What did Sheldon use in this episode to modify Penny\'s behavior?', 'Chocolate', 'Ice Cream', 'Chinese', 'Money ', 'A', 4),
(55, 'Episode 1: \"Pilot\" - When Sheldon and Leonard go to Penny\'s ex-boyfriend\'s apartment, what item are they trying to retrieve?', 'Sofa', 'Television ', 'Clothes ', 'Xbox ', 'B', 4),
(56, 'What is Walt\'s middle name?', 'Hartwell', 'Hartley', 'Harvey', 'Harvard', 'A', 8),
(57, 'Who was originally supposed to die by the end of season one?', 'Hank', 'Jesse', 'Marie', 'Skyler', 'B', 8),
(58, 'Frustrated after failing to get into his family\'s house with a mealtime peace-offering, Walt throws this on the roof:', 'A bag of burritos', 'A bucket of fried chicken', 'A pizza', 'Chinese takeout', 'C', 8),
(59, 'Jesse\'s girlfriend Andrea has a son. What\'s his name?', 'Bill', 'Buck', 'Brock', 'Brick', 'C', 8),
(60, 'What was the name of the high school where Walter White taught chemistry?', 'Albuquerque Senior high school', 'J.P. Wynne high school', 'Rio Rancho high school', 'Santa Ana Pueblo high school', 'B', 8),
(61, 'What item does Hank find that makes him realize Walt is Heisenberg?', 'His lab notes', 'His bag filled with cash', 'His blue meth', 'His copy of \"Leaves of Grass\"', 'D', 8),
(62, 'What\'s the slogan of Saul Goodman\'s law firm?', 'Turn Your Pain Into Rain.', 'One Call! That\'s All!', 'Better call Soul!', 'Get what\'s yours', 'C', 8),
(63, 'What weapons do Tuco\'s cousins use?', 'Chainsaws', 'Machetes', 'Hammers', 'Axes', 'D', 8),
(64, 'Which character does not end up dying by the end of the series?', 'Uncle Jack', 'Skinny Pete', 'Walter White', 'Hank', 'B', 8),
(65, 'What did Mike Ehrmantraut do for a living before he started working for Gus Fring?', 'He was a lawyer', 'He was a cop', 'He was a prison guard', 'He was a doctor', 'B', 8),
(66, 'Walt is a teacher of what high school subject?', 'Biology', 'Chemistry', 'Physics', 'Mathematics', 'B', 8),
(67, 'Spot the phrase that DID NOT come out of Jesse’s mouth:', 'Yeah Bitch, Magnets!', 'Alright Bitch, Let\'s cook!', 'Yo,Gatorade me Bitch!', 'So roll me further bitch', 'B', 8),
(68, 'When Walt retired from the meth game, how much money did he walk away with?', '$ 4 Million', '$ 8 Million', '$ 40 Million', '$ 80 Million', 'D', 8),
(69, 'Walt doesn’t call it the meth game, though. He calls it…', 'Making a living', 'My family\'s nest egg', 'The empire business', 'Pure Chemistry', 'C', 8),
(70, 'What drug do we NOT see Jesse use?', 'Heroin', 'Meth', 'Weed', 'Ecstacy', 'D', 8),
(71, 'What is the name of Will Turner\'s Son', 'John ', 'Henry', 'Cahil', 'Picolo', 'B', 9),
(72, 'Which actress plays Elizabeth Swann?', ' Keira Knightley', 'Emma Watson', 'Jennifer Lawrence', 'None', 'A', 9),
(73, 'Which object did the child believe could free Will Turner from the curse he and his crew were under?', 'The Trident', 'Heart of Davy Jones', 'The Compass', 'The Sea', 'A', 9),
(74, 'The Dead Man\'s Chest belonged to whom?', 'Davy Jones', 'Will Turner', 'Jack Sparrow', 'Elizabeth Turner', 'A', 9),
(75, '\"You smell funny!\" Who is this insult of Jack\'s directed at?', 'Will Turner', 'Captain Barbossa', 'Salazar', 'James Norrington', 'D', 9),
(76, 'The name of Jack Sparrow\'s Ship', 'The Black Pearl', 'The Blue Pearl', 'The Pearl', 'Black Ship', 'A', 9),
(77, 'Davy Jones\'s Heart ends up with whom at the end of the part \'The Dead Man\'s Chest\'', 'Jack Sparrow', 'Will Turner', 'James Norringtom', 'Davy Jones', 'C', 9),
(78, 'Who is the Calypso?', 'Tia  Dalma', 'Davy Jones', 'Will Turner', 'Jack Sparrow', 'A', 9),
(79, 'What is Jack Sparrow\'s famous phrase?', 'Cool?', 'Savvy?', 'Beauty!', 'Rum!', 'B', 9),
(80, 'The name of the beast beside Davy Jones', 'The Kraken', 'The Beasty', 'Sharks', 'Sea Turtles', 'A', 9),
(81, 'What is the nickname of Will Turner\'s father', 'Bootstrap Will', 'Bootstrap Bill', 'Billy', 'No Nickname', 'B', 9),
(82, 'Where do Will and Jack recruit rest of the crew', 'Tortuga', 'Nassua', 'Havana', 'Kingston', 'A', 9),
(83, 'What is the name of Barbossa\'s Monkey', 'Jack ', 'Frank', 'Bill  ', 'George', 'A', 9),
(84, 'The treasure is made up of how many pieces', '882', '664', '324', '245', 'A', 9),
(85, 'Who says this quote:\"He\'s a distant cousin of my aunt\'s nephew twice removed.\"', 'Will Turner', 'Barbossa', 'Jack Sparrow', 'Elizabeth Swann', 'C', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `groupid` varchar(6) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `member1` varchar(1000) NOT NULL,
  `member2` varchar(1000) NOT NULL,
  `webmark` int(2) NOT NULL,
  `techmarks` int(2) NOT NULL,
  `total` int(11) NOT NULL,
  `webmark2` int(11) NOT NULL,
  `techmark2` int(11) NOT NULL,
  `total2` int(11) NOT NULL,
  `round` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `groupid`, `mobileno`, `branch`, `member1`, `member2`, `webmark`, `techmarks`, `total`, `webmark2`, `techmark2`, `total2`, `round`) VALUES
(1, 'WEB01', '8007756910', '', 'Yash Prayag\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(2, 'WEB02', '8805671969', 'CO', 'Ankurr Shukla\r\n', '', 17, 18, 35, 14, 18, 32, 3),
(3, 'WEB03', '9850932229', '', 'Deepashri Joshi\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(4, 'WEB04', '9406968087', 'CO', 'Vasudha Agarwal\r\n', '', 15, 18, 33, 9, 8, 17, 3),
(5, 'WEB05', '9923909662', 'CO', 'Samyak Vaidya\r\n', '', 16, 18, 34, 15, 22, 37, 3),
(6, 'WEB06', '9385930075', '', 'Dhanashri\r\n', '', 3, 4, 7, 0, 0, 0, 1),
(7, 'WEB07', '7038221732', '', 'Priyanka Sarode\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(8, 'WEB08', '8275246630', '', 'Sahil C.\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(9, 'WEB09', '9146032668', '', 'Ritika Gupta\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(10, 'WEB10', '7447442213', '', 'Pushkraj\r\n', '', 15, 10, 25, 0, 0, 0, 1),
(11, 'WEB11', '7038699926', '', 'Shantanu T\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(12, 'WEB12', '8411871113', 'CO', 'Vedant Dande\r\n', '', 19, 18, 37, 8, 10, 18, 3),
(13, 'WEB13', '8087013765', '', 'Sakshi Dhamne\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(14, 'WEB14', '9515581820', '', 'Bikash Yadav\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(15, 'WEB15', '8888953359', '', 'Kunal varudkar\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(16, 'WEB16', '8851307579', '', 'Rasika Burde\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(17, 'WEB17', '9420810675', '', 'Sanyog\r\n', '', 9, 2, 11, 0, 0, 0, 1),
(18, 'WEB18', '9561272080', '', 'Shweta Gore\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(19, 'WEB19', '9924127822', '', 'Ronak Bhadja\r\n', '', 10, 12, 22, 0, 0, 0, 1),
(20, 'WEB20', '7743995556', '', 'Dheeraj Jadhav\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(21, 'WEB21', '9325896628', '', 'Morve pratik\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(22, 'WEB22', '9860685869', '', 'Shubham Dwivedy\r\n', '', 18, 8, 26, 0, 0, 0, 1),
(23, 'WEB23', '9890961156', 'CO', 'Hrishikesh M\r\n', '', 15, 24, 39, 20, 32, 52, 2),
(24, 'WEB24', '', '', 'Chaitanya Sawarkar\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(25, 'WEB25', '7219150250', '', 'Yash Jadhav\r\n', '', 13, 6, 19, 0, 0, 0, 1),
(26, 'WEB26', '9158387595', '', 'Rohit Kshirsagar\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(27, 'WEB27', '8271984072', '', 'Shivam Kumar\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(28, 'WEB28', '8554091359', '', 'Sachin Guldagad\r\n', '', 10, 8, 18, 0, 0, 0, 1),
(29, 'WEB29', '7767095420', '', 'Sakshi Katolkar\r\n', '', 14, 10, 24, 0, 0, 0, 1),
(30, 'WEB30', '8605969283', '', 'Shweta Ambarkhana\r\n', '', 10, 8, 18, 0, 0, 0, 1),
(31, 'WEB31', '9595925551', '', 'Sairam Rathod\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(32, 'WEB32', '7066473684', '', 'Shahan Jahar\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(33, 'WEB33', '8830700524', '', 'Shivam Parsewar\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(34, 'WEB34', '8551026058', '', 'Rutvik Wagh \r\n', '', 13, 8, 21, 0, 0, 0, 1),
(35, 'WEB35', '7977876809', '', 'Pooja\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(36, 'WEB36', '8390701859', '', 'Shreyas\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(37, 'WEB37', '9130868302', '', 'Vikas Kale\r\n', '', 11, 6, 17, 0, 0, 0, 1),
(38, 'WEB38', '9653133602', '', 'Aatij Malik\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(39, 'WEB39', '', '', 'Gautami Kale\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(40, 'WEB40', '8308615175', '', 'Meghraj Pathak\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(41, 'WEB41', '9552390576', '', 'Abhishek T.\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(42, 'WEB42', '9834525136', 'CO', 'Tushar Baid\r\n', '', 18, 28, 46, 15, 14, 29, 3),
(43, 'WEB43', '7798926236', '', 'Surabhi Chakrako\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(44, 'WEB44', '8855009793', '', 'Shishir Chongate\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(45, 'WEB45', '8208236781', 'CO', 'Pratul Deore\r\n', '', 17, 26, 43, 11, 12, 23, 3),
(46, 'WEB46', '7620720416', '', 'Soham Utekar\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(47, 'WEB47', '9657269224', '', 'Jay Bacchan\r\n', '', 11, 8, 19, 0, 0, 0, 1),
(48, 'WEB48', '', '', 'Mayank Agarwal\r\n', '', 0, 0, 0, 0, 0, 0, 0),
(49, 'WEB49', '7219256782', '', 'Chinmay\r\n', '', 11, 14, 25, 0, 0, 0, 1),
(50, 'WEB50', '8421772551', 'CO', 'Pushkar Dounde\r\n', '', 18, 18, 36, 18, 22, 40, 2),
(51, 'WEB51', '8007885403', '', 'Shankar Miradhar', 'Rohan Dhere', 14, 8, 22, 0, 0, 0, 1),
(52, 'WEB52', '9860417651', 'CH', 'Harsh Sant', 'Kashesh Shah', 18, 14, 32, 15, 8, 23, 3),
(53, 'WEB53', '9225579828', '', 'Sukhad Pathak', '', 14, 10, 24, 0, 0, 0, 1),
(54, 'WEB54', '7028142295', '', 'Rahul Jain', 'Prashant Pawar', 8, 6, 14, 0, 0, 0, 1),
(55, 'WEB55', '7887574573', 'CO', 'Lokesh Puri', 'Manar Chavan', 19, 22, 41, 16, 16, 32, 3),
(56, 'WEB56', '9225579828', 'CO', 'Sukhad Pathak', '', 23, 32, 55, 20, 24, 44, 2),
(57, 'WEB57', '9049379400', 'ME', 'Kartik Sundaram', 'Harsh Nangare', 18, 14, 32, 19, 16, 35, 3),
(58, 'WEB58', '9890086296', 'CO', 'Tapan Meheta', 'Akshay Bali', 22, 20, 42, 15, 22, 37, 3),
(59, 'WEB59', '9823877695', 'CO', 'Hrishikesh Jadhav', 'Rahil Kumar', 17, 20, 37, 14, 18, 32, 3),
(60, 'WEB60', '9689823303', 'CO', 'Pranav Barve', 'Rohit Awate', 20, 26, 46, 20, 26, 46, 2),
(61, 'WEB61', '8275237164', '', 'Stuti Biyani', 'Divyank Agarwal', 11, 12, 23, 0, 0, 0, 1),
(63, 'WEB62', '8888041374', '', 'Abhijit Kochure', 'Rohan Patil', 8, 10, 18, 0, 0, 0, 1),
(68, 'WEB63', '9657589376', 'ME', 'Janvi Tambe', 'Himanshu Gaikwad', 16, 16, 32, 12, 10, 22, 3),
(69, 'WEB64', '9175179115', '', 'Bhumika Patil', 'Harshada Kakade', 12, 8, 20, 0, 0, 0, 1),
(70, 'WEB65', '9765140838', 'CO', 'Arsh Pakhare', 'Vrushabh Bhandari', 16, 16, 32, 13, 16, 29, 3),
(71, 'WEB66', '9923428878', 'CE', 'Arjun Patil', 'Hrishikesh Buche', 21, 14, 35, 17, 12, 29, 3),
(72, 'WEB67', '7030483839', 'CO', 'Pratik kasar', 'Rohit Jadhav', 17, 16, 33, 13, 22, 35, 3),
(73, 'WEB68', '8149843230', 'ME', 'Rana Kadolkar', 'Zaid Khan', 19, 20, 39, 19, 20, 39, 2),
(74, 'WEB69', '7559202855', '', 'Siddharth', 'Sahil', 10, 10, 21, 0, 0, 0, 1),
(75, 'WEB70', '9011654336', '', 'Omkar Shinde', 'Utkarsh Bhavre', 16, 16, 32, 0, 0, 0, 2),
(76, 'WEB71', '9511853474', '', 'Mohit', 'Tanmay', 15, 12, 27, 0, 0, 0, 1),
(84, 'web99', '9999999999', 'CO', '', '', 0, 0, 0, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `webseries`
--

CREATE TABLE `webseries` (
  `id` int(1) NOT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `option1` varchar(1000) DEFAULT NULL,
  `option2` varchar(1000) DEFAULT NULL,
  `option3` varchar(1000) DEFAULT NULL,
  `option4` varchar(1000) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL,
  `seriesname` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webseries`
--

INSERT INTO `webseries` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `seriesname`) VALUES
(1, 'Where were ross and Emily were supposed to go for their honeymoon?  \r\n', 'Athens', 'London', 'Switzerland', 'Albino', 'A', 0),
(2, 'What was the name of chandler’s roommate after joey moved to another apartment? ', 'Eddie', 'Kip', 'Russ', 'Sam', 'A', 0),
(3, 'To whom did Rachel serve her last ever cup of coffee to as a waitress at Central Perk? ', 'Gunther', 'Monica', 'Ross', 'Chandler', 'D', 0),
(4, 'What is the name of the dog that Phoebe hides in Monica and Chandler\'s apartment? ', 'Lisa', 'Tommy', 'Klunkers', 'Daizy', 'C', 0),
(5, ':What is the stage name Phoebe comes up with for Joey? ', 'Flameboy', 'Big Daddy', 'Mr. Big', 'Bloggie', 'A', 0),
(6, 'Amy, Rachel\'s sister, is jealous of Rachel\'s Ralph Lauren discount. How much discount does Rachel get? ', '45%', '55%', '65%', '75%', 'A', 0),
(7, 'Erica was from which city? ', 'New York', 'Ohio', 'Washington', 'Arizona', 'B', 0),
(8, 'Name of monica’s grandmother whose funeral was attended by all friends?', 'Althea', 'Alice', 'Judy', 'Nana', 'A', 0),
(9, 'Phoebe’s unknowing roommate?', 'Bonnie', 'Precious', 'Denise', 'Susie', 'C', 0),
(10, 'What were the names of the triplets Phoebe gave birth to? ', 'Joey,Alice,Frank jr jr   ', 'Leslie, chandler,frank jr jr', 'Joey , leslie, Frank III', 'Chandler,Laura,Frank III      ', 'B', 0),
(11, 'Finish this chandler\'s sentence: \"Gum would be….....\"', 'Exactly what I need', 'A terrible idea', 'great', 'perfection', 'D', 0),
(12, 'How did Ross and carol decide on the name Ben for their child? ', 'Nametag on a Uniform', 'They just liked it', 'Family name', 'Phoebe recommended it', 'A', 0),
(13, 'What did phobe write as monica\'s full name in the One with the Race car bed?', 'Monica Fellulah geller', 'Monica Frances geller', 'Monica Phoebe Geller', 'Monica Phalnge Geller', 'A', 0),
(14, 'What is the number of Chandler\'s house in Yemen Road Yemen?', '25', '14', '15', '19', 'C', 0),
(15, 'When was the first time Harry heard about Sirius Black?', 'Daigon Alley', 'Knight Bus', 'Leaky cauldron', 'from Mr. Weasly(Ron\'s Father)', 'B', 1),
(16, 'According to movies Who gives Harry potter the Gillyweed for the second Triwizard challenge?', 'Dobby', 'Mad eye moody', 'Hermione', 'Nevill  Longbottom', 'D', 1),
(17, 'The Imperius Curse (Imperio) what does it do(r2)?', 'Kill', 'Torture', 'Deafnes', 'Controls the other person\n\'s actions', 'D', 1),
(18, 'What is Prof. Mcgonagall animagus?', 'Ferret', 'Dog', 'Cat', 'Eagle', 'C', 1),
(19, 'According to Harry potter movie series What is an Animagus?', 'A person who can change appearance at will', 'A person who can transform into a animal', 'A person who  transforms into a warewolf every full moon', 'None', 'B', 1),
(20, 'Harry Potter and the Deathly Hallows: Part 1  Who destroyed Slythrine\'s Locket (Horcrux)?', 'RAB', 'Ron Weasley', 'Hermione Granger', 'Harry Potter', 'B', 1),
(21, 'Harry Potter and Half-Blood Prince  Who poisened Ron with LOVE potion?', 'Romilda Vane', 'Hermione', 'Luna Lovegood', 'Lawender Brown', 'A', 1),
(22, 'Harry Potter and Half-Blood Prince Who disarms Dumbledore?', 'Draco Malfoy', 'Lestrange Bellatrix', 'Voldemort', 'Severus Snape', 'A', 1),
(23, 'In Harry Potter and Order of the Phoenix \" Grawp\" (gaint) is Hagrid\'s...?', 'Brother', 'Half-Brother', 'Cousin', 'Friend', 'B', 1),
(24, 'Which character was NOT an Animagus?', 'Professor McGonagall', 'James Potter', 'Remus Lupin', 'Peter Pettigrew', 'C', 1),
(25, 'How many points are awarded foe catching a snitch?', '100', '150', '200', '300', 'B', 1),
(26, 'Sirius Black escapes on what kind of fantastic beast in the Prisoner of Azkaban?', 'Hippogriff', 'Dragon', 'Phoenix', 'Unicorn', 'A', 1),
(27, 'Harry Potter and Order of the Phoenix  Where is HQ of Order of the Phoenix?', 'Number 12 Grimmauld Place(Sirius Black\'s house)', 'Burrow(Weasleyl house)', 'Godric\'s Hollow', 'Number 4 Privet Drive Little Whinging(Dursley House)', 'A', 1),
(28, 'According to Harry Potter movie series which spell works against a dementor?', 'Imperio', 'Crucio', 'Avada Kadava', 'Expectro Patronum', 'D', 1),
(29, 'Who destroyed the last remaining horcrux?', 'Harry Potter', 'Hermione', 'Nevill  Longbottom', 'Ron Weasley', 'C', 1),
(30, 'What is the surname given to bastards born in Dorne?', 'Sand', 'Waters ', 'Stone', 'Rivers', 'A', 2),
(31, 'Who is Lord Commander of the Kingsguard at the beginning of Game of Thrones?', 'Ser Jeor Mormont', 'Ser Jaime Lannister', 'Ser Loras Tyrell', 'Ser Barristan Selmy', 'D', 2),
(32, 'Who is known as \'The-King-Beyond-the-Wall\'?', 'The Night King', 'Mance Rayder', 'Tormund Giantsbane', 'Stannis Baratheon', 'B', 2),
(33, 'Who is the ruler of the Iron Islands at the beginning of Game of Thrones?', 'Aeron Greyjoy', 'Yara Greyjoy', 'Euron Greyjoy', 'Balon Greyjoy', 'D', 2),
(34, 'Grey Worm and Missandei became allies of Daenerys Targaryen after she liberated the slaves of which city?', 'Astapor', 'Yunkai', 'Meereen', 'Qarth', 'A', 2),
(35, 'What is the name of Joffrey Baratheon\'s Valyrian steel blade?', 'Lion\'s Tooth', 'Dark Sister', 'Heart Eater', 'Widow\'s Well', 'D', 2),
(36, 'What are House Greyjoy\'s words?', 'We Remember', 'We Guard the Way', 'We Pay the Iron Price', 'We do not Sow', 'D', 2),
(37, 'Who says, \"If we die, we die. But first, we\'ll live\"?', 'Shae', 'Tyrion', 'Ygritte', 'Bronn', 'C', 2),
(38, 'Who killed Jon Arryn?', 'Cercei Lannister', 'Peter Baelish', 'Lysa Arryn', 'Jaime Lannister', 'C', 2),
(39, 'Who has Brienne sworn her loyalty to?', 'Catelyn Stark', 'House Stark', 'Stannis Baratheon', 'House Baratheon', 'A', 2),
(40, 'Where does Tyrion Lannister meet Shae?', 'The Eyrie', 'The Lannister Camp', 'King\'s Landing', 'A Brothel In the North', 'B', 2),
(41, 'After Renly Baratheon dies, who do most of his bannermen submit to?', 'Robert Baratheon', 'Joffrey Baratheon', 'Stannis Baratheon', 'Jon Snow', 'C', 2),
(42, 'Who has NOT competed in a trial by combat?', 'Oberyn Martell', 'Bronn', 'Jaime Lannister', 'The Hound', 'C', 2),
(43, 'What animal is on House Baratheon\'s sigil?', 'Boar', 'Bear', 'Stag', 'Lion', 'C', 2),
(44, 'What does \"dracarys\" mean?', 'Burn', 'Drogonfire', 'Kill', 'Dragon', 'B', 2),
(45, 'At the beginning of the Avengers, someone is watching the scientists work on the Tesseract from afar. Who is this?', 'Hawkeye', 'Thor', 'Captain America', 'Black Widow', 'A', 3),
(46, 'Avengers: Infinity War began with Thanos and his henchmen inside the Asgardian ship looking for the space stone. Who told Thanos that they had a Hulk on the Asgardian ship with them?', 'Thor', 'Loki', 'Hiemdal', 'No one', 'B', 3),
(47, ' Before Thanos killed Heimdell, where did he send Hulk by using the bifrost?', 'China', 'New York', 'Russia', 'Poland', 'B', 3),
(48, 'Where did Natasha Romanoff find Bruce Banner?', 'Calcutta ', 'Nepal', 'California', 'Mexico', 'A', 3),
(49, ' Where was Peter Parker when his spider senses tingled triggering that something was wrong in New York?', 'Hotel', 'School', 'School Bus', 'Home', 'C', 3),
(50, 'Who has a set of Captain America trading cards that are collectible editions?', 'Iron man', 'Shuri', 'Hawkeye', 'Phil Coulson ', 'D', 3),
(51, 'When the Maximoff twins confront Ulysses Klaue, he tells them that there is only one thing that he fears. What is it?', 'Cuttlefish', 'Catfish', 'Sting Ray', 'Shark', 'A', 3),
(52, 'Hawkeye\'s first appearance in which movie?', 'Avengers 1', 'Thor', 'Iron Man', 'Avengers 2', 'B', 3),
(53, 'After the party at Tony Stark\'s place, who is the first Avenger to try lifting Thor\'s hammer?', 'Hawkeye', 'Hulk', 'Iron Man', 'Captain America', 'A', 3),
(54, 'When the Avengers fight Ultron and the Maximoff twins on Ulysses Klaue\'s boat, which Avenger does Wanda Maximoff not manage to use her mind powers on?', 'Hulk', 'Black Widow', 'Iron man', 'Hawkeye', 'D', 3),
(55, 'After leaving the safe house, where does Thor go for help with the visions Wanda Maximoff gave to him in Africa?', 'London', 'Paris', 'Manchester', 'Africa', 'A', 3),
(56, 'After Loki is captured in Germany (Avengers 1), two Avengers fight over him during the flight back to the helicarrier. Which two Avengers fight?', 'Iron Man and Thor', 'Captain and Thor', 'Captain and Iron Man', 'Thor and Loki', 'A', 3),
(57, 'Which of the following heroes knew the location of the soul stone prior to the events of \"Avengers: Infinity War\"?', 'Gamora', 'Vision', 'Thor', 'Peter Guil', 'A', 3),
(58, ' During the fight on Sokovia, Captain America gives a pep talk. Finish his final statement: \"You get hurt, hurt them back. You get killed _______.\"', 'kill them back', 'go down swinging', 'rub some dirt on it', 'walk it off', 'D', 3),
(59, ' Which of the Avengers did NOT kill a member of the Black Order?', 'Iron Man', 'Wanda', 'Scarlet Witch', 'Captain America', 'D', 3),
(60, 'From where did Sheldon get the ring that he showed to us at the end of season 8?', 'His mother', 'His sister', 'Raj', 'Amy', 'A', 4),
(61, 'In \"The Deception Verification\", Leonard surprises Penny by returning early from the South Sea, but doesn\'t tell Sheldon so he can have a few days alone with Penny. When Sheldon finds out, he is hurt to discover just how important his friendship means to Leonard. Which estrogen-influenced friend convinces Sheldon and Leonard to get past their stupid fight?', 'Raj', 'Howard', 'Bernadette ', 'Amy', 'B', 4),
(62, 'In \"The Gothowitz Deviation\", Sheldon took it upon himself to weed out what he felt were Penny\'s more annoying or undesirable habits. What did Sheldon use in this episode to modify Penny\'s behavior?', 'Chocolate', 'Ice Cream', 'Chinese', 'Money ', 'A', 4),
(63, 'Episode 1: \"Pilot\" - When Sheldon and Leonard go to Penny\'s ex-boyfriend\'s apartment, what item are they trying to retrieve?', 'Sofa', 'Television ', 'Clothes ', 'Xbox ', 'B', 4),
(64, ' What is Sheldon\'s mother called?', 'Bella Cooper', 'Heather Cooper', 'Mary Cooper', 'Violet Cooper', 'C', 4),
(65, 'Who is Sheldon\'s Sister?', 'Missy', 'Misty', 'Massie', 'Molly', 'A', 4),
(66, 'Date night takes an unpleasant turn when Sheldon uses his Relationship Closeness Inventory score to argue that his relationship with Amy is superior to everyone else\'s in their group. Which couple becomes insecure about their relationship during their double date with Sheldon and Amy in \"The First Pitch Insufficiency\"?', 'Sheldon Amy', 'Penny Leonard', 'Howard Bernadette ', 'None', 'B', 4),
(67, 'When Sheldon introduces Amy to one of his all-time favorite movies, she inadvertently ruins it for him by pointing out that the hero of the film is irrelevant as he plays no role in the outcome of the story. Which Harrison Ford film does Amy spoil for Sheldon in this episode?', 'Star wars', 'Raiders of the lost Ark', 'Batman ', 'None', 'B', 4),
(68, ' Episode 13: \"The Bat Jar Conjecture\": The guys end up competing in a \"Physics Bowl\" and decide to form a team to compete, but which one of them is kicked off the team and forms a rival team?', 'Sheldon', 'Howard', 'Penny', 'Leonard', 'A', 4),
(69, 'Episode 3: \"The Fuzzy Boots Corollary\" - When Leonard goes on the date with Penny, he has an accident. What part of the body does he accidentally hurt?', 'Leg', 'Head', 'Ass', 'Shoulder', 'B', 4),
(70, 'The \"geeks\" (Leonard and Sheldon) in this show work in the same field at Cal Tech. In what field do they work?', 'Mathematics', 'Physics ', 'Chemistry', 'Geology', 'B', 4),
(71, 'When Raj found out that Howard was going out with Bernadette, he went to Sheldon\'s place instead. Raj told Sheldon that he wanted to sleep in Leonard\'s room. After filling in a form, Sheldon gave Raj a safety briefing. Complete the following quote by Sheldon. \"In the event of a power outage, ___ will guide you to the nearest exit.\"', 'Glowing stick', 'Shiny coins', 'Silver torchlight', 'Luminous paint', 'D', 4),
(72, 'Who is Howard\'s Heat Broken to in the past?', 'Marcy Grossman', 'Missy', 'Penny', 'Bernadette ', 'A', 4),
(73, 'As Leonard and Sheldon are both intelligent physicists, they have to be thinking all the time. Sometimes they have to write it down as well, and here they try to impress Penny with it. Which of these things can not be found on Sheldon\'s board?', 'Quantum mechanics', 'String Theory', 'Born-Oppenheimer approximation', 'Differentials', 'D', 4),
(74, 'What is Sheldon\'s Grandma Nick Named as?', 'Meemaw', 'Moon Pie', 'Granny', 'None', 'A', 4),
(75, 'According to Leonard what is Sheldon\'s kryptonite', 'His Sister', 'His Mother', 'His Meemaw', 'Flu', 'B', 4),
(76, ' What happens to Dominic at the end of \"Fast & Furious\"?\n', 'Offered to work as a Informer fro FBI\r\n\n', '25 years of jail term', 'Deported to brazil', 'Escapes from a a plane over north west Pacific', 'B', 5),
(77, 'What organization was \"Fast & Furious 6\" villain Owen Shaw part of in the past?\r\n\n', 'Interpol\r\n\n', 'FBI', 'the british SAS', 'the French Legion', 'C', 5),
(78, 'How does Dom try to jog Letty\'s memory in \"Fast & Furious 6\"?\r\n\n', 'He plays the sound ofa v8 engine for her over the phone\r\n\n', 'Shows the wedding ring', 'Shows her picture of his son', 'Challenges her to a street race', 'D', 5),
(79, 'What is the name of the surveillance computer program in \"Furious 7\"?\r\n\n', 'the Pharoh\r\n\n', 'God\'s eye\n', 'the Hellion\n\n', 'Nightshade\n\n', 'B', 5),
(80, 'What disorder is affecting Letty in \"Fast & Furious 6\"?\r\n\n', 'Amnesia', 'Multiple personality disorder\n', 'Aphasia\r\n\n', 'None', 'A', 5),
(81, 'In the movie \'2 Fast 2 Furious,\' O\'Conner drives a Nissan _____.', '2015 GT-R35', 'Charger R/T', 'Silvia S15', '1999 Skyline GT-R', 'D', 5),
(82, ' Which city does Mia give birth to her son in?', 'Mexico', 'Bueno Aires', 'Sao Paulo', 'Canary Islands', 'D', 5),
(83, ' Brian O\'Conner used to work in the _____.', 'NYPD', 'LAPD', 'Miami PD', 'CPD', 'B', 5),
(84, 'Who says \"I live my life a quarter mile at a time\' ?', 'Brian', 'Letty', 'Dominic', 'Mia', 'C', 5),
(85, 'The number of the House  demanded by Dom inturn for helping Hobbs At the end of Fast and Furious?  ', '1876', '1265', '1327', '1437', 'C', 5),
(86, '\"Hey, we do what we do best. We improvise, all right?\" Who Quotes this in Fast and Furious movie series', 'Dom', 'Brian', 'Han', 'Mia', 'B', 5),
(87, 'How  did Dom and Mia\'s Father Die', 'Natural death', 'Shot by police', 'Car accident', 'None', 'C', 5),
(88, 'In The Fast and The Furious the big race in the desert is called ?', 'Race wars', 'Desert Drag', 'Race wars', 'Desert wars', 'A', 5),
(89, 'In Fast and furious movies What does Brain and Mia name there son? ', 'Jack', 'Brian jr', 'Vince', 'Jesse', 'A', 5),
(90, 'According to fast and furious movies what does D.K. stand for ? ', 'Drag king', 'Desert King', 'Driver Knight', 'Drift King', 'D', 5),
(91, 'Who is the 2nd father of Gaitonde', 'Pandit', 'Salim Kaka', 'Khanna', 'Khan Chacha', 'B', 6),
(92, 'Person Who was knowing about Area\'s all Harami?', 'Kukoo', 'Constable Katekar', 'Kanta Bai', 'Shanta tai', 'C', 6),
(93, '\"Gareeb logo ka entry sirf mandir me free hai\"-? Who quotes this in Sacred Games?', 'Subhadra', 'Kukoo', 'Kanta Bai', 'Katekar', 'A', 6),
(94, '\"Kyun aati hai yeah qurbani humari zindagi me baar baar?\" Who quotes this in Sacred Games?', 'Salim Kaka', 'Malcolm Murad', 'Mathu', 'Katekar', 'B', 6),
(95, '\"Agar mard field pe kaam karna chahe to passion, aur aurat chahe to bhoot\" Who quotes this in Sacred Games?', 'Subhadra', 'Kukoo', 'Anjali Mathur', 'Anjali Thakur', 'C', 6),
(96, '\"Kaise tuze 20 saal chutiya banaya?\" Who quotes this in Sacred Games?', 'Jojo Mascrenas', 'Parulkar', 'Nayanika', 'Bunty', 'A', 6),
(97, 'Who is the 2nd father of Gaitonde', 'Pandit', 'Salim Kaka', 'Khanna', 'Khan Chacha', 'B', 6),
(98, 'Person Who was knowing about Area\'s all Harami?', 'Kukoo', 'Constable Katekar', 'Kanta Bai', 'Shanta tai', 'C', 6),
(99, '\"Gareeb logo ka entry sirf mandir me free hai\"-? Who quotes this in Sacred Games?', 'Subhadra', 'Kukoo', 'Kanta Bai', 'Katekar', 'A', 6),
(100, '\"Kyun aati hai yeah qurbani humari zindagi me baar baar?\" Who quotes this in Sacred Games?', 'Salim Kaka', 'Malcolm Murad', 'Mathu', 'Katekar', 'B', 6),
(101, '\"Ye system, ye bombay, ye India, ye sab kaun hai?\"', 'Katekar', 'Sartaj', 'Isa', 'Parulkar', 'B', 6),
(102, '\"Dharmon ka roop yehi hai. Raahgeer ko prem se ghar bulaao. Aadar samit bhojan grahan karaao. Phir uski aatma par kabza karlo\" Who quotes this in Sacred Games?', 'Gaitonde', 'Sartaj', 'Khanna Guru Ji', 'Bipin Bhosale', 'C', 6),
(103, '\"Gutter ka kutta poore sheher pe moot dega abhi\" Who is this dialogue reffering to?', 'Parulkar', 'Sartaj', 'Bipin Bhosale', 'Isa', 'C', 6),
(104, '\"Apne l*nd se bahar nikal nahin toh wahi rahega zindagibhar \" To whom is this quoted?', 'Gaitonde', 'Bunty', 'Chhota Badariya', 'Sartaj', 'A', 6),
(105, '\"Kyun aati hai yeh qurbaani humaare zindagi mein baar baar? Allah tang aagaya hai humse\" Who quotes this in Sacred Games?', 'Gaitonde', 'Malcolm Murad', 'Sartaj', 'Bunty', 'B', 6),
(106, 'Carlisle only turned Edward because he was dying from what illness?', 'Yellow Fever', 'The black Plague', 'Polio', 'Spanish Influenza', 'D', 7),
(107, 'What is the name of the tribe that Jacob and his family belong to?', 'Quileute Tribe', 'Sequioa Tribe', 'Quill Tribe', 'Black Tribe', 'A', 7),
(108, 'What is the name of the only female member of the warewolf pack?', 'Lisa crall', 'Leah Clearwater', 'Rebacca Black', 'laura Uley', 'B', 7),
(109, 'What is the name of the vampire that started the newborn army?', 'Aro ', 'Victoria', 'Volturi', 'Marcus', 'B', 7),
(110, 'Carlisle is Edward\'s Biological Father.', 'TRUE', 'FALSE', 'BOTH', 'None of the above', 'B', 7),
(111, 'Carlisle only turned Edward because he was dying from what illness?', 'Yellow Fever', 'The black Plague', 'Polio', 'Spanish Influenza', 'D', 7),
(112, 'What is the name of the tribe that Jacob and his family belong to?', 'Quileute Tribe', 'Sequioa Tribe', 'Quill Tribe', 'Black Tribe', 'A', 7),
(113, 'What is the name of the only female member of the warewolf pack?', 'Lisa crall', 'Leah Clearwater', 'Rebacca Black', 'laura Uley', 'B', 7),
(114, 'What is the name of the vampire that started the newborn army?', 'Aro ', 'Victoria', 'Volturi', 'Marcus', 'B', 7),
(115, 'Carlisle is Edward\'s Biological Father.', 'TRUE', 'FALSE', 'BOTH', 'None of the above', 'B', 7),
(116, 'What is the name of bella\'s school?', 'City International school', 'St. cullens', 'Mc henry', 'Forks', 'D', 7),
(117, 'When Edward and Bella were in the diner and Edward was telling Bella what everybody in there was thinking ..what was the last person thinking?', 'Food', 'Dinasouras', 'Life', 'Cat', 'D', 7),
(118, 'Who does Jacob imprint on?', 'Reneesmee', 'Alice', 'Bella', 'Leah', 'A', 7),
(119, 'Who went to the volturi saying that cullen\'s created an immortal child?', 'Irina', 'Alice', 'Emily ', 'Leah', 'A', 7),
(120, 'How did Reneesmee talk to aro?', 'By her touch', 'By eye contact', 'Through Vision', 'By mouth', 'A', 7),
(121, 'Jesse\'s special brand of meth is called?', 'Rabid Dog', 'Captain Crunch', 'Chili P', 'Cayenne P', 'C', 8),
(122, 'What\'s Jesse\'s old dream?', 'To be an artist', 'To be a chef', 'To be a surfer', 'To be a professional video gamer', 'A', 8),
(123, 'Saul\'s birth name was..', 'Jimmy McGill', 'Jimmy McCormick', 'Jimmy Mckay', 'Jimmy O\'Connor', 'A', 8),
(124, 'What was Jesse Pinkman\'s license plate?', 'YEAH BITCH', 'CAPN COOK', 'THE CAPN', 'GO AWAY', 'C', 8),
(125, 'What\'s the name of the fried chicken restaurant owned by Gus Fring?', 'Pollos Hermanos', 'Pollo Feliz', 'Delicioso Pollo', 'Amigos de Pollo', 'A', 8),
(126, 'Jesse Pinkman refers to himself as this in the first season:', 'Master Chef', 'Chef-Boyy-R-Dee', 'Captain Cook', 'Da Swedish Chef', 'C', 8),
(127, 'What item does Marie steal for Skyler\'s baby shower gift?', 'A diamond baby tiara', 'Diamond-covered baby shoes', 'A designer baby dress', 'A diamond-covered pacifier', 'A', 8),
(128, 'What does Walt poison Brock with in the season 4?', 'Ricin', 'Lily of the Valley', 'Nightshade', 'Arsenic', 'B', 8),
(129, 'In season four of \"Breaking Bad\", Mike gets shot in which part of his body?', 'His Nose', 'His Forehead', 'His Chin', 'His Ear', 'D', 8),
(130, 'What is the name of the acid that is used to corrosively dispose of Walter\'s victims?', ' Hydrochloric Acid', 'Hydrofluoric Acid', 'Hydrochloride', 'Carbonic acid', 'B', 8),
(131, 'Which song best describes the style of Saul Goodman’s office?', 'Paradise City', 'America is Beautiful', 'Home on the Range', 'Panama', 'B', 8),
(132, 'Walt’s pre-Heisenberg vehicle, the one he runs over the gangsters in, is a…', 'Chevy Citation', 'Nissan Cube', 'Ford Explorer', 'Pontiac Aztek', 'D', 8),
(133, 'Where is Gus Fring from?', 'Argentina', 'Chile', 'Italy', 'Germany', 'B', 8),
(134, 'What stolen item first brings Marie’s kleptomania to a head?', 'Pair of Shoes', 'A collectible spoon', 'A baby tiara', 'Photo frame', 'C', 8),
(135, 'Which dream of Skyler’s went unrealized?', 'Going to Cancum', 'Being a writer', 'Owning a business', 'Learning to speak Spanish', 'B', 8),
(136, '\"Now we\'re being followed by ______. Never heard of that before.\" What is the missing word?', 'Rocks', 'Pirates', 'The Sea', 'Dead Men', 'A', 9),
(137, 'What is Jack\'s last line in \"Dead Man\'s Chest\"?', 'Hello Beasty', 'Hello Octy', 'Hello Death', 'Hello Animal', 'A', 9),
(138, 'Who stabbs Davy Jones\'s heart', 'Jack Sparrow', 'Will Turner', 'Elizabeth', 'Bill Turner', 'B', 9),
(139, 'Jack Sparrow was sentenced to be executed. Which \'new invention\' was his method of choice?', 'Guillotine ', 'Ropes', 'With Fire', 'None', 'A', 9),
(140, '\"Did no one come to save me just because they ________ me?\" What is the missing word here?(Pirates of Carribean)', 'Hated', 'Missed', 'Loved', 'Left', 'B', 9),
(141, 'Who was revealed to be Carina Smyth\'s father?', 'Captain Barbossa', 'Jack Sparrow', 'Will Turner', 'Davy Jones', 'A', 9),
(142, 'In \"Dead Man\'s Chest\", Jack tells Elizabeth they are very much alike. Elizabeth agrees, except for four things: \"honor, decency, a moral center, and ________.\" What is the last thing?', 'Hygene', 'Money', 'Swordsmanship', 'Love', 'A', 9),
(143, 'When we first see her in \"At World\'s End\", what is Elizabeth doing and where is she?', 'Singing in Singapore', 'Lying in Bed', 'In a ship', 'With her father', 'A', 9),
(144, '\"I do that quite a lot. Yet people are always surprised.\" What, according to Jack, DOES he do \"quite a lot\".', 'Drink rum', 'Do something honourable and good', 'Shoot things', 'Tell the truth', 'D', 9),
(145, 'After the credits, there was one final scene. Who appeared to have returned in Will and Elizabeth\'s bedroom?', 'Davy Jones', 'His Father', 'Henry Turner', 'Jack Sparrow', 'A', 9),
(146, 'Who is Last Captain of the Flying Dutchman', 'Will Turner', 'Davy Jones', 'Bill Turner', 'Jack Sparrow', 'A', 9),
(147, 'Who quoted this line \"From the sweat in our brows,To the strength of our backs. Men, Hoist the Colours.\" ?', 'Elizabeth ', 'Jack Sparrow', 'Will Turner', 'Captain Barbossa', 'A', 9),
(148, 'Who was the captain of the Black Pearl before Jack Sparrow?', 'No one', 'Captain Barbossa', 'Cutler Beckett', 'Davy Jones', 'B', 9),
(149, 'How many souls did Jack need to give to Davy Jones (including Will)?', '50', '100', '150', '200', 'B', 9),
(150, 'Who was given the black spot by Davy Jones?', 'Davy Jones', 'Jack Sparrow', 'Will Turner', 'Barbossa', 'B', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aptitude`
--
ALTER TABLE `aptitude`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chemical`
--
ALTER TABLE `chemical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil`
--
ALTER TABLE `civil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanical`
--
ALTER TABLE `mechanical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r1g1`
--
ALTER TABLE `r1g1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r1g2`
--
ALTER TABLE `r1g2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webseries`
--
ALTER TABLE `webseries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
