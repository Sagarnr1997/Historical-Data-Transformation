create database Drivers;
use Drivers;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `responses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_ec1de00e70` (`employee_id`),
  CONSTRAINT `fk_rails_ec1de00e70` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
);

INSERT INTO `employees` (`id`, `name`, `department`, `location`, `gender`, `age`, `manager_id`) VALUES
(1, 'Lesley Farrell', 'Sales', 'San Francisco', 'Male', 42, NULL),
(2, 'Manie Halvorson', 'Sales', 'San Francisco', 'Female', 23, 1),
(3, 'Solomon Fritsch', 'Sales', 'San Francisco', 'Male', 34, 1),
(4, 'Jeff Bechtelar', 'Sales', 'Bangalore', 'Female', 31, 1),
(5, 'Brooks Hilll', 'Sales', 'San Francisco', 'Male', 22, 1),
(6, 'Nobuko Dach', 'Sales', 'San Francisco', 'Female', 35, 2),
(7, 'Sage Beier', 'Sales', 'Mumbai', 'Female', 34, 2),
(8, 'Sharlene Gerlach', 'Sales', 'Bangalore', 'Female', 29, 2),
(9, 'Marie Schroeder', 'Sales', 'San Francisco', 'Female', 45, 2),
(10, 'Donnell Balistreri', 'Sales', 'Mumbai', 'Male', 26, 3),
(11, 'Diann Erdman', 'Sales', 'Bangalore', 'Male', 41, 3),
(12, 'Kandra Lakin', 'Marketing', 'Bangalore', 'Male', 48, NULL),
(13, 'Magnolia Kohler', 'Marketing', 'San Francisco', 'Female', 50, 12),
(14, 'Martina Feil', 'Marketing', 'Bangalore', 'Male', 49, 12),
(15, 'Remedios Baumbach', 'Marketing', 'San Francisco', 'Male', 30, 12),
(16, 'Fern Stroman', 'Marketing', 'Mumbai', 'Female', 26, 12),
(17, 'Natashia Windler', 'Marketing', 'Bangalore', 'Male', 50, 12),
(18, 'Leila Lemke', 'Marketing', 'Mumbai', 'Male', 30, 13),
(19, 'Aida Jacobi', 'Marketing', 'Bangalore', 'Male', 48, 13),
(20, 'Demetrius Hahn', 'Marketing', 'San Francisco', 'Female', 48, 13),
(21, 'Kyung Kub', 'Marketing', 'San Francisco', 'Male', 36, 13),
(22, 'Sonya Beier', 'Marketing', 'Bangalore', 'Male', 50, 13),
(23, 'Rina Gerhold', 'Engineering', 'Bangalore', 'Male', 27, NULL),
(24, 'Annika Ward', 'Engineering', 'San Francisco', 'Male', 49, 23),
(25, 'Jacquelyn Hahn', 'Engineering', 'Bangalore', 'Male', 48, 23),
(26, 'Nigel Ritchie', 'Engineering', 'Bangalore', 'Male', 48, 23),
(27, 'Veda Prosacco', 'Engineering', 'Bangalore', 'Male', 22, 23),
(28, 'Vernon Hudson', 'Engineering', 'Mumbai', 'Male', 37, 23),
(29, 'Marhta Johnston', 'Engineering', 'Bangalore', 'Male', 26, 23),
(30, 'Alfred Okuneva', 'Engineering', 'San Francisco', 'Female', 50, 24),
(31, 'Kimberley Jacobi', 'Engineering', 'Mumbai', 'Male', 22, 24),
(32, 'Rusty Raynor', 'Engineering', 'San Francisco', 'Male', 49, 24),
(33, 'Magdalena Bergnaum', 'Engineering', 'Mumbai', 'Female', 50, 24),
(34, 'Malika Deckow', 'Support', 'San Francisco', 'Male', 46, NULL),
(35, 'Becky Rempel', 'Support', 'San Francisco', 'Male', 44, 34),
(36, 'Nikole Streich', 'Support', 'Bangalore', 'Male', 31, 34),
(37, 'Yuette Morar', 'Support', 'San Francisco', 'Female', 45, 34),
(38, 'Lilia Hickle', 'Support', 'San Francisco', 'Female', 46, 34),
(39, 'Joyce Rau', 'Support', 'Mumbai', 'Female', 29, 34),
(40, 'Gerardo Gulgowski', 'Support', 'San Francisco', 'Male', 22, 34),
(41, 'Theodora Hahn', 'Support', 'Bangalore', 'Female', 50, 34),
(42, 'Mohammed Corkery', 'Support', 'Bangalore', 'Male', 23, 34),
(43, 'Gudrun Price', 'Support', 'Mumbai', 'Female', 33, 34),
(44, 'Shirley Crist', 'Support', 'San Francisco', 'Female', 40, 34),
(45, 'Evonne Grant', 'Operations', 'San Francisco', 'Female', 39, NULL),
(46, 'Phylicia Streich', 'Operations', 'Bangalore', 'Female', 45, 45),
(47, 'Raylene Mueller', 'Operations', 'Bangalore', 'Female', 26, 45),
(48, 'Annabelle Kuhic', 'Operations', 'Bangalore', 'Male', 34, 45),
(49, 'Nikole Kulas', 'Operations', 'Mumbai', 'Male', 46, 45),
(50, 'Stanton Daniel', 'Operations', 'San Francisco', 'Female', 34, 45),
(51, 'Nicholas Ankunding', 'Operations', 'Mumbai', 'Male', 24, 45),
(52, 'Olinda Heidenreich', 'Operations', 'Mumbai', 'Female', 41, 45),
(53, 'Joycelyn Halvorson', 'Finance', 'Mumbai', 'Male', 47, NULL),
(54, 'Bari Kunde', 'Finance', 'San Francisco', 'Female', 38, 53),
(55, 'Salena Upton', 'Finance', 'Mumbai', 'Male', 27, 53);

