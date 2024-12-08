-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 10:28 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrator',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '34553442334', 'administrator', '15818367691558707029staff.jpg', '$2y$10$NSxBfIBeDdxRjisT83p/0uN4GN4LcbYvKzuazAfyekwPffExwBUpO', 1, '3028NqiibEV9xc6gVSHwLorVn2KwPSdh32Q1tueSIaMSP3pSY33ZHzK9Jiqk', '2018-02-27 23:27:08', '2020-02-16 01:06:09'),
(2, 'Shaon', 'genius@gmail.com', '2346545324', 'administrator', 'F:\\xampp\\tmp\\phpF9A2.tmp', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, 'ZO43fv92XprdiHctcBClDtQSXFO4lcQgONpCyo3qlu2M3IIcGK8nlzGHe280', '2018-02-27 23:27:09', '2021-03-27 03:20:39'),
(4, 'Staff', 'staff@gmail.com', '34534534', 'staff', 'F:\\xampp\\tmp\\php295E.tmp', '$2y$10$I/2L8FXvxOQV7irwh2PH2upufB0DBMponc99HDo8U4cWx2B/6ASwa', 1, 'WLgDvyCIQXFtQiOeGVSktO74gVuRmZuI410BUEroIcAyIGD7yTkjK12hi31A', '2019-05-23 08:10:30', '2021-03-27 03:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `name`, `is_default`, `language`, `file`, `rtl`, `created_at`, `updated_at`) VALUES
(1, '1618197897uah797pe', 1, 'English', '1618197897uah797pe.json', 0, NULL, NULL),
(5, '1582176028AFnkjiOf', 0, 'Arabic', '1582176028AFnkjiOf.json', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(5, 'dghsagdhg', 1, 'hsaaghfdhajshj', '2021-04-15 15:36:58', '2021-04-15 15:36:58'),
(6, 'fghf', 1, 'hfgdhfd', '2021-04-15 15:38:20', '2021-04-15 15:38:20'),
(7, 'helloo', 1, 'hello', '2021-04-15 15:45:40', '2021-04-15 15:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 5, 'hsaaghfdhajshj', NULL, '2021-04-15 15:36:58', '2021-04-15 15:36:58'),
(10, 6, 'hfgdhfd', NULL, '2021-04-15 15:38:20', '2021-04-15 15:38:20'),
(12, 7, 'hello', NULL, '2021-04-15 15:45:40', '2021-04-15 15:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(29, 3, 'How to design effective arts?', 'arts-blog-2', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15818360261580099293news.jpg', 'www.geniusocean.com', 62, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(30, 3, 'How to design effective arts?', 'arts-blog-5', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '158183582115791526401574146287man-holding-white-teacup-in-front-of-gray-laptop-842567.jpg', 'www.geniusocean.com', 82, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(31, 3, 'How to design effective arts?', 'arts-blog-6', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '158183581115791526651574146295man-working-on-a-laptop-while-woman-takes-notes-3153208.jpg', 'www.geniusocean.com', 39, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(32, 7, 'How to design effective arts?', 'arts-blog-7', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15818358021580100456blog.jpg', 'www.geniusocean.com', 16, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(33, 3, 'How to design effective arts?', 'arts-blog-8', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15818357931580100376news.jpg', 'www.geniusocean.com', 62, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(34, 3, 'How to design effective arts?', 'arts-blog-9', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15818357821580099321blog.jpg', 'www.geniusocean.com', 93, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(35, 3, 'How to design effective arts?', 'arts-blog-10', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '158183577315791524621561454189blog.jpg', 'www.geniusocean.com', 38, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(36, 7, 'How to design effective arts?', 'arts-blog-3', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '161926317914-min.jpg', 'www.geniusocean.com', 18, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(37, 3, 'How to design effective arts?', 'arts-blog-4', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '161926316912-min.jpg', 'www.geniusocean.com', 62, 1, 'Effective,Design,Arts', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(38, 3, 'How to design effective arts?...', 'arts-blog-16', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '161926315916-min.jpg', 'www.geniusocean.com', 84, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`) VALUES
(3, 'Manufacturing', 'manufacturing', 1),
(4, 'Chemical Research', 'chemical_research', 1),
(5, 'Agriculture', 'agriculture', 1),
(6, 'Mechanical', 'mechanical', 1),
(7, 'Entrepreneurss', 'entrepreneurss', 1);

-- --------------------------------------------------------

--
-- Table structure for table `callback_messages`
--

CREATE TABLE `callback_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `callback_messages`
--

INSERT INTO `callback_messages` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(4, 'showrav Hasan', 'teacher@gmail.com', '01728332009', 'Hello Dear', '2021-03-27 03:21:59', '2021-03-27 03:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal` float DEFAULT NULL,
  `preloaded_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_after` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `featured` tinyint(191) DEFAULT NULL,
  `benefits` int(11) DEFAULT NULL,
  `available_fund` float NOT NULL DEFAULT 0,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_newsletter` tinyint(191) DEFAULT NULL,
  `status` enum('open','close') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_panding` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secheck` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `slug`, `category_id`, `photo`, `description`, `video_link`, `end_date`, `goal`, `preloaded_amount`, `end_after`, `featured`, `benefits`, `available_fund`, `location`, `send_newsletter`, `status`, `is_panding`, `user_id`, `tags`, `meta_tag`, `meta_description`, `secheck`, `created_at`, `updated_at`) VALUES
(49, 'Campaign For Africa', 'campaign-for-africa', 24, '161926069313-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 800, 2410, 'New York', 0, 'open', 1, NULL, 'tag1,tag2,tag3', NULL, NULL, 0, '2020-01-26 23:22:53', '2021-04-24 04:38:13'),
(50, 'Campaign For India', 'campaign-for-india', 24, '161926067214-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 80, 1110, 'New York', 0, 'open', 1, NULL, 'tag1,tag4', NULL, NULL, 0, '2020-01-26 23:22:53', '2021-04-24 04:37:52'),
(51, 'Campaign for Africa', 'problem', 22, '16192606579-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 800, 190, 'New York', 0, 'open', 1, NULL, 'tag1,tag2,tag3', NULL, NULL, 0, '2020-01-26 23:22:53', '2021-04-24 04:37:37'),
(53, 'Campaign For Africa', 'campaign-for-africa-2', 23, '16192606158-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 800, 150, 'New York', 0, 'open', 1, NULL, 'tag1,tag2,tag3', NULL, NULL, 0, '2020-01-26 23:22:53', '2021-04-24 04:36:55'),
(54, 'Campaign For India', 'campaign-for-india-2', 24, '16192605547-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 80, 0, 'New York', 0, 'open', 1, NULL, 'tag1,tag4', NULL, NULL, 0, '2020-01-26 23:22:53', '2021-04-24 04:35:54'),
(55, 'Campaign for China', 'problem-china', 23, '16192605216-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 800, 0, 'China', 0, 'open', 1, NULL, 'tag1,tag2,tag3', NULL, NULL, 0, '2020-01-26 23:22:53', '2021-04-24 04:35:21'),
(56, 'Campaign for Nepal', 'campaign-nepal', 22, '16192605035-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 80, 0, 'Nepal', 0, 'open', 1, NULL, 'tag1,tag4', NULL, NULL, 0, '2020-01-26 23:22:53', '2021-04-24 04:35:03'),
(57, 'Campaign For China', 'campaign-for-china-2', 23, '16192604844-min.jpg', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id&nbsp;<br></div><div>congue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta</div><div>&nbsp;tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est&nbsp;</div><div>sapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam&nbsp;</div><div>feugiat enim id dolor finibus interdum. In elementum nisi eget sem&nbsp;</div><div>bibendum elementum. In pharetra auctor augue. Donec nisl dolor,&nbsp;</div><div>venenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante</div><div>&nbsp;sed tempus.</div><div><br></div><div>Nunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,</div><div>&nbsp;ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat.&nbsp;</div><div>Quisque a sapien ultrices, tincidunt velit eget, fringilla erat.&nbsp;</div><div>Pellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit&nbsp;</div><div>justo. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor.&nbsp;</div><div>Nunc varius tellus id dui eleifend facilisis. Phasellus lectus elit,&nbsp;</div><div>pulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu&nbsp;</div><div>sed metus viverra, id rutrum elit interdum. Nam in pellentesque urna.&nbsp;</div><div>Integer ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante,&nbsp;</div><div>eget consectetur metus mauris commodo erat. Integer pharetra ante vel&nbsp;</div><div>dolor convallis, vel tincidunt urna consequat.</div><div><br></div><div>Aenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra&nbsp;</div><div>sem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero.&nbsp;</div><div>Nullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque.&nbsp;</div><div>Nam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis,&nbsp;</div><div>libero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi&nbsp;</div><div>sagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere&nbsp;</div><div>odio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae&nbsp;</div><div>tellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus&nbsp;</div><div>et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc&nbsp;</div><div>ut lorem vestibulum fermentum sit amet ac metus.</div><div><br></div><div>Sed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat&nbsp;</div><div>consectetur, nibh neque elementum neque, ac sagittis sapien odio nec&nbsp;</div><div>nisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem.&nbsp;</div><div>Vestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet&nbsp;</div><div>turpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel&nbsp;</div><div>commodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.</div><div>&nbsp;Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi.&nbsp;</div><div>Cras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet.&nbsp;</div><div>Aenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit</div><div>&nbsp;amet iaculis facilisis. Praesent scelerisque elit nec accumsan&nbsp;</div><div>ultricies.</div>', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', '01/31/2022', 2000, '20,40,50,100', 'date', 1, 800, 0, 'China', 0, 'open', 1, NULL, 'tag1,tag2,tag3', 'q1,q2', 'asd', 1, '2020-01-26 23:22:53', '2021-04-24 04:34:44'),
(67, 'test', 'bags', 22, '16192604513-min.jpg', 'fdgf', 'https://www.youtube.com/watch?v=jxCgtt5YDWA', '01/15/2021', 50, '5', 'goal', 1, 5, 0.01, 'dhaka', 1, 'open', 1, 1, 'afsdfasd', NULL, NULL, 0, '2021-01-05 00:11:23', '2021-04-24 04:34:11'),
(68, 'test', 'bagsss', 22, '16192604102-min.jpg', 'asdfasdf', 'https://www.youtube.com/watch?v=8P7qUS__Ypk', '03/31/2021', 1, '0.1', 'goal', 1, NULL, 0, 'dhaka', 0, 'open', 1, 1, NULL, NULL, NULL, 0, '2021-03-22 21:48:32', '2022-08-23 00:03:08'),
(75, 'Fund raising', 'privacy', 23, '1661234324Screenshot_30.png', 'ryrtyrty', 'https://youtu.be/d3z2GpaN4J8', '08/31/2022', 100, NULL, 'goal', 1, 10, 0, 'public_html', 0, 'open', 1, 1, 'retre', NULL, NULL, 0, '2022-08-22 23:58:44', '2022-08-23 00:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`) VALUES
(21, 'Nonprofit', 'nonprofit', 1),
(22, 'Fashion', 'fashion', 1),
(23, 'Foods', 'foods', 1),
(24, 'Health', 'health', 1);

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 1723, 0, NULL),
(4, 'browser', 'Linux', 221, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 385, 0, NULL),
(6, 'browser', 'Windows 7', 417, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 536, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 418, 0, NULL),
(11, 'browser', 'Mac OS X', 511, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 1, 0, NULL),
(18, 'browser', 'iPhone', 4, 0, NULL),
(19, 'referral', 'www.sandbox.paypal.com', 2, 0, NULL),
(20, 'referral', 'test.instamojo.com', 1, 0, NULL),
(21, 'referral', 'www.mollie.com', 3, 0, NULL),
(22, 'referral', 'securegw-stage.paytm.in', 3, 0, NULL),
(23, 'referral', 'ravemodal-dev.herokuapp.com', 6, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 82.92649841308594, 0),
(6, 'EUR', '€', 0.864870011806488, 0),
(8, 'BRL', 'R$', 50, 0),
(9, 'NGN', '₦', 363, 0),
(10, 'INR', '₹', 75, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Anonymous',
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Anonymous',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Anonymous',
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Anonymous',
  `donation_amount` float NOT NULL DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txnid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `campaign_id`, `fname`, `lname`, `email`, `number`, `donation_amount`, `address`, `payment_type`, `donation_number`, `currency`, `title`, `payment_status`, `txnid`, `charge_id`, `note`, `type`, `created_at`, `updated_at`) VALUES
(59, 49, 'Showrav', 'Hasan', 'admin@admin.com', '43535', 50, 'dsfgsdfg', 'Mercadopago', 'U3cl1584869417', 'BRL', 'Charity Order', 'Completed', '24348231', NULL, 'dfgsdfg', 'normal', '2020-03-22 03:30:19', '2020-03-22 03:30:19'),
(60, 49, NULL, NULL, NULL, NULL, 100, NULL, 'Mercadopago', 'N2EZ1584869484', 'BRL', 'Charity Order', 'Completed', '24348240', NULL, NULL, 'aninumas', '2020-03-22 03:31:26', '2020-03-22 03:31:26'),
(61, 49, 'Showrav', 'Hasan', 'admin@admin.com', '43535', 100, 'dsfgsdfg', 'Mercadopago', 'haMD1584869900', 'BRL', 'Charity Order', 'Completed', '24348255', NULL, 'dfgsdfg', 'normal', '2020-03-22 03:38:22', '2020-03-22 03:38:22'),
(62, 49, NULL, NULL, NULL, NULL, 50, NULL, 'paypal', 'fQV11584870177', 'USD', 'Campaign For Africa Via Paypal', 'Completed', '0P1339141K834211N', NULL, NULL, 'normal', '2020-03-22 03:42:57', '2020-03-22 03:42:57'),
(63, 49, 'Showrav', 'Hasan', 'admin@admin.com', '43535', 50, 'dsfgsdfg', 'Paystack', '8GEI1584870380', 'NGN', 'Campaign For Africa', 'Completed', '496384947', NULL, NULL, 'normal', '2020-03-22 03:46:20', '2020-03-22 03:46:20'),
(64, 49, NULL, NULL, NULL, NULL, 50, NULL, 'Flutter Wave', 'byM91584872324', 'NGN', 'Charity Order', 'Completed', '1181587', NULL, NULL, 'aninumas', '2020-03-22 04:20:03', '2020-03-22 04:20:03'),
(65, 50, NULL, NULL, NULL, NULL, 50, NULL, 'Molly Pay', '4sSl1609833607', 'EUR', 'Charity Order', 'Completed', 'tr_kdQ76mffDu', NULL, NULL, 'aninumas', '2021-01-05 02:00:20', '2021-01-05 02:00:20'),
(66, 50, NULL, NULL, NULL, NULL, 50, NULL, 'stripe', 'V6j71609833732', 'EUR', 'Campaign For India', 'Completed', 'txn_1I6AUaJlIV5dN9n7KXE587sU', 'ch_1I6AUaJlIV5dN9n7RII11zpg', NULL, 'aninumas', '2021-01-05 02:02:12', '2021-01-05 02:02:12'),
(67, 53, NULL, NULL, NULL, NULL, 50, NULL, 'Instamojo', 'wzvy1609907368', 'INR', 'Campaign For Africa', 'Completed', '81e1d19d32fc4a2897cd44be5a4677e5', NULL, NULL, 'aninumas', '2021-01-05 22:29:28', '2021-01-05 22:29:28'),
(68, 50, NULL, NULL, NULL, NULL, 2500, NULL, 'Paytm', 'LpNS1609919458', 'INR', 'Charity Order', 'Completed', '20210106111212800110168604702214041', NULL, NULL, 'normal', '2021-01-06 01:50:58', '2021-01-06 01:50:58'),
(69, 50, NULL, NULL, NULL, NULL, 50, NULL, 'Paystack', 'wOnK1609920081', 'NGN', 'Campaign For India', 'Completed', '715729400', NULL, NULL, 'aninumas', '2021-01-06 02:01:21', '2021-01-06 02:01:21'),
(70, 49, NULL, NULL, NULL, NULL, 2500, NULL, 'Razorpay', '8hwB1609928198', 'INR', 'Charity Order', 'Completed', 'order_GLz7atEoLXdHV7', NULL, NULL, 'normal', '2021-01-06 04:16:38', '2021-01-06 04:16:38'),
(71, 49, NULL, NULL, 'user@gmail.com', NULL, 20, NULL, 'Mercadopago', 'zK6f1616480662', 'BRL', 'Charity Order', 'Completed', '1234919194', NULL, NULL, 'aninumas', '2021-03-23 00:24:24', '2021-03-23 00:24:24'),
(72, 49, NULL, NULL, NULL, NULL, 40, NULL, 'Mercadopago', 'mJ5D1616481099', 'BRL', 'Charity Order', 'Completed', '1234917696', NULL, NULL, 'aninumas', '2021-03-23 00:31:42', '2021-03-23 00:31:42'),
(73, 67, NULL, NULL, NULL, NULL, 5, NULL, 'paypal', 'AEJ61616661173', 'USD', 'test Via Paypal', 'Completed', '6NS28960MF3095346', NULL, NULL, 'normal', '2021-03-25 02:32:53', '2021-03-25 02:32:53'),
(74, 49, 'Arsenio Brooks', 'Candice Colon', 'zecox@mailinator.com', '477', 50, 'In consequat Quis n', 'stripe', 'TtdM1618468274', 'USD', 'Campaign For Africa', 'Completed', 'txn_1IgOjNJlIV5dN9n7HIDUUcCi', 'ch_1IgOjNJlIV5dN9n7N2BNRcjK', 'Perferendis voluptat', 'normal', '2021-04-15 13:31:14', '2021-04-15 13:31:14'),
(75, 49, 'Camden Bates', 'Daniel Schmidt', 'quzutu@mailinator.com', '875', 40, 'Alias error possimus', 'Instamojo', 'A0VW1618468704', 'INR', 'Campaign For Africa', 'Completed', 'b92c80930fd149f2bed8bd67d7565f9a', NULL, 'Quis illum veniam', 'normal', '2021-04-15 13:38:24', '2021-04-15 13:38:24'),
(76, 51, 'Cecilia Burch', 'Diana Higgins', 'lamone@mailinator.com', '866', 40, 'Hic sit illo accusan', 'Paystack', 'nI061618468758', 'NGN', 'Campaign for Africa', 'Completed', '278184948', NULL, 'Deserunt dolorem id', 'normal', '2021-04-15 13:39:18', '2021-04-15 13:39:18'),
(77, 49, 'Allistair Kemp', 'Damian Montgomery', 'kiqem@mailinator.com', '143', 3000, 'Earum consequatur E', 'Razorpay', 'cTvz1618469067', 'INR', 'Charity Order', 'Completed', 'order_Gz6O1i6kqZgXwA', NULL, 'Deserunt delectus e', 'aninumas', '2021-04-15 13:44:27', '2021-04-15 13:44:27'),
(78, 49, 'Mona Marshall', 'Magee Mcguire', 'kery@mailinator.com', '43', 40, 'Voluptatem iusto ve', 'Mercadopago', 'Wa4j1618470115', 'BRL', 'Charity Order', 'Completed', '1235800573', NULL, 'Alias sunt beatae te', 'normal', '2021-04-15 14:01:57', '2021-04-15 14:01:57'),
(79, 50, NULL, NULL, NULL, NULL, 40, NULL, 'Molly Pay', 'qFD81618470249', 'USD', 'Charity Order', 'Completed', 'tr_Dm2pHms3uj', NULL, NULL, 'aninumas', '2021-04-15 14:04:24', '2021-04-15 14:04:24'),
(80, 49, 'Giacomo Dodson', 'Melvin Hopper', 'qokazasoj@mailinator.com', '461', 50, 'Id beatae quisquam', 'Voguepay', '4Pir1618470315', 'USD', 'Campaign For Africa', 'Completed', 'demo-6077e52ab7105', NULL, 'Omnis officia quis i', 'normal', '2021-04-15 14:05:15', '2021-04-15 14:05:15'),
(81, 49, 'Abraham Reynolds', 'Joan Patel', 'cone@mailinator.com', '217', 100, 'Et fuga Itaque volu', 'Molly Pay', 'gVZa1618470547', 'USD', 'Charity Order', 'Completed', 'tr_Jyn5xP5W8P', NULL, 'Deleniti numquam min', 'normal', '2021-04-15 14:09:19', '2021-04-15 14:09:19'),
(82, 67, 'Carolyn Moss', 'Jade Trevino', 'dygeru@mailinator.com', '147', 5, 'Consequatur Quisqua', 'Molly Pay', 'db2e1618473938', 'USD', 'Charity Order', 'Completed', 'tr_zKUMHJp36y', NULL, 'Reiciendis sequi tem', 'normal', '2021-04-15 15:05:48', '2021-04-15 15:05:48'),
(83, 50, 'xvadf', NULL, 'user1@gmail.com', '09000000', 50, 'Dhaka', 'stripe', 'cmwR1618475559', 'USD', 'Campaign For India', 'Completed', 'txn_1IgQcsJlIV5dN9n7uWFdDnuN', 'ch_1IgQcsJlIV5dN9n7RcWAHAQo', NULL, 'normal', '2021-04-15 15:32:39', '2021-04-15 15:32:39'),
(84, 49, 'user', 'user', 'user@gmail.com', '5079956958', 100, 'Space Needle 400 Broad St, Seattles', 'stripe', 'rksd1618477163', 'USD', 'Campaign For Africa', 'Completed', 'txn_1IgR2lJlIV5dN9n7AoHeDND6', 'ch_1IgR2lJlIV5dN9n7ChZSSWt1', NULL, 'normal', '2021-04-15 15:59:23', '2021-04-15 15:59:23'),
(85, 53, 'user', 'user', 'user@gmail.com', '5079956958', 100, 'Space Needle 400 Broad St, Seattles', 'paypal', 'hGwU1618478002', 'USD', 'Campaign For Africa Via Paypal', 'Completed', '67S48558PD7596720', NULL, 'R3R', 'normal', '2021-04-15 16:13:22', '2021-04-15 16:13:22'),
(86, 51, 'user', 'user', 'user@gmail.com', '5079956958', 50, 'Space Needle 400 Broad St, Seattles', 'Authorize', 'dWE61618478101', 'USD', 'Campaign for Africa', 'Completed', '40062737846', NULL, NULL, 'normal', '2021-04-15 16:15:01', '2021-04-15 16:15:01'),
(87, 49, NULL, NULL, NULL, NULL, 3750, NULL, 'Paytm', 'IrSI1618478257', 'INR', 'Charity Order', 'Completed', '20210415111212800110168973502552756', NULL, NULL, 'normal', '2021-04-15 16:17:37', '2021-04-15 16:17:37'),
(88, 51, 'user', 'user', 'user@gmail.com', '5079956958', 40, 'Space Needle 400 Broad St, Seattles', 'Mercadopago', 'eSQO1618478500', 'BRL', 'Charity Order', 'Completed', '1235801800', NULL, NULL, 'normal', '2021-04-15 16:21:41', '2021-04-15 16:21:41'),
(89, 49, 'user', 'user', 'user@gmail.com', '5079956958', 3000, 'Space Needle 400 Broad St, Seattles', 'Paytm', '1Csv1618480145', 'INR', 'Charity Order', 'Completed', '20210415111212800110168657002541497', NULL, NULL, 'aninumas', '2021-04-15 16:49:05', '2021-04-15 16:49:05'),
(90, 50, 'user', 'user', 'user@gmail.com', '5079956958', 7500, 'Space Needle 400 Broad St, Seattles', 'Paytm', 'BTWr1618480301', 'INR', 'Charity Order', 'Completed', '20210415111212800110168059602547073', NULL, NULL, 'aninumas', '2021-04-15 16:51:41', '2021-04-15 16:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'Invest', 'You have invested successfully.', '<p>Hello {customer_name},<br>You have invested successfully.</p><p>Transaction ID:&nbsp;<span style=\"color: rgb(33, 37, 41);\">{order_number}.</span></p><p>Thank You.</p>', 1),
(2, 'Payout', 'Your Investment is completed successfully.', '<p>Hello {customer_name},<br>Your Investment is completed successfully.</p><p>Transaction ID:&nbsp;<span style=\"color: rgb(33, 37, 41);\">{order_number}.</span><br></p><p>Thank You<br></p>', 1),
(3, 'Withdraw', 'Your withdraw is completed successfully.', '<p>Hello {customer_name},<br>Your withdraw is completed successfully.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align:center;\"><div style=\"text-align:justify;\"><font color=\"#000000\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</font></div><div style=\"text-align:justify;\"><br></div><div style=\"text-align:justify;\"><br></div><div style=\"text-align:justify;\"></div><div style=\"text-align:justify;\"></div></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `details`, `photo`) VALUES
(1, 'Financial Analysis', '<span style=\"color: rgb(5, 14, 51); text-align: center;\">Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span><br>', '1574146650laptop-office-working-men-3153201.jpg'),
(2, 'Financial Analysis', '<span style=\"color: rgb(5, 14, 51); text-align: center;\">Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span><br>', '1574146642man-working-on-a-laptop-while-woman-takes-notes-3153208.jpg'),
(3, 'Financial Analysis', '<span style=\"color: rgb(5, 14, 51); text-align: center;\">Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span><br>', '1574146635photo-of-people-using-laptop-3194521.jpg'),
(4, 'Financial Analysis', '<span style=\"color: rgb(5, 14, 51); text-align: center;\">Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span><br>', '1574146627photo-of-woman-using-her-laptop-935756.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secendary_color` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_sendbox_check` int(11) NOT NULL DEFAULT 1,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_currency` tinyint(1) NOT NULL DEFAULT 0,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `price_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe_success` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcumb_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `footer_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_services` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `is_projects` tinyint(1) NOT NULL DEFAULT 0,
  `is_teams` tinyint(1) NOT NULL DEFAULT 0,
  `is_blog` tinyint(1) NOT NULL DEFAULT 0,
  `is_pages` tinyint(1) NOT NULL DEFAULT 0,
  `plan_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verification_email` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `loader`, `admin_loader`, `banner`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `secendary_color`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `paypal_check`, `paypal_client_id`, `paypal_client_secret`, `paypal_sendbox_check`, `stripe_check`, `cod_check`, `stripe_secret`, `stripe_key`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `coupon_found`, `already_coupon`, `order_title`, `service_subtitle`, `service_title`, `service_text`, `service_image`, `service_link`, `order_text`, `is_currency`, `currency_format`, `price_title`, `price_subtitle`, `price_text`, `subscribe_success`, `subscribe_error`, `error_title`, `error_text`, `error_photo`, `breadcumb_banner`, `is_admin_loader`, `footer_logo`, `is_contact`, `is_faq`, `is_home`, `is_services`, `withdraw_fee`, `withdraw_charge`, `is_projects`, `is_teams`, `is_blog`, `is_pages`, `plan_meta_key`, `plan_meta_description`, `quotes`, `is_verification_email`) VALUES
(1, '1619260367logo-top.png', '15821043881573982412statistics1.png', '15739824491563333857loader.gif', '158183637715739824491563333857loader.gif', '1564374335herobg.jpg', 'Charity', 'Info@example.com', '0123 456789', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae', 'COPYRIGHT © 2019. All Rights Reserved By <a href=\"http://geniusocean.com/\">GeniusOcean.com</a>', '#2c70f8', '#2c70f8', 1, '5bc2019c61d0b77092512d03', 0, 0, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 1, 'junnunr', 1, 'AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi', 'EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE', 0, 1, 1, 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'smtp.mailtrap.io', '2525', '341b1a0c3edfa6', 'a578c7a5db5dae', 'admin@geniusocean.com', 'GeniusOcean', 1, 'Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR GREAT GENEROSITY.', 'A litter bit More', 'About US', 'Our organization pursues several goals that can be identified as our mission. Learn more about them below. Auis nostrud exercitation ullamc laboris nisitm aliquip ex bea sed consequat duis autes ure dolor. dolore magna aliqua nim ad minim.', '1573987345about.jpg', 'http://google.com', 'We greatly appreciate your donation, and your sacrifice. Your support helps to further our mission through this campaign.', 0, 0, 'Choose Plans & Pricing', 'Choose the best for yourself', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'You are subscribed Successfully...', 'This email has already been taken!', '<div><h4 class=\"heading\"></h4></div><div><h4 class=\"heading\" style=\"margin: 40px 0px 25px; font-weight: 700; line-height: 46px; font-size: 36px; color: rgb(40, 56, 79); text-align: center;\">Oops! You\'re lost...</h4></div>', '<span style=\"color: rgb(51, 51, 51); text-align: center;\">The page you are looking for might have been moved, renamed, or might never existed.</span><br>', '1561878540404.png', '1617215352slider-bg-03.jpg', 1, '1619263139logo-footer.png', 1, 1, 1, 1, 5, 10, 1, 0, 1, 1, 'p1,p2,p3,p4', 'Test', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_counters`
--

CREATE TABLE `home_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_counters`
--

INSERT INTO `home_counters` (`id`, `text`, `counter`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'Volunteer', 5000, '1617212975icon-3.png', '2019-12-27 23:03:27', '2021-03-31 11:49:35'),
(6, 'Volunteer', 3000, '1617212970icon-3.png', '2019-12-27 23:03:47', '2021-03-31 11:49:30'),
(8, 'Volunteer', 3000, '1617212964icon-3.png', '2019-12-27 23:12:12', '2021-03-31 11:49:24'),
(9, 'Volunteer', 30132, '1617212957icon-3.png', '2019-12-27 23:23:51', '2021-03-31 11:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `is_default`, `language`, `file`, `rtl`) VALUES
(1, '1579082671sXVk59Sx', 1, 'English', '1579082671sXVk59Sx.json', 0),
(2, '1582102874kwWviYTg', 0, 'Arabic', '1582102874kwWviYTg.json', 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `title`, `subtitle`, `photo`, `facebook`, `twitter`, `linkedin`) VALUES
(2, 'Ervin Kim', 'CEO of Apple', '16172094841577767645team.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com'),
(3, 'Ervin Kim', 'CEO of Apple', '16172094771577767645team.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com'),
(4, 'Jhon Due', 'CEO SAMSUNG', '1577767645team.png', 'www.facebook.com', 'www.facebook.com', NULL),
(5, 'Due Kim', 'CEO SAMSUNG', '1577767735team.png', 'www.facebook.com', 'www.twitter.com', NULL),
(7, 'Jhon doe', 'google.com', '16172096031577767645team.png', 'google.com', 'google.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_26_072954_create_home_pages_table', 1),
(4, '2019_12_28_043032_create_home_counters_table', 2),
(6, '2019_12_28_070324_create_campaigns_table', 3),
(11, '2019_12_30_041751_create_donations_table', 4),
(13, '2020_01_08_051311_create_callback_messages_table', 5),
(14, '2020_01_13_064322_create_admin_languages_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `donation_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `withdrow_id` int(191) DEFAULT NULL,
  `campaign_id` int(191) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `donation_id`, `user_id`, `withdrow_id`, `campaign_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(45, NULL, NULL, NULL, 67, NULL, 1, '2021-01-05 00:11:23', '2021-01-05 00:11:57'),
(46, 50, NULL, NULL, NULL, NULL, 1, '2021-01-05 02:00:20', '2021-01-05 02:00:30'),
(47, 50, NULL, NULL, NULL, NULL, 1, '2021-01-05 02:02:13', '2021-01-05 22:29:33'),
(48, 53, NULL, NULL, NULL, NULL, 1, '2021-01-05 22:29:28', '2021-01-05 22:29:33'),
(49, 50, NULL, NULL, NULL, NULL, 1, '2021-01-06 01:50:58', '2021-01-06 02:01:27'),
(50, 50, NULL, NULL, NULL, NULL, 1, '2021-01-06 02:01:21', '2021-01-06 02:01:27'),
(51, 49, NULL, NULL, NULL, NULL, 1, '2021-01-06 04:16:38', '2021-03-22 21:48:37'),
(52, NULL, NULL, NULL, 68, NULL, 1, '2021-03-22 21:48:33', '2021-03-22 21:48:37'),
(53, 67, NULL, NULL, NULL, NULL, 1, '2021-03-25 02:32:53', '2021-03-27 03:26:25'),
(54, NULL, 4, NULL, NULL, NULL, 1, '2021-03-27 03:17:07', '2021-03-27 03:28:06'),
(55, NULL, NULL, 2, NULL, NULL, 1, '2021-03-27 03:38:07', '2021-03-27 03:38:20'),
(56, 49, NULL, NULL, NULL, NULL, 1, '2021-04-15 13:31:14', '2021-04-15 15:33:22'),
(57, 49, NULL, NULL, NULL, NULL, 1, '2021-04-15 13:38:24', '2021-04-15 15:33:22'),
(58, 51, NULL, NULL, NULL, NULL, 1, '2021-04-15 13:39:18', '2021-04-15 15:33:22'),
(59, 49, NULL, NULL, NULL, NULL, 1, '2021-04-15 13:44:27', '2021-04-15 15:33:22'),
(60, 50, NULL, NULL, NULL, NULL, 1, '2021-04-15 14:04:24', '2021-04-15 15:33:22'),
(61, 49, NULL, NULL, NULL, NULL, 1, '2021-04-15 14:05:15', '2021-04-15 15:33:22'),
(62, 49, NULL, NULL, NULL, NULL, 1, '2021-04-15 14:09:19', '2021-04-15 15:33:22'),
(63, 67, NULL, NULL, NULL, NULL, 1, '2021-04-15 15:05:48', '2021-04-15 15:33:22'),
(64, NULL, NULL, 3, NULL, NULL, 1, '2021-04-15 15:07:41', '2021-04-15 15:33:22'),
(65, 50, NULL, NULL, NULL, NULL, 1, '2021-04-15 15:32:39', '2021-04-15 15:33:22'),
(66, 49, NULL, NULL, NULL, NULL, 1, '2021-04-15 15:59:23', '2021-04-15 16:00:40'),
(67, 53, NULL, NULL, NULL, NULL, 0, '2021-04-15 16:13:22', '2021-04-15 16:13:22'),
(68, 51, NULL, NULL, NULL, NULL, 0, '2021-04-15 16:15:01', '2021-04-15 16:15:01'),
(69, 49, NULL, NULL, NULL, NULL, 0, '2021-04-15 16:17:37', '2021-04-15 16:17:37'),
(70, 49, NULL, NULL, NULL, NULL, 0, '2021-04-15 16:49:05', '2021-04-15 16:49:05'),
(71, 50, NULL, NULL, NULL, NULL, 0, '2021-04-15 16:51:41', '2021-04-15 16:51:41'),
(72, NULL, 5, NULL, NULL, NULL, 0, '2022-08-22 02:43:18', '2022-08-22 02:43:18'),
(73, NULL, NULL, NULL, 70, NULL, 0, '2022-08-22 23:17:58', '2022-08-22 23:17:58'),
(74, NULL, NULL, NULL, 71, NULL, 0, '2022-08-22 23:20:58', '2022-08-22 23:20:58'),
(75, NULL, NULL, NULL, 72, NULL, 0, '2022-08-22 23:45:11', '2022-08-22 23:45:11'),
(76, NULL, NULL, NULL, 73, NULL, 0, '2022-08-22 23:48:38', '2022-08-22 23:48:38'),
(77, NULL, NULL, NULL, 74, NULL, 0, '2022-08-22 23:54:55', '2022-08-22 23:54:55'),
(78, NULL, NULL, NULL, 75, NULL, 0, '2022-08-22 23:58:44', '2022-08-22 23:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'about us,our teams', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 0),
(2, 'Privacy & Policy', 'privacy', '<div><h2 style=\"line-height:1.44444;\"><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight:700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br><div><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2><font size=\"6\">Title number 9</font><br></h2><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'privacy,terms,conditions,policy', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `counter` tinyint(11) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `video_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_background` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section` tinyint(1) NOT NULL DEFAULT 0,
  `contact_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donate_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donate_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donate_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_video_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_left_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callback_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callback_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callback_image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callback_image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage_link1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage_link2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cservice` tinyint(4) NOT NULL DEFAULT 1,
  `ccounter` tinyint(4) DEFAULT 1,
  `cfeature` tinyint(4) NOT NULL DEFAULT 1,
  `cdonate` tinyint(4) NOT NULL DEFAULT 1,
  `ccallback` tinyint(4) NOT NULL DEFAULT 1,
  `cteam` tinyint(4) NOT NULL DEFAULT 1,
  `cportfolio` tinyint(4) NOT NULL DEFAULT 1,
  `cnews` tinyint(1) NOT NULL DEFAULT 1,
  `homepage_button1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_button2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `donate_link1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `counter`, `featured`, `review_blog`, `video_title`, `video_text`, `video_link`, `video_image`, `video_background`, `service_subtitle`, `service_title`, `service_text`, `portfolio_subtitle`, `portfolio_title`, `portfolio_text`, `p_subtitle`, `p_title`, `p_text`, `p_background`, `team_subtitle`, `team_title`, `team_text`, `review_subtitle`, `review_title`, `review_text`, `blog_subtitle`, `blog_title`, `blog_text`, `c_title`, `c_text`, `c_background`, `contact_section`, `contact_meta_key`, `contact_meta_description`, `faq_meta_key`, `faq_meta_description`, `team_meta_key`, `team_meta_description`, `project_meta_key`, `project_meta_description`, `service_meta_key`, `service_meta_description`, `counter_subtitle`, `counter_title`, `donate_title`, `donate_subtitle`, `donate_button_text`, `counter_video_link`, `time`, `day`, `service_left_img`, `callback_title`, `callback_subtitle`, `callback_image1`, `counter_image`, `callback_image2`, `day_icon`, `phone_icon`, `street_icon`, `homepage_title`, `homepage_subtitle`, `homepage_description`, `homepage_photo`, `homepage_link1`, `homepage_link2`, `cservice`, `ccounter`, `cfeature`, `cdonate`, `ccallback`, `cteam`, `cportfolio`, `cnews`, `homepage_button1`, `homepage_button2`, `donate_link1`, `faq_photo`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: rgb(18, 66, 201);text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '3584 Hickory Heights Drive ,Hanover MD 21076, USA', '+91111111111', '00 000 000 0001', 'admin@geniusocean.com', 'https://geniusocean.com/', 0, 0, NULL, 1, 1, 'We are always with you to make your project', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.', 'https://www.google.com/', '1574060315servicebg.jpg', '1574052088get-quot.jpg', 'We Need Your Help', 'Featured Campaign', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Our People', 'Best Volunteer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Our Video Presentation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed posuere ipsum. Nunc eget sagittis nunc. Nunc ac aliquet ante. Morbi congue semper justo. Quisque sed pulvinar nisl. Maecenas nec consequat sapien.', 'https://www.youtube.com/watch?v=ZAb3qB99QEE', '1574060315hero-bg.png', 'Our People', 'Best Volunteet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Testimonial', 'Customer Reviews', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Everything changes', 'Latest NEWS', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Contact Our Awesome Team', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.', '1574055631free-consult.jpg', 1, 'c1,c2,c3,c4,c5', 'Test', 'f1,f2,f3,f4,f5', 'Test', 't1,t2,t3,t4', 'Test', 'pro1,pro2,pro3', 'Test', 's1,s2,s3,s4,s5', 'Test', 'We’re helping hand on', '90,100 Children in 120+ Countries.', 'Donate now', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus recusandae quo corporis', 'Donate', 'https://www.youtube.com/watch?v=Zb6x0qDTPIA', '9am - 8pm', 'Mon - Sat', '1574054730service-shape.png', 'Let\'s make the world better,together', 'Request a call back', '1578465075request-call.png', '16192632605-min.jpg', '1578465075map.png', '1574071573clock-icon.png', '1574071573call.png', '1574071573marker-icon.png', 'Small Effort Make Big Change.', 'Are you ready to make a change?', 'Search for causes that are special to you or just take a look at what amazing charities are doing', '1619263215slider-min.jpg', 'https://www.google.com/', 'https://www.google.com/', 1, 1, 1, 1, 1, 1, 1, 1, 'Donate', 'Campaign', 'https://www.rokomari.com/my-section/orders', '16612369808015587741658386167.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(3, NULL, NULL, NULL, 'Voguepay', 'automatic', '{\"merchant_id\":\"demo\",\"developer_code\":\"5a61be72ab323\",\"text\":\"Pay Via Voguepay.\"}', 'voguepay', 1),
(5, NULL, NULL, NULL, '2Checkout', 'automatic', '{\"seller_id\":\"250201990346\",\"public_key\":\"00CB71D7-A4A7-4834-899F-40AAD5DC68B1\",\"private_key\":\"0222D6FF-6647-4DC0-B29A-F20413302AFD\",\"sandbox_check\":1,\"text\":\"Pay Via 2Checkout.\"}', '2checkout', 1),
(6, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X\",\"secret_key\":\"FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', 1),
(7, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"sandbox_check\":1,\"text\":\"Pay Via MercadoPago\"}', 'mercadopago', 1),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize.net', 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', 1),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":1,\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1),
(17, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `subtitle`, `photo`, `details`) VALUES
(2, 'Latest project', 'Why do we use it?', '1574146456woman-standing-on-the-center-table-with-four-people-on-the-1367271.jpg', '\"That conviction is where the process of change really begins—with the realization that just because a certain abuse has taken place in the past doesn’t mean that we have to tole. That conviction is where the process of change really begins\"'),
(3, 'Latest project.', 'Why do we use it?', '1574146447photo-of-people-using-laptop-3194521.jpg', '\"That conviction is where the process of change really begins—with the realization that just because a certain abuse has taken place in the past doesn’t mean that we have to tole. That conviction is where the process of change really begins\"'),
(5, 'This is test post', 'Trams', '16172147271574146447photo-of-people-using-laptop-3194521.jpg', '\"That conviction is where the process of change really begins—with the realization that just because a certain abuse has taken place in the past doesn’t mean that we have to tole. That conviction is where the process of change really begins\"');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`, `facebook_pixel`) VALUES
(1, 'UA-137437974-1', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea', 'UA-137437974-1');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `category_id` int(191) DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `title`, `subtitle`, `details`, `photo`, `is_featured`, `slug`) VALUES
(36, 12, 'A Global Network', 'Lorem ipsum dolor sit amet, iaculis consectetur adipiscing elit. Cras aciaculis arcu.', '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</span>', '1618465837161803487315773582991573537275si2.jpg', 0, 'global-network-25'),
(56, NULL, 'Latest project.', NULL, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</span>', '161846582615773583821573535273ic3.png', 0, NULL),
(57, NULL, 'Latest project. 2', NULL, '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</span>', '161846581115773582891573537298si4.jpg', 0, NULL),
(59, NULL, 'This is test Project', NULL, '<span open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Lorem Ipsum</span><span open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</span><br>', '161846580015773583711564379080icon1.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/charity/main-charity/auth/facebook/callback', '915191002660-okcvhj4qspmbcm4qgn9et4vnu5q3mdei.apps.googleusercontent.com', 'PP-ZuCXvvdIPrpUy2WEDeIck', 'http://localhost/charity-7/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(3, 17, '102485372716947456487', 'google', '2019-06-19 17:06:00', '2019-06-19 17:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(24, 'admin@gmail.com'),
(25, 'writer@gmail.com'),
(26, 'pronobsarker16@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`) VALUES
(1, 'user', '1581736912team.png', '1234', 'Washington, DC', 'Space Needle 400 Broad St, Seattles', '5079956958', '5079956958', 'user@gmail.com', '$2a$12$nPSNdl3LdAwiTArseG60NumNOE1x.F8Q0Uh0w01m.ice1h8t.WsWG', NULL, '2020-01-18 03:38:04', '2022-08-23 00:46:39', 0, 0, 'c32b9b52bc24e688871e520098b3ec42', 'Yes'),
(4, 'showrav Hasan', NULL, NULL, NULL, 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '01728332009', NULL, 'teacher@gmail.com', '$2y$10$5DbTdDkGw977Tsht2o1EUub7JBrQHvFA5nvDxLF3Zi4.ag6F639u2', NULL, '2021-03-27 03:17:07', '2021-03-27 03:17:07', 0, 0, 'f8ca6f74df54913be6296df993f3fd61', 'Yes'),
(5, 'Dark Loard', NULL, NULL, NULL, 'road-04', '0123456789', NULL, 'rifatbhairab4@gmail.com', '$2y$10$gvmA5PtllqXb1ySj3DlTvOiu0nI3Pfe0PuKjLqJTwj2b55lWvtMam', NULL, '2022-08-22 02:43:18', '2022-08-22 02:43:18', 0, 0, '19ff1e5abf37f67ff79b22001fa9af41', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `campaign_id` int(191) DEFAULT NULL,
  `withdraw_id` int(191) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('campaign','Payout','Withdraw','message') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `campaign_id`, `withdraw_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`, `type`) VALUES
(15, 1, 75, NULL, NULL, 0, '2022-08-23 00:00:20', '2022-08-23 00:00:20', 'campaign');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `campaign_id` int(11) NOT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `campaign_id`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(2, 1, 'Paypal', 'teacher@gmail.com', NULL, NULL, NULL, NULL, NULL, 'adfadsfad', 0.03, 67, 2.1497, '2021-03-27 09:38:07', '2021-03-27 09:38:07', 'pending', 'user'),
(3, 1, 'Paypal', 'pronob@gmail.com', NULL, NULL, NULL, NULL, NULL, 'trgfhftghtgh', 2.85, 67, 2.15, '2021-04-15 08:07:41', '2021-04-15 08:33:34', 'completed', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `callback_messages`
--
ALTER TABLE `callback_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_counters`
--
ALTER TABLE `home_counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `callback_messages`
--
ALTER TABLE `callback_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_counters`
--
ALTER TABLE `home_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