INSERT INTO `responses` (`id`, `driver_name`, `score`, `employee_id`, `created_at`) VALUES
(1, 'Role Clarity', '2', 1, '2019-03-11 09:31:27'),
(2, 'Career Growth', '4', 1, '2019-03-11 09:31:27'),
(3, 'Company Policies', '1', 1, '2019-03-11 09:31:27'),
(4, 'Manager Support', '2', 1, '2019-03-11 09:31:27'),
(5, 'Role Clarity', '2', 2, '2019-03-11 09:31:27'),
(6, 'Career Growth', '2', 2, '2019-03-11 09:31:27'),
(7, 'Company Policies', '2', 2, '2019-03-11 09:31:27'),
(8, 'Manager Support', '2', 2, '2019-03-11 09:31:27'),
(9, 'Role Clarity', '3', 3, '2019-03-11 09:31:27'),
(10, 'Career Growth', '1', 3, '2019-03-11 09:31:27'),
(11, 'Company Policies', '5', 3, '2019-03-11 09:31:27'),
(12, 'Manager Support', '2', 3, '2019-03-11 09:31:27'),
(13, 'Role Clarity', '1', 4, '2019-03-11 09:31:27'),
(14, 'Career Growth', '3', 4, '2019-03-11 09:31:27'),
(15, 'Company Policies', '4', 4, '2019-03-11 09:31:27'),
(16, 'Manager Support', '2', 4, '2019-03-11 09:31:27'),
(17, 'Role Clarity', '4', 5, '2019-03-11 09:31:27'),
(18, 'Career Growth', '1', 5, '2019-03-11 09:31:27'),
(19, 'Company Policies', '4', 5, '2019-03-11 09:31:27'),
(20, 'Manager Support', '5', 5, '2019-03-11 09:31:27'),
(21, 'Role Clarity', '1', 6, '2019-03-11 09:31:27'),
(22, 'Career Growth', '3', 6, '2019-03-11 09:31:27'),
(23, 'Company Policies', '5', 6, '2019-03-11 09:31:27'),
(24, 'Manager Support', '2', 6, '2019-03-11 09:31:27'),
(25, 'Role Clarity', '1', 7, '2019-03-11 09:31:27'),
(26, 'Career Growth', '4', 7, '2019-03-11 09:31:27'),
(27, 'Company Policies', '5', 7, '2019-03-11 09:31:27'),
(28, 'Manager Support', '4', 7, '2019-03-11 09:31:27'),
(29, 'Role Clarity', '1', 8, '2019-03-11 09:31:27'),
(30, 'Career Growth', '3', 8, '2019-03-11 09:31:27'),
(31, 'Company Policies', '4', 8, '2019-03-11 09:31:27'),
(32, 'Manager Support', '3', 8, '2019-03-11 09:31:27'),
(33, 'Role Clarity', '4', 9, '2019-03-11 09:31:27'),
(34, 'Career Growth', '3', 9, '2019-03-11 09:31:27'),
(35, 'Company Policies', '3', 9, '2019-03-11 09:31:27'),
(36, 'Manager Support', '2', 9, '2019-03-11 09:31:27'),
(37, 'Role Clarity', '5', 10, '2019-03-11 09:31:27'),
(38, 'Career Growth', '1', 10, '2019-03-11 09:31:27'),
(39, 'Company Policies', '3', 10, '2019-03-11 09:31:27'),
(40, 'Manager Support', '1', 10, '2019-03-11 09:31:27'),
(41, 'Role Clarity', '4', 11, '2019-03-11 09:31:27'),
(42, 'Career Growth', '5', 11, '2019-03-11 09:31:27'),
(43, 'Company Policies', '5', 11, '2019-03-11 09:31:27'),
(44, 'Manager Support', '4', 11, '2019-03-11 09:31:27'),
(45, 'Role Clarity', '2', 12, '2019-03-11 09:31:27'),
(46, 'Career Growth', '2', 12, '2019-03-11 09:31:27'),
(47, 'Company Policies', '5', 12, '2019-03-11 09:31:27'),
(48, 'Manager Support', '1', 12, '2019-03-11 09:31:27'),
(49, 'Role Clarity', '1', 13, '2019-03-11 09:31:27'),
(50, 'Career Growth', '1', 13, '2019-03-11 09:31:27'),
(51, 'Company Policies', '1', 13, '2019-03-11 09:31:27'),
(52, 'Manager Support', '4', 13, '2019-03-11 09:31:27'),
(53, 'Role Clarity', '3', 14, '2019-03-11 09:31:27'),
(54, 'Career Growth', '1', 14, '2019-03-11 09:31:27'),
(55, 'Company Policies', '3', 14, '2019-03-11 09:31:27'),
(56, 'Manager Support', '3', 14, '2019-03-11 09:31:27'),
(57, 'Role Clarity', '4', 15, '2019-03-11 09:31:27'),
(58, 'Career Growth', '4', 15, '2019-03-11 09:31:27'),
(59, 'Company Policies', '2', 15, '2019-03-11 09:31:27'),
(60, 'Manager Support', '2', 15, '2019-03-11 09:31:27'),
(61, 'Role Clarity', '3', 16, '2019-03-11 09:31:27'),
(62, 'Career Growth', '3', 16, '2019-03-11 09:31:27'),
(63, 'Company Policies', '3', 16, '2019-03-11 09:31:27'),
(64, 'Manager Support', '4', 16, '2019-03-11 09:31:27'),
(65, 'Role Clarity', '5', 17, '2019-03-11 09:31:27'),
(66, 'Career Growth', '2', 17, '2019-03-11 09:31:27'),
(67, 'Company Policies', '2', 17, '2019-03-11 09:31:27'),
(68, 'Manager Support', '3', 17, '2019-03-11 09:31:27'),
(69, 'Role Clarity', '1', 18, '2019-03-11 09:31:27'),
(70, 'Career Growth', '5', 18, '2019-03-11 09:31:27'),
(71, 'Company Policies', '2', 18, '2019-03-11 09:31:27'),
(72, 'Manager Support', '3', 18, '2019-03-11 09:31:27'),
(73, 'Role Clarity', '2', 19, '2019-03-11 09:31:27'),
(74, 'Career Growth', '4', 19, '2019-03-11 09:31:27'),
(75, 'Company Policies', '2', 19, '2019-03-11 09:31:27'),
(76, 'Manager Support', '5', 19, '2019-03-11 09:31:27'),
(77, 'Role Clarity', '3', 20, '2019-03-11 09:31:27'),
(78, 'Career Growth', '5', 20, '2019-03-11 09:31:27'),
(79, 'Company Policies', '1', 20, '2019-03-11 09:31:27'),
(80, 'Manager Support', '3', 20, '2019-03-11 09:31:27'),
(81, 'Role Clarity', '2', 21, '2019-03-11 09:31:27'),
(82, 'Career Growth', '3', 21, '2019-03-11 09:31:27'),
(83, 'Company Policies', '1', 21, '2019-03-11 09:31:27'),
(84, 'Manager Support', '1', 21, '2019-03-11 09:31:27'),
(85, 'Role Clarity', '1', 22, '2019-03-11 09:31:27'),
(86, 'Career Growth', '2', 22, '2019-03-11 09:31:27'),
(87, 'Company Policies', '2', 22, '2019-03-11 09:31:27'),
(88, 'Manager Support', '1', 22, '2019-03-11 09:31:27'),
(89, 'Role Clarity', '3', 23, '2019-03-11 09:31:27'),
(90, 'Career Growth', '2', 23, '2019-03-11 09:31:27'),
(91, 'Company Policies', '1', 23, '2019-03-11 09:31:27'),
(92, 'Manager Support', '5', 23, '2019-03-11 09:31:27'),
(93, 'Role Clarity', '2', 24, '2019-03-11 09:31:27'),
(94, 'Career Growth', '1', 24, '2019-03-11 09:31:27'),
(95, 'Company Policies', '4', 24, '2019-03-11 09:31:27'),
(96, 'Manager Support', '1', 24, '2019-03-11 09:31:27'),
(97, 'Role Clarity', '1', 25, '2019-03-11 09:31:27'),
(98, 'Career Growth', '3', 25, '2019-03-11 09:31:27'),
(99, 'Company Policies', '4', 25, '2019-03-11 09:31:27'),
(100, 'Manager Support', '3', 25, '2019-03-11 09:31:27'),
(101, 'Role Clarity', '2', 26, '2019-03-11 09:31:27'),
(102, 'Career Growth', '2', 26, '2019-03-11 09:31:27'),
(103, 'Company Policies', '3', 26, '2019-03-11 09:31:27'),
(104, 'Manager Support', '2', 26, '2019-03-11 09:31:27'),
(105, 'Role Clarity', '1', 27, '2019-03-11 09:31:27'),
(106, 'Career Growth', '2', 27, '2019-03-11 09:31:27'),
(107, 'Company Policies', '2', 27, '2019-03-11 09:31:27'),
(108, 'Manager Support', '3', 27, '2019-03-11 09:31:27'),
(109, 'Role Clarity', '2', 28, '2019-03-11 09:31:27'),
(110, 'Career Growth', '4', 28, '2019-03-11 09:31:27'),
(111, 'Company Policies', '2', 28, '2019-03-11 09:31:27'),
(112, 'Manager Support', '1', 28, '2019-03-11 09:31:27'),
(113, 'Role Clarity', '5', 29, '2019-03-11 09:31:27'),
(114, 'Career Growth', '2', 29, '2019-03-11 09:31:27'),
(115, 'Company Policies', '4', 29, '2019-03-11 09:31:27'),
(116, 'Manager Support', '1', 29, '2019-03-11 09:31:27'),
(117, 'Role Clarity', '2', 30, '2019-03-11 09:31:27'),
(118, 'Career Growth', '2', 30, '2019-03-11 09:31:27'),
(119, 'Company Policies', '3', 30, '2019-03-11 09:31:27'),
(120, 'Manager Support', '5', 30, '2019-03-11 09:31:27'),
(121, 'Role Clarity', '2', 31, '2019-03-11 09:31:27'),
(122, 'Career Growth', '5', 31, '2019-03-11 09:31:27'),
(123, 'Company Policies', '1', 31, '2019-03-11 09:31:27'),
(124, 'Manager Support', '3', 31, '2019-03-11 09:31:27'),
(125, 'Role Clarity', '2', 32, '2019-03-11 09:31:27'),
(126, 'Career Growth', '2', 32, '2019-03-11 09:31:27'),
(127, 'Company Policies', '2', 32, '2019-03-11 09:31:27'),
(128, 'Manager Support', '1', 32, '2019-03-11 09:31:28'),
(129, 'Role Clarity', '4', 33, '2019-03-11 09:31:28'),
(130, 'Career Growth', '3', 33, '2019-03-11 09:31:28'),
(131, 'Company Policies', '2', 33, '2019-03-11 09:31:28'),
(132, 'Manager Support', '5', 33, '2019-03-11 09:31:28'),
(133, 'Role Clarity', '1', 34, '2019-03-11 09:31:28'),
(134, 'Career Growth', '1', 34, '2019-03-11 09:31:28'),
(135, 'Company Policies', '2', 34, '2019-03-11 09:31:28'),
(136, 'Manager Support', '3', 34, '2019-03-11 09:31:28'),
(137, 'Role Clarity', '4', 35, '2019-03-11 09:31:28'),
(138, 'Career Growth', '4', 35, '2019-03-11 09:31:28'),
(139, 'Company Policies', '4', 35, '2019-03-11 09:31:28'),
(140, 'Manager Support', '2', 35, '2019-03-11 09:31:28'),
(141, 'Role Clarity', '1', 36, '2019-03-11 09:31:28'),
(142, 'Career Growth', '4', 36, '2019-03-11 09:31:28'),
(143, 'Company Policies', '1', 36, '2019-03-11 09:31:28'),
(144, 'Manager Support', '5', 36, '2019-03-11 09:31:28'),
(145, 'Role Clarity', '4', 37, '2019-03-11 09:31:28'),
(146, 'Career Growth', '3', 37, '2019-03-11 09:31:28'),
(147, 'Company Policies', '4', 37, '2019-03-11 09:31:28'),
(148, 'Manager Support', '4', 37, '2019-03-11 09:31:28'),
(149, 'Role Clarity', '5', 38, '2019-03-11 09:31:28'),
(150, 'Career Growth', '2', 38, '2019-03-11 09:31:28'),
(151, 'Company Policies', '1', 38, '2019-03-11 09:31:28'),
(152, 'Manager Support', '2', 38, '2019-03-11 09:31:28'),
(153, 'Role Clarity', '5', 39, '2019-03-11 09:31:28'),
(154, 'Career Growth', '4', 39, '2019-03-11 09:31:28'),
(155, 'Company Policies', '2', 39, '2019-03-11 09:31:28'),
(156, 'Manager Support', '4', 39, '2019-03-11 09:31:28'),
(157, 'Role Clarity', '2', 40, '2019-03-11 09:31:28'),
(158, 'Career Growth', '4', 40, '2019-03-11 09:31:28'),
(159, 'Company Policies', '2', 40, '2019-03-11 09:31:28'),
(160, 'Manager Support', '5', 40, '2019-03-11 09:31:28'),
(161, 'Role Clarity', '3', 41, '2019-03-11 09:31:28'),
(162, 'Career Growth', '2', 41, '2019-03-11 09:31:28'),
(163, 'Company Policies', '3', 41, '2019-03-11 09:31:28'),
(164, 'Manager Support', '4', 41, '2019-03-11 09:31:28'),
(165, 'Role Clarity', '3', 42, '2019-03-11 09:31:28'),
(166, 'Career Growth', '1', 42, '2019-03-11 09:31:28'),
(167, 'Company Policies', '3', 42, '2019-03-11 09:31:28'),
(168, 'Manager Support', '2', 42, '2019-03-11 09:31:28'),
(169, 'Role Clarity', '1', 43, '2019-03-11 09:31:28'),
(170, 'Career Growth', '2', 43, '2019-03-11 09:31:28'),
(171, 'Company Policies', '3', 43, '2019-03-11 09:31:28'),
(172, 'Manager Support', '1', 43, '2019-03-11 09:31:28'),
(173, 'Role Clarity', '3', 44, '2019-03-11 09:31:28'),
(174, 'Career Growth', '1', 44, '2019-03-11 09:31:28'),
(175, 'Company Policies', '4', 44, '2019-03-11 09:31:28'),
(176, 'Manager Support', '4', 44, '2019-03-11 09:31:28'),
(177, 'Role Clarity', '3', 45, '2019-03-11 09:31:28'),
(178, 'Career Growth', '1', 45, '2019-03-11 09:31:28'),
(179, 'Company Policies', '1', 45, '2019-03-11 09:31:28'),
(180, 'Manager Support', '2', 45, '2019-03-11 09:31:28'),
(181, 'Role Clarity', '4', 46, '2019-03-11 09:31:28'),
(182, 'Career Growth', '4', 46, '2019-03-11 09:31:28'),
(183, 'Company Policies', '2', 46, '2019-03-11 09:31:28'),
(184, 'Manager Support', '1', 46, '2019-03-11 09:31:28'),
(185, 'Role Clarity', '3', 47, '2019-03-11 09:31:28'),
(186, 'Career Growth', '2', 47, '2019-03-11 09:31:28'),
(187, 'Company Policies', '4', 47, '2019-03-11 09:31:28'),
(188, 'Manager Support', '4', 47, '2019-03-11 09:31:28'),
(189, 'Role Clarity', '5', 48, '2019-03-11 09:31:28'),
(190, 'Career Growth', '1', 48, '2019-03-11 09:31:28'),
(191, 'Company Policies', '3', 48, '2019-03-11 09:31:28'),
(192, 'Manager Support', '1', 48, '2019-03-11 09:31:28'),
(193, 'Role Clarity', '2', 49, '2019-03-11 09:31:28'),
(194, 'Career Growth', '4', 49, '2019-03-11 09:31:28'),
(195, 'Company Policies', '1', 49, '2019-03-11 09:31:28'),
(196, 'Manager Support', '5', 49, '2019-03-11 09:31:28'),
(197, 'Role Clarity', '4', 50, '2019-03-11 09:31:28'),
(198, 'Career Growth', '5', 50, '2019-03-11 09:31:28'),
(199, 'Company Policies', '2', 50, '2019-03-11 09:31:28'),
(200, 'Manager Support', '2', 50, '2019-03-11 09:31:28'),
(201, 'Role Clarity', '5', 51, '2019-03-11 09:31:28'),
(202, 'Career Growth', '2', 51, '2019-03-11 09:31:28'),
(203, 'Company Policies', '4', 51, '2019-03-11 09:31:28'),
(204, 'Manager Support', '3', 51, '2019-03-11 09:31:28'),
(205, 'Role Clarity', '2', 52, '2019-03-11 09:31:28'),
(206, 'Career Growth', '4', 52, '2019-03-11 09:31:28'),
(207, 'Company Policies', '5', 52, '2019-03-11 09:31:28'),
(208, 'Manager Support', '3', 52, '2019-03-11 09:31:28'),
(209, 'Role Clarity', '3', 53, '2019-03-11 09:31:28'),
(210, 'Career Growth', '4', 53, '2019-03-11 09:31:28'),
(211, 'Company Policies', '2', 53, '2019-03-11 09:31:28'),
(212, 'Manager Support', '4', 53, '2019-03-11 09:31:28'),
(213, 'Role Clarity', '4', 54, '2019-03-11 09:31:28'),
(214, 'Career Growth', '5', 54, '2019-03-11 09:31:28'),
(215, 'Company Policies', '2', 54, '2019-03-11 09:31:28'),
(216, 'Manager Support', '2', 54, '2019-03-11 09:31:28'),
(217, 'Role Clarity', '3', 55, '2019-03-11 09:31:28'),
(218, 'Career Growth', '5', 55, '2019-03-11 09:31:28'),
(219, 'Company Policies', '4', 55, '2019-03-11 09:31:28'),
(220, 'Manager Support', '3', 55, '2019-03-11 09:31:28');

select * from employees;
select * from responses;

# Find all average of scores grouped by drivers.
SELECT driver_name, round(AVG(score),2) AS average_score
FROM Responses
GROUP BY driver_name;

# Find all scores by department and driver combination
SELECT DISTINCT e.department, e.id AS employee_id, e.name AS employee_name, r.driver_name, r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY e.department ASC, r.score DESC;


#Find all scores by location and driver combination
SELECT DISTINCT e.location, e.id AS emp_id, e.name AS employee_name, r.driver_name, r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY e.location ASC, r.score DESC;


# Find all scores by gender and driver
SELECT DISTINCT e.gender, e.id AS emp_id, e.name AS employee_name, r.driver_name, r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY r.score DESC;


#  Find all scores by age group 20-30, 30-40,40-50
SELECT DISTINCT e.id AS emp_id, e.name AS employee_name,
    CASE
        WHEN e.age BETWEEN 20 AND 30 THEN '20-30'
        WHEN e.age BETWEEN 31 AND 40 THEN '31-40'
        WHEN e.age BETWEEN 41 AND 50 THEN '41-50'
    END AS age_group,
    r.driver_name,
    r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY age_group ASC, score DESC;


    
# Find all scores by managers (ensure manager name is there)

SELECT DISTINCT m.name AS manager_name,
    r.driver_name,e.id AS emp_id, e.name AS employee_name,
    r.score
FROM Employees e
JOIN Employees m ON e.manager_id = m.id
JOIN Responses r ON e.id = r.employee_id
ORDER BY r.score DESC;

    
# Additionally, to ensure anonymity - if a group (eg: combination of department for a specific driver) has less than 3 responses - skip that group.

SELECT 
    m.name AS manager_name,
    r.driver_name,count(*) as Number_of_responses
FROM 
    Employees e
JOIN 
    Employees m ON e.manager_id = m.id
JOIN 
    Responses r ON e.id = r.employee_id
GROUP BY
    m.name, r.driver_name
HAVING
    COUNT(*) >= 3;





