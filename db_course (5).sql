-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 01:46 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_course`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'User Test TEST', NULL, NULL, NULL, NULL, NULL, '[]', NULL, '2024-03-23 06:48:20', '2024-03-23 06:48:20'),
(2, 'default', 'edited', NULL, NULL, NULL, NULL, NULL, '[]', NULL, '2024-03-23 07:06:28', '2024-03-23 07:06:28'),
(3, 'default', 'edited', NULL, NULL, NULL, NULL, NULL, '[]', NULL, '2024-03-23 07:07:56', '2024-03-23 07:07:56'),
(4, 'default', 'edited', NULL, NULL, NULL, NULL, NULL, '[]', NULL, '2024-03-23 07:08:34', '2024-03-23 07:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `categoris`
--

CREATE TABLE `categoris` (
  `id` bigint UNSIGNED NOT NULL,
  `categori_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoris`
--

INSERT INTO `categoris` (`id`, `categori_title`, `about`, `type`, `created_at`, `updated_at`) VALUES
(5, 'Back End', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Informatika', '2024-03-27 05:41:27', '2024-03-27 05:41:27'),
(6, 'Front End', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Informatika', '2024-03-27 05:42:45', '2024-03-27 05:42:45'),
(7, 'Database Management Sistem', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Informatika', '2024-03-27 05:44:19', '2024-03-27 05:44:19'),
(8, 'Petugas k3 Officer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Sipil', '2024-03-27 05:47:31', '2024-03-27 05:47:31'),
(9, 'Perancangan Warehouse Baja', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Sipil', '2024-03-27 05:49:49', '2024-03-27 05:49:49'),
(10, 'Kursus Teknik Injeksi Mesin', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Sipil', '2024-03-27 05:50:14', '2024-03-27 05:50:14'),
(11, 'Element Mesin 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Mesin', '2024-03-27 05:51:52', '2024-03-27 05:51:52'),
(12, 'Teknik Getaran', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis quas nesciunt deleniti perferendis corrupti! Voluptatem harum, odit omnis accusamus at hic, fugiat itaque perspiciatis illo dolore, molestiae eius facere aliquam.', 'Mesin', '2024-03-27 05:52:12', '2024-03-27 05:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `chapter_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `course_id`, `chapter_title`, `about`, `created_at`, `updated_at`) VALUES
(8, 22, 'Dasar Dasar Pemrograman PHP 1', 'About Course 1', NULL, NULL),
(9, 22, 'Dasar Dasar Pemrograman PHP 2', 'About Course 2', NULL, NULL),
(10, 22, 'Dasar Dasar Pemrograman PHP 3', 'About Course 3', NULL, NULL),
(11, 23, 'Belajar Dasar Pemograman Javasccript 1', 'About Course 1', NULL, NULL),
(12, 23, 'Belajar Dasar Pemograman Javasccript 2', 'About Course 2', NULL, NULL),
(13, 23, 'Belajar Dasar Pemograman Javasccript 3', 'About Course 3', NULL, NULL),
(14, 24, 'Belajar Membuat Aplikasi Backend Pemula 1', 'About Course 1', NULL, NULL),
(15, 24, 'Belajar Membuat Aplikasi Backend Pemula 2', 'About Course 2', NULL, NULL),
(16, 24, 'Belajar Membuat Aplikasi Backend Pemula 3', 'About Course 3', NULL, NULL),
(17, 40, 'Chapter Title 1', 'About Course 1', NULL, NULL),
(18, 37, 'Chapter Title 2', 'About Course 2', NULL, NULL),
(19, 36, 'Chapter Title 3', 'About Course 3', NULL, NULL),
(20, 42, 'Chapter Title 4', 'About Course 4', NULL, NULL),
(21, 39, 'Chapter Title 5', 'About Course 5', NULL, NULL),
(22, 26, 'Chapter Title 6', 'About Course 6', NULL, NULL),
(23, 32, 'Chapter Title 7', 'About Course 7', NULL, NULL),
(24, 48, 'Chapter Title 8', 'About Course 8', NULL, NULL),
(25, 52, 'Chapter Title 9', 'About Course 9', NULL, NULL),
(26, 54, 'Chapter Title 10', 'About Course 10', NULL, NULL),
(27, 29, 'Chapter Title 11', 'About Course 11', NULL, NULL),
(28, 38, 'Chapter Title 12', 'About Course 12', NULL, NULL),
(29, 36, 'Chapter Title 13', 'About Course 13', NULL, NULL),
(30, 50, 'Chapter Title 14', 'About Course 14', NULL, NULL),
(31, 48, 'Chapter Title 15', 'About Course 15', NULL, NULL),
(32, 25, 'Chapter Title 16', 'About Course 16', NULL, NULL),
(33, 30, 'Chapter Title 17', 'About Course 17', NULL, NULL),
(34, 42, 'Chapter Title 18', 'About Course 18', NULL, NULL),
(35, 34, 'Chapter Title 19', 'About Course 19', NULL, NULL),
(36, 53, 'Chapter Title 20', 'About Course 20', NULL, NULL),
(37, 47, 'Chapter Title 21', 'About Course 21', NULL, NULL),
(38, 50, 'Chapter Title 22', 'About Course 22', NULL, NULL),
(39, 43, 'Chapter Title 23', 'About Course 23', NULL, NULL),
(40, 50, 'Chapter Title 24', 'About Course 24', NULL, NULL),
(41, 39, 'Chapter Title 25', 'About Course 25', NULL, NULL),
(42, 48, 'Chapter Title 26', 'About Course 26', NULL, NULL),
(43, 50, 'Chapter Title 27', 'About Course 27', NULL, NULL),
(44, 38, 'Chapter Title 28', 'About Course 28', NULL, NULL),
(45, 43, 'Chapter Title 29', 'About Course 29', NULL, NULL),
(46, 48, 'Chapter Title 30', 'About Course 30', NULL, NULL),
(47, 28, 'Chapter Title 31', 'About Course 31', NULL, NULL),
(48, 30, 'Chapter Title 32', 'About Course 32', NULL, NULL),
(49, 51, 'Chapter Title 33', 'About Course 33', NULL, NULL),
(50, 36, 'Chapter Title 34', 'About Course 34', NULL, NULL),
(51, 39, 'Chapter Title 35', 'About Course 35', NULL, NULL),
(52, 58, 'Chapter Title 36', 'About Course 36', NULL, NULL),
(53, 50, 'Chapter Title 37', 'About Course 37', NULL, NULL),
(54, 39, 'Chapter Title 38', 'About Course 38', NULL, NULL),
(55, 47, 'Chapter Title 39', 'About Course 39', NULL, NULL),
(56, 35, 'Chapter Title 40', 'About Course 40', NULL, NULL),
(57, 57, 'Chapter Title 41', 'About Course 41', NULL, NULL),
(58, 41, 'Chapter Title 42', 'About Course 42', NULL, NULL),
(59, 27, 'Chapter Title 43', 'About Course 43', NULL, NULL),
(60, 36, 'Chapter Title 44', 'About Course 44', NULL, NULL),
(61, 48, 'Chapter Title 45', 'About Course 45', NULL, NULL),
(62, 53, 'Chapter Title 46', 'About Course 46', NULL, NULL),
(63, 34, 'Chapter Title 47', 'About Course 47', NULL, NULL),
(64, 50, 'Chapter Title 48', 'About Course 48', NULL, NULL),
(65, 45, 'Chapter Title 49', 'About Course 49', NULL, NULL),
(66, 49, 'Chapter Title 50', 'About Course 50', NULL, NULL),
(67, 26, 'Chapter Title 51', 'About Course 51', NULL, NULL),
(68, 34, 'Chapter Title 52', 'About Course 52', NULL, NULL),
(69, 44, 'Chapter Title 53', 'About Course 53', NULL, NULL),
(70, 38, 'Chapter Title 54', 'About Course 54', NULL, NULL),
(71, 56, 'Chapter Title 55', 'About Course 55', NULL, NULL),
(72, 43, 'Chapter Title 56', 'About Course 56', NULL, NULL),
(73, 47, 'Chapter Title 57', 'About Course 57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cobas`
--

CREATE TABLE `cobas` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `course_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` smallint DEFAULT '0',
  `categori_id` bigint UNSIGNED DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duration` time NOT NULL,
  `tags` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` smallint DEFAULT '100',
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_title`, `description`, `max`, `level`, `status`, `price`, `categori_id`, `image`, `video`, `start_date`, `language`, `requirment`, `about`, `duration`, `tags`, `target`, `review`, `created_by`, `created_at`, `update_by`, `updated_at`) VALUES
(22, 'Dasar Dasar Pemograman PHP', 'Materi dasar tentang PHP', '100', 'Beginner', 'public', 0, 5, '1711544581.jpg', '1711544581.mp4', '2024-03-27', 'Indonesia', 'Memiliki pemahaman dasar tentang struktur kode dan sintaksis dalam pemrograman.\r\nKemampuan menggunakan editor teks atau IDE untuk menulis dan menjalankan kode PHP.', 'PHP, singkatan dari Hypertext Preprocessor, adalah bahasa pemrograman server-side yang digunakan untuk pengembangan web dinamis. ', '08:01:00', 'PHP, Pemrograman, Dasar', 'Mahasiswa,Pengembang Web Pemula', 58, '1', '2024-03-27 06:03:01', NULL, '2024-03-27 06:03:01'),
(23, 'Belajar Dasar Pemograman Javasccript', 'Materi dasar tentang javascript', '100', 'Intermediate', 'public', 0, 5, '1711549161.jpg', '1711549161.mp4', '2024-03-27', 'Indonesia', 'javascrip, logic', 'JavaScript adalah bahasa pemrograman yang digunakan terutama untuk mengembangkan aplikasi web interaktif. ', '23:18:00', 'JavaScript, Pemrograman, Dasar', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 54, '2', '2024-03-27 07:19:21', NULL, '2024-03-27 07:19:21'),
(24, 'Belajar Membuat Aplikasi Backend Pemula', 'tahapan pembuatan aplikasi backend\r\n', '100', 'Beginner', 'public', 0, 5, '1711549268.jpg', '1711549268.mp4', '2024-03-27', 'Indonesia', 'logic, backend', 'Pembuatan aplikasi backend melibatkan serangkaian tahapan yang harus dilalui untuk menghasilkan sebuah aplikasi yang berfungsi dengan baik dan dapat digunakan oleh pengguna.', '09:00:00', 'Backend, Aplikasi, Pemula', 'Mahasiswa,Pengembang Web Pemula', 44, '2', '2024-03-27 07:21:08', NULL, '2024-03-27 07:21:08'),
(25, 'Belajar Fundamental Aplikasi Backend', 'Penguatan fundamental backend', '100', 'Advance', 'public', 0, 5, '1711549350.jpg', '1711549350.mp4', '2024-03-27', 'Indonesia', 'backend, fundamental ', 'Penguatan fundamental dalam pengembangan backend adalah kunci untuk membangun aplikasi yang handal, efisien, dan aman.', '22:22:00', 'Backend, Fundamental, Aplikasi', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 51, '2', '2024-03-27 07:22:30', NULL, '2024-03-27 07:22:30'),
(26, 'Menjadi Backend Programmer', 'Pembelajaran Backend Programmer', '38', 'Expert', 'public', 0, 5, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'backend, bahasa pemograman ', 'Pembelajaran sebagai seorang Backend Programmer melibatkan pemahaman yang kuat tentang konsep-konsep dasar dalam pengembangan aplikasi server-side, serta penguasaan keterampilan teknis yang diperlukan untuk membangun dan memelihara backend aplikasi dengan baik', '08:01:00', 'Backend, Programmer', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 59, '1', '2024-03-27 14:48:12', NULL, '2024-03-27 07:22:30'),
(27, 'Create Rest API', 'Tahapan pembuatan rest API', '43', 'Beginner', 'public', 0, 5, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'English', 'API, logic API', 'Pembuatan RESTful API melibatkan serangkaian tahapan yang harus dilalui untuk merancang, mengimplementasikan, dan memelihara antarmuka pemrograman aplikasi yang dapat diakses secara fleksibel oleh berbagai aplikasi klien.', '08:01:00', 'API, REST', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 56, '2', '2024-03-27 14:48:13', NULL, '2024-03-27 07:22:30'),
(28, 'Integrate Rest API with ORM', 'Pembahasan tentang rest API', '90', 'Advanced', 'public', 0, 5, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'API, dasar-dasar API', 'Representational State Transfer (REST) adalah gaya arsitektur perangkat lunak yang digunakan dalam pengembangan aplikasi web untuk membuat antarmuka yang efisien, fleksibel, dan dapat diakses secara luas. RESTful API (Application Programming Interface) adalah antarmuka pemrograman aplikasi yang mengikuti prinsip-prinsip REST', '08:01:00', 'API, ORM, Integrasi', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 62, '1', '2024-03-27 14:48:15', NULL, '2024-03-27 07:22:30'),
(29, 'Log Socet API Client', 'Tentang API ', '90', 'Advanced', 'public', 0, 5, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'API', 'API, atau Application Programming Interface, adalah serangkaian aturan, protokol, dan alat yang memungkinkan berbagai aplikasi perangkat lunak untuk berkomunikasi, berinteraksi, dan saling berintegrasi satu sama lain. API menyediakan cara standar bagi pengembang untuk mengakses dan menggunakan fungsi-fungsi yang disediakan oleh suatu sistem atau platform tanpa perlu mengetahui detail implementasi internalnya', '08:01:00', 'API, Socket, Client, Log', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 44, '2', '2024-03-27 14:48:16', NULL, '2024-03-27 07:22:30'),
(30, 'Belajar Fundamental Backedn Developer', 'Penguatan fundamental backend developer Level Expert', '90', 'Expert', 'public', 0, 5, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'Fundamental', 'Untuk memperkuat fundamental sebagai seorang Backend Developer tingkat ahli, Anda perlu fokus pada penguasaan konsep-konsep yang lebih mendalam, menguasai teknologi-teknologi terkini, dan mengembangkan keterampilan yang diperlukan untuk merancang, mengimplementasikan, dan memelihara sistem backend yang kompleks dan skala besar', '08:01:00', 'Backend, Fundamental, Developer', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 56, '1', '2024-03-27 14:48:16', NULL, '2024-03-27 07:22:30'),
(31, 'Document And Deploy', 'Pengetahuan tentang document dan deploying', '90', 'Advanced', 'public', 0, 5, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'deploy, devops', 'Untuk seorang Backend Developer pada tingkat ahli, pengetahuan tentang dokumentasi (document) dan penyebaran (deploying) sangat penting untuk memastikan bahwa aplikasi yang dikembangkan dapat diimplementasikan dan dijalankan dengan benar', '08:01:00', 'Dokumentasi, Penyebaran, Deploy', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 10, '1', '2024-03-27 14:48:17', NULL, '2024-03-27 07:22:30'),
(32, 'Introduction HTML & CSS', 'HTML dan CSS', '38', 'Expert', 'public', 0, 6, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'dasar - dasar html dan css', 'HTML (HyperText Markup Language) dan CSS (Cascading Style Sheets) adalah dua bahasa yang sangat penting dalam pengembangan web', '08:01:00', 'HTML, CSS, Pengantar', 'Mahasiswa,Pengembang Web Pemula', 37, '2', '2024-03-27 14:48:18', NULL, '2024-03-27 07:22:30'),
(33, 'Attributes And Blok ELement', 'Blok ELement ', '43', 'Beginner', 'public', 0, 6, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'English', 'element ', 'Elemen blok (block element) dalam HTML adalah elemen yang secara alami menempati baris penuh pada halaman web dan secara default memulai dan mengakhiri dengan baris baru. Elemen blok biasanya digunakan untuk menentukan struktur utama dari sebuah halaman web, seperti header, paragraf, daftar, tabel, dan sebagainya', '08:01:00', 'HTML, CSS, Elemen Blok, Atribut', 'Mahasiswa,Pengembang Web Pemula', 44, '2', '2024-03-27 14:48:18', NULL, '2024-03-27 07:22:30'),
(34, 'Belajar Dasar Pemograman', 'Pemograman ', '90', 'Advanced', 'public', 0, 6, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'pemograman', '\"Pemrograman\" merujuk pada proses menulis kode komputer untuk membuat program yang dapat menjalankan tugas-tugas tertentu atau menyelesaikan masalah tertentu. Ini melibatkan penggunaan bahasa pemrograman untuk menginstruksikan komputer tentang apa yang harus dilakukan.', '08:01:00', 'Pemrograman, Dasar', 'Mahasiswa,Pengembang Web Pemula', 61, '1', '2024-03-27 14:48:19', NULL, '2024-03-27 07:22:30'),
(35, 'Belajar Dasar Javascript', 'Javascript ', '90', 'Advanced', 'public', 0, 6, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'javascript', 'JavaScript adalah bahasa pemrograman tingkat tinggi yang secara khusus digunakan untuk membuat interaksi dinamis pada halaman web. Sebagai bahasa scripting yang dapat dijalankan di sisi klien (client-side), JavaScript memungkinkan pengembang untuk membuat aplikasi web yang responsif dan interaktif.', '08:01:00', 'JavaScript, Pemrograman, Dasar', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 39, '2', '2024-03-27 14:48:20', NULL, '2024-03-27 07:22:30'),
(36, 'Belajar Front End Pemula', 'Frontend', '90', 'Advanced', 'public', 0, 6, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'frontend', 'Bidang pengembangan yang bertanggung jawab untuk merancang dan mengimplementasikan antarmuka pengguna (UI) dari aplikasi web atau mobile. Ini mencakup penggunaan HTML, CSS, dan JavaScript untuk membuat halaman web interaktif dan menarik.', '08:01:00', 'Frontend, Pemula', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 71, '1', '2024-03-27 14:48:21', NULL, '2024-03-27 07:22:30'),
(37, 'Belajar Fundamental Front End', 'Lanjutan Frontend', '90', 'Advanced', 'public', 0, 6, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'frontend', 'Lanjutan dari pengembangan frontend yang mencakup penerapan teknologi-teknologi baru dan kompleks untuk meningkatkan pengalaman pengguna, seperti penggunaan framework JavaScript seperti React, Angular, atau Vue untuk pengembangan UI yang dinamis.', '08:01:00', 'Frontend, Fundamental', 'Mahasiswa,Pengembang Web Pemula', 38, '1', '2024-03-27 14:48:22', NULL, '2024-03-27 07:22:30'),
(38, 'Intrudation Database Management System (DBMS)', 'Database', '38', 'Expert', 'public', 0, 7, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'database', 'Kumpulan data yang terstruktur yang disimpan dalam sistem komputer yang dapat diakses dan dimanipulasi. Ini mencakup penyimpanan, pengelolaan, dan pengambilan data untuk digunakan dalam aplikasi perangkat lunak.', '08:01:00', 'Database, DBMS, Pengantar', 'Mahasiswa,Pengembang Web Pemula', 83, '23', '2024-03-27 14:53:18', NULL, '2024-03-27 07:22:30'),
(39, 'Fundamental Of Database Enginners', 'Database Fundamental ', '43', 'Beginner', 'public', 0, 7, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'Indonesia', 'fundamental, database', 'Konsep dasar dan prinsip-prinsip yang mendasari pengelolaan data dalam basis data, termasuk desain skema, normalisasi, dan operasi dasar seperti CRUD (Create, Read, Update, Delete).', '08:01:00', 'Database, Fundamental, Engineer', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 70, '12', '2024-03-27 14:53:19', NULL, '2024-03-27 07:22:30'),
(40, 'Belajar Data Struktur Query', 'Structur Query ', '90', 'Advanced', 'public', 0, 7, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'query, database', 'Teknik dan bahasa untuk mengakses dan memanipulasi data dalam basis data, seperti SQL (Structured Query Language). Ini mencakup penulisan kueri untuk mengekstrak data, memperbarui data, dan melakukan operasi lainnya pada basis data.', '08:01:00', 'Database, Query, Struktur Data', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 47, '23', '2024-03-27 14:53:19', NULL, '2024-03-27 07:22:30'),
(41, 'Mysql Database', 'Mysql Database ', '90', 'Advanced', 'public', 0, 7, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'database', 'Sistem manajemen basis data (DBMS) yang populer yang menggunakan SQL untuk mengelola data. MySQL sering digunakan untuk aplikasi web dan memiliki dukungan yang luas di seluruh industri.', '08:01:00', 'Database, MySQL', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 59, '18', '2024-03-27 14:53:20', NULL, '2024-03-27 07:22:30'),
(42, 'Postgree Database', 'Postgree Database', '90', 'Advanced', 'public', 0, 7, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'database', 'Sistem manajemen basis data (DBMS) open-source yang kuat dan andal yang mendukung fitur-fitur canggih seperti transaksi, subquery, dan indexing. PostgreSQL sering digunakan untuk aplikasi web skala besar.', '08:01:00', 'Database, PostgreSQL', 'Pengembang Web Intermediate,Profesional TI yang ingin Pindah ke Backend', 44, '12', '2024-03-27 14:53:20', NULL, '2024-03-27 07:22:30'),
(43, 'Oracle Database', 'Oracle Database', '90', 'Advanced', 'public', 0, 7, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'database', 'Sistem manajemen basis data (DBMS) dari Oracle Corporation yang menawarkan fitur-fitur canggih untuk pengelolaan data, keamanan, dan kinerja. Oracle Database sering digunakan dalam lingkungan perusahaan dan bisnis.', '08:01:00', 'Database, Oracle', 'Mahasiswa,Pengembang Web Pemula', 65, '38', '2024-03-27 14:53:21', NULL, '2024-03-27 07:22:30'),
(44, 'Intrudation K3 Officer', 'Keselamatan ', '38', 'Expert', 'public', 0, 8, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'kesalamatan', 'Upaya untuk melindungi orang, properti, dan lingkungan dari bahaya, risiko, atau cedera. Ini mencakup penerapan langkah-langkah pengamanan dan prosedur keselamatan untuk mencegah kecelakaan atau insiden.', '08:01:00', 'Keselamatan, Pengantar', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 48, '29', '2024-03-27 14:55:46', NULL, '2024-03-27 07:22:30'),
(45, 'Pertolongan di Ketinggian ', 'Keselamatan di ketinggian ', '43', 'Beginner', 'public', 0, 8, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'Indonesia', 'kesalamatan, ketinggian', 'Keselamatan yang berkaitan dengan pekerjaan atau aktivitas yang dilakukan pada ketinggian, seperti penggunaan peralatan pengaman, tali pengaman, dan prosedur keselamatan khusus.', '08:01:00', 'Keselamatan, Ketinggian, Pertolongan', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 46, '23', '2024-03-27 14:55:47', NULL, '2024-03-27 07:22:30'),
(46, 'Safety First', 'Keselamatan lebih utama ', '90', 'Advanced', 'public', 0, 8, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'kesalamatan, dasar-dasar keselamatan ', 'Prinsip keselamatan yang menempatkan prioritas pada keamanan dan kesejahteraan individu atau kelompok daripada keuntungan atau efisiensi.', '08:01:00', 'Keselamatan, Prioritas', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 63, '19', '2024-03-27 14:55:47', NULL, '2024-03-27 07:22:30'),
(47, 'Prinsip Desain Struktur Baja', 'Struktur baja ', '38', 'Expert', 'Public', 0, 9, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'baja ', 'Konstruksi bangunan atau struktur menggunakan baja sebagai material utama. Ini mencakup perancangan, konstruksi, dan pemeliharaan struktur baja untuk keperluan industri, komersial, atau perumahan.', '08:01:00', 'Struktur Baja, Desain, Prinsip', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 61, '16', '2024-03-27 15:03:38', NULL, '2024-03-27 07:22:30'),
(48, 'Teknik Perancangan Struktur Baja', 'Rancangan bangun struktur baja ', '43', 'Beginner', 'Public', 0, 9, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'English', 'struktur, baja', 'Proses merancang dan merencanakan struktur bangunan atau struktur menggunakan baja sebagai material utama, dengan mempertimbangkan kekuatan, kestabilan, dan efisiensi struktur.', '08:01:00', 'Struktur Baja, Perancangan, Teknik', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 40, '12', '2024-03-27 15:03:39', NULL, '2024-03-27 07:22:30'),
(49, 'Analisis dan Perencanaan Pondasi', 'Perencanaan pondasi ', '90', 'Advanced', 'Public', 0, 9, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'pondasi, rencana', 'Proses merancang dan membangun pondasi yang kuat dan stabil untuk mendukung struktur bangunan atau konstruksi lainnya. Ini mencakup penentuan jenis pondasi, dimensi, dan kedalaman yang diperlukan.', '08:01:00', 'Pondasi, Analisis, Perencanaan', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 73, '11', '2024-03-27 15:03:39', NULL, '2024-03-27 07:22:30'),
(50, 'Pengantar Teknik Injeksi Mesin', 'Ijeksi motor mesin ', '38', 'Expert', 'Public', 0, 10, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'mesin, injeksi', 'Proses menyemprotkan bahan bakar ke dalam ruang bakar mesin pembakaran internal menggunakan sistem injeksi untuk menciptakan campuran bahan bakar dan udara yang optimal untuk pembakaran.', '08:01:00', 'Injeksi Mesin, Pengantar, Teknik', 'Mahasiswa Teknik Mesin,Mekanik Otomotif', 80, '9', '2024-03-27 15:03:40', NULL, '2024-03-27 07:22:30'),
(51, 'Komponen Sistem Injeksi Mesin', 'komponen injeksi ', '43', 'Beginner', 'Public', 0, 10, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'English', 'injeksi', 'Bagian-bagian yang terlibat dalam sistem injeksi mesin, termasuk injektor, pompa bahan bakar, regulator tekanan, dan sensor.', '08:01:00', 'Injeksi Mesin, Komponen, Sistem', 'Mahasiswa Teknik Mesin,Mekanik Otomotif', 35, '8', '2024-03-27 15:03:40', NULL, '2024-03-27 07:22:30'),
(52, 'Tipe-tipe Sistem Injeksi Mesin', 'tipe injeksi ', '90', 'Advanced', 'Public', 0, 10, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'injeksi', 'Berbagai jenis sistem injeksi yang digunakan dalam mesin pembakaran internal, termasuk injeksi langsung dan injeksi tak langsung, serta injeksi bahan bakar bensin dan diesel.\r\n', '08:01:00', 'Injeksi Mesin, Tipe, Sistem', 'Mahasiswa Teknik Mesin,Mekanik Otomotif', 36, '7', '2024-03-27 15:03:41', NULL, '2024-03-27 07:22:30'),
(53, 'Pengantar Element Mesin', 'Element mesin ', '38', 'Expert', 'Public', 0, 11, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'mesin', 'Bagian-bagian komponen mekanis dari mesin, seperti piston, silinder, klep, dan poros engkol, yang bekerja bersama-sama untuk menghasilkan gerakan dan daya mekanis.', '08:01:00', 'Element Mesin, Pengantar', 'Mahasiswa Teknik Mesin,Mekanik Otomotif', 52, '4', '2024-03-27 15:03:41', NULL, '2024-03-27 07:22:30'),
(54, 'Sifat Material', 'Sifat material tanah ', '43', 'Beginner', 'Public', 0, 11, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'English', 'material, tanah ', 'Karakteristik fisik dan mekanik dari tanah, seperti kekuatan, kepadatan, porositas, dan permeabilitas, yang mempengaruhi kemampuan tanah untuk mendukung struktur bangunan atau infrastruktur.', '08:01:00', 'Material, Sifat', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 76, '1', '2024-03-27 15:03:43', NULL, '2024-03-27 07:22:30'),
(55, 'Pengolahan Material', 'Pengolahan material', '90', 'Advanced', 'Public', 0, 11, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'material', ' Proses memproses dan mengolah bahan mentah menjadi produk akhir yang dapat digunakan, seperti logam, plastik, atau kayu, menggunakan teknik dan peralatan tertentu.', '08:01:00', 'Material, Pengolahan', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 52, '3', '2024-03-27 15:03:43', NULL, '2024-03-27 07:22:30'),
(56, 'Pengantar Teknik Getaran', 'Teknik getaran ', '38', 'Expert', 'Public', 0, 12, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'English', 'getaran', 'Ilmu yang mempelajari getaran dan dinamika struktural, termasuk analisis, pemodelan, dan kontrol getaran pada struktur dan sistem mekanis.', '08:01:00', 'Getaran, Pengantar, Teknik', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 69, '2', '2024-03-27 15:03:44', NULL, '2024-03-27 07:22:30'),
(57, 'Sistem dan Model Getaran', 'model getaran ', '43', 'Beginner', 'Public', 0, 12, '1711544581.jpg', '1711544581.mp4', '2024-04-27', 'English', 'model,getaran', 'Representasi matematis atau fisik dari perilaku getaran suatu sistem, yang digunakan untuk memprediksi respons getaran dalam berbagai kondisi operasional.', '08:01:00', 'Getaran, Sistem, Model', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 56, '5', '2024-03-27 15:03:44', NULL, '2024-03-27 07:22:30'),
(58, 'Pemadanan Frekuensi dan Amplitudo', 'frequesi amplitudo', '90', 'Advanced', 'Public', 0, 12, '1711544581.jpg', '1711544581.mp4', '2024-04-19', 'Indonesia', 'amplitudo', 'description for course', '08:01:00', 'Frekuensi, Amplitudo, Pemadanan', 'Mahasiswa Teknik Sipil, Proyek Pembangunan', 66, '4', '2024-03-27 15:03:45', NULL, '2024-03-27 07:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint UNSIGNED NOT NULL,
  `material_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED DEFAULT NULL,
  `completed` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `material_id`, `user_id`, `course_id`, `completed`, `activity_date`, `created_at`, `updated_at`) VALUES
(2959, 31, 129, 25, 'Y', '2024-04-20', NULL, NULL),
(2960, 22, 3, 25, 'Y', '2024-05-21', NULL, NULL),
(2961, 31, 121, 25, 'Y', '2024-06-19', NULL, NULL),
(2962, 22, 43, 25, 'Y', '2024-04-01', NULL, NULL),
(2963, 22, 63, 25, 'Y', '2024-04-12', NULL, NULL),
(2964, 22, 70, 25, 'Y', '2024-06-07', NULL, NULL),
(2965, 22, 58, 25, 'Y', '2024-05-23', NULL, NULL),
(2966, 22, 89, 25, 'Y', '2024-05-28', NULL, NULL),
(2967, 31, 12, 25, 'Y', '2024-06-07', NULL, NULL),
(2968, 31, 51, 25, 'Y', '2024-04-24', NULL, NULL),
(2969, 31, 9, 25, 'Y', '2024-04-09', NULL, NULL),
(2970, 22, 108, 25, 'Y', '2024-06-30', NULL, NULL),
(2971, 22, 33, 25, 'Y', '2024-05-10', NULL, NULL),
(2972, 22, 42, 25, 'Y', '2024-04-09', NULL, NULL),
(2973, 31, 13, 25, 'Y', '2024-04-18', NULL, NULL),
(2974, 22, 8, 25, 'Y', '2024-06-04', NULL, NULL),
(2975, 31, 122, 25, 'Y', '2024-04-18', NULL, NULL),
(2976, 22, 114, 25, 'Y', '2024-04-21', NULL, NULL),
(2977, 22, 74, 25, 'Y', '2024-06-06', NULL, NULL),
(2978, 22, 138, 25, 'Y', '2024-05-28', NULL, NULL),
(2979, 22, 66, 25, 'Y', '2024-06-20', NULL, NULL),
(2980, 22, 56, 25, 'Y', '2024-04-05', NULL, NULL),
(2981, 22, 117, 25, 'Y', '2024-06-16', NULL, NULL),
(2982, 31, 137, 25, 'Y', '2024-04-04', NULL, NULL),
(2983, 31, 19, 25, 'Y', '2024-06-24', NULL, NULL),
(2984, 31, 90, 25, 'Y', '2024-05-03', NULL, NULL),
(2985, 22, 139, 25, 'Y', '2024-05-18', NULL, NULL),
(2986, 31, 101, 25, 'Y', '2024-06-03', NULL, NULL),
(2987, 22, 103, 25, 'Y', '2024-05-09', NULL, NULL),
(2988, 31, 95, 25, 'Y', '2024-04-09', NULL, NULL),
(2989, 31, 102, 25, 'Y', '2024-05-11', NULL, NULL),
(2990, 22, 67, 25, 'Y', '2024-05-31', NULL, NULL),
(2991, 31, 47, 25, 'Y', '2024-05-03', NULL, NULL),
(2992, 31, 134, 25, 'Y', '2024-06-30', NULL, NULL),
(2993, 22, 54, 25, 'Y', '2024-05-07', NULL, NULL),
(2994, 22, 35, 25, 'Y', '2024-06-15', NULL, NULL),
(2995, 22, 45, 25, 'Y', '2024-05-19', NULL, NULL),
(2996, 31, 12, 25, 'Y', '2024-04-24', NULL, NULL),
(2997, 22, 12, 25, 'Y', '2024-06-27', NULL, NULL),
(2998, 31, 63, 25, 'Y', '2024-05-01', NULL, NULL),
(2999, 22, 36, 25, 'Y', '2024-04-13', NULL, NULL),
(3000, 31, 39, 25, 'Y', '2024-05-10', NULL, NULL),
(3001, 31, 64, 25, 'Y', '2024-06-25', NULL, NULL),
(3002, 31, 8, 25, 'Y', '2024-06-12', NULL, NULL),
(3003, 22, 18, 25, 'Y', '2024-05-26', NULL, NULL),
(3004, 31, 101, 25, 'Y', '2024-06-27', NULL, NULL),
(3005, 31, 148, 25, 'Y', '2024-06-20', NULL, NULL),
(3006, 31, 135, 25, 'Y', '2024-06-01', NULL, NULL),
(3007, 31, 51, 25, 'Y', '2024-06-28', NULL, NULL),
(3008, 31, 3, 25, 'Y', '2024-04-16', NULL, NULL),
(3009, 31, 148, 25, 'Y', '2024-05-12', NULL, NULL),
(3010, 22, 101, 25, 'Y', '2024-04-14', NULL, NULL),
(3011, 31, 116, 25, 'Y', '2024-06-23', NULL, NULL),
(3012, 22, 74, 25, 'Y', '2024-05-24', NULL, NULL),
(3013, 22, 132, 25, 'Y', '2024-04-02', NULL, NULL),
(3014, 22, 67, 25, 'Y', '2024-06-18', NULL, NULL),
(3015, 22, 40, 25, 'Y', '2024-06-26', NULL, NULL),
(3016, 31, 58, 25, 'Y', '2024-06-15', NULL, NULL),
(3017, 31, 149, 25, 'Y', '2024-06-28', NULL, NULL),
(3018, 22, 98, 25, 'Y', '2024-04-30', NULL, NULL),
(3019, 31, 88, 25, 'Y', '2024-05-30', NULL, NULL),
(3020, 31, 67, 25, 'Y', '2024-04-09', NULL, NULL),
(3021, 31, 80, 25, 'Y', '2024-04-18', NULL, NULL),
(3022, 31, 90, 25, 'Y', '2024-05-30', NULL, NULL),
(3023, 31, 96, 25, 'Y', '2024-04-12', NULL, NULL),
(3024, 22, 143, 25, 'Y', '2024-04-20', NULL, NULL),
(3025, 31, 77, 25, 'Y', '2024-05-27', NULL, NULL),
(3026, 31, 120, 25, 'Y', '2024-04-27', NULL, NULL),
(3027, 22, 103, 25, 'Y', '2024-06-23', NULL, NULL),
(3028, 31, 56, 25, 'Y', '2024-04-22', NULL, NULL),
(3029, 31, 124, 25, 'Y', '2024-04-29', NULL, NULL),
(3030, 31, 57, 25, 'Y', '2024-05-16', NULL, NULL),
(3031, 31, 68, 25, 'Y', '2024-06-25', NULL, NULL),
(3032, 22, 104, 25, 'Y', '2024-05-23', NULL, NULL),
(3033, 22, 116, 25, 'Y', '2024-05-04', NULL, NULL),
(3034, 31, 53, 25, 'Y', '2024-04-11', NULL, NULL),
(3035, 31, 68, 25, 'Y', '2024-05-11', NULL, NULL),
(3036, 31, 47, 25, 'Y', '2024-06-11', NULL, NULL),
(3037, 22, 7, 25, 'Y', '2024-04-08', NULL, NULL),
(3038, 22, 35, 25, 'Y', '2024-05-18', NULL, NULL),
(3039, 22, 111, 25, 'Y', '2024-05-21', NULL, NULL),
(3040, 22, 21, 25, 'Y', '2024-06-26', NULL, NULL),
(3041, 31, 89, 25, 'Y', '2024-04-05', NULL, NULL),
(3042, 31, 5, 25, 'Y', '2024-06-05', NULL, NULL),
(3043, 22, 8, 25, 'Y', '2024-06-04', NULL, NULL),
(3044, 31, 52, 25, 'Y', '2024-06-04', NULL, NULL),
(3045, 22, 21, 25, 'Y', '2024-04-11', NULL, NULL),
(3046, 31, 113, 25, 'Y', '2024-06-22', NULL, NULL),
(3047, 22, 3, 25, 'Y', '2024-04-05', NULL, NULL),
(3048, 22, 98, 25, 'Y', '2024-05-17', NULL, NULL),
(3049, 31, 64, 25, 'Y', '2024-06-18', NULL, NULL),
(3050, 22, 66, 25, 'Y', '2024-06-01', NULL, NULL),
(3051, 31, 74, 25, 'Y', '2024-05-17', NULL, NULL),
(3052, 22, 72, 25, 'Y', '2024-05-28', NULL, NULL),
(3053, 22, 129, 25, 'Y', '2024-04-29', NULL, NULL),
(3054, 31, 85, 25, 'Y', '2024-05-13', NULL, NULL),
(3055, 22, 100, 25, 'Y', '2024-05-09', NULL, NULL),
(3056, 22, 14, 25, 'Y', '2024-04-13', NULL, NULL),
(3057, 31, 90, 25, 'Y', '2024-04-06', NULL, NULL),
(3058, 22, 109, 25, 'Y', '2024-06-26', NULL, NULL),
(3059, 22, 59, 25, 'Y', '2024-04-29', NULL, NULL),
(3060, 22, 23, 25, 'Y', '2024-04-29', NULL, NULL),
(3061, 22, 104, 25, 'Y', '2024-05-10', NULL, NULL),
(3062, 22, 143, 25, 'Y', '2024-06-30', NULL, NULL),
(3063, 31, 83, 25, 'Y', '2024-04-30', NULL, NULL),
(3064, 30, 76, 36, 'Y', '2024-06-19', NULL, NULL),
(3065, 86, 111, 35, 'Y', '2024-06-07', NULL, NULL),
(3066, 36, 25, 32, 'Y', '2024-05-27', NULL, NULL),
(3067, 74, 33, 47, 'Y', '2024-05-30', NULL, NULL),
(3068, 77, 148, 53, 'Y', '2024-06-09', NULL, NULL),
(3069, 48, 92, 44, 'Y', '2024-04-02', NULL, NULL),
(3070, 79, 58, 26, 'Y', '2024-05-30', NULL, NULL),
(3071, 16, 106, 22, 'Y', '2024-05-27', NULL, NULL),
(3072, 22, 120, 25, 'Y', '2024-06-11', NULL, NULL),
(3073, 31, 106, 25, 'Y', '2024-05-11', NULL, NULL),
(3074, 25, 67, 54, 'Y', '2024-04-25', NULL, NULL),
(3075, 68, 74, 42, 'Y', '2024-04-30', NULL, NULL),
(3076, 86, 61, 35, 'Y', '2024-04-29', NULL, NULL),
(3077, 30, 89, 36, 'Y', '2024-05-04', NULL, NULL),
(3078, 43, 83, 43, 'Y', '2024-04-16', NULL, NULL),
(3079, 64, 36, 29, 'Y', '2024-04-17', NULL, NULL),
(3080, 64, 87, 29, 'Y', '2024-06-13', NULL, NULL),
(3081, 59, 51, 40, 'Y', '2024-04-26', NULL, NULL),
(3082, 30, 15, 36, 'Y', '2024-05-07', NULL, NULL),
(3083, 75, 110, 57, 'Y', '2024-04-11', NULL, NULL),
(3084, 69, 150, 24, 'Y', '2024-04-11', NULL, NULL),
(3085, 26, 97, 23, 'Y', '2024-06-21', NULL, NULL),
(3086, 25, 124, 54, 'Y', '2024-06-19', NULL, NULL),
(3087, 87, 50, 56, 'Y', '2024-04-10', NULL, NULL),
(3088, 58, 46, 22, 'Y', '2024-05-08', NULL, NULL),
(3089, 45, 114, 38, 'Y', '2024-05-29', NULL, NULL),
(3090, 17, 32, 49, 'Y', '2024-05-12', NULL, NULL),
(3091, 70, 143, 43, 'Y', '2024-04-15', NULL, NULL),
(3092, 20, 87, 23, 'Y', '2024-05-08', NULL, NULL),
(3093, 86, 45, 35, 'Y', '2024-04-13', NULL, NULL),
(3094, 30, 26, 36, 'Y', '2024-06-21', NULL, NULL),
(3095, 17, 2, 49, 'Y', '2024-04-06', NULL, NULL),
(3096, 17, 57, 49, 'Y', '2024-05-27', NULL, NULL),
(3097, 35, 55, 24, 'Y', '2024-04-28', NULL, NULL),
(3098, 83, 141, 22, 'Y', '2024-05-25', NULL, NULL),
(3099, 79, 58, 26, 'Y', '2024-04-05', NULL, NULL),
(3100, 62, 16, 58, 'Y', '2024-04-24', NULL, NULL),
(3101, 29, 105, 48, 'Y', '2024-05-09', NULL, NULL),
(3102, 17, 100, 49, 'Y', '2024-06-16', NULL, NULL),
(3103, 79, 53, 26, 'Y', '2024-04-05', NULL, NULL),
(3104, 17, 11, 49, 'Y', '2024-05-19', NULL, NULL),
(3105, 83, 42, 22, 'Y', '2024-04-30', NULL, NULL),
(3106, 25, 129, 54, 'Y', '2024-06-28', NULL, NULL),
(3107, 20, 124, 23, 'Y', '2024-05-06', NULL, NULL),
(3108, 75, 6, 57, 'Y', '2024-05-31', NULL, NULL),
(3109, 22, 132, 25, 'Y', '2024-04-22', NULL, NULL),
(3110, 75, 111, 57, 'Y', '2024-05-25', NULL, NULL),
(3111, 45, 86, 38, 'Y', '2024-04-18', NULL, NULL),
(3112, 59, 124, 40, 'Y', '2024-04-05', NULL, NULL),
(3113, 34, 146, 50, 'Y', '2024-06-25', NULL, NULL),
(3114, 68, 100, 42, 'Y', '2024-06-27', NULL, NULL),
(3115, 78, 139, 39, 'Y', '2024-06-16', NULL, NULL),
(3116, 36, 4, 32, 'Y', '2024-04-08', NULL, NULL),
(3117, 22, 131, 25, 'Y', '2024-06-16', NULL, NULL),
(3118, 71, 131, 39, 'Y', '2024-04-21', NULL, NULL),
(3119, 68, 29, 42, 'Y', '2024-04-29', NULL, NULL),
(3120, 68, 140, 42, 'Y', '2024-04-14', NULL, NULL),
(3121, 58, 44, 22, 'Y', '2024-06-12', NULL, NULL),
(3122, 34, 40, 50, 'Y', '2024-04-13', NULL, NULL),
(3123, 80, 65, 26, 'Y', '2024-06-23', NULL, NULL),
(3124, 50, 23, 56, 'Y', '2024-06-06', NULL, NULL),
(3125, 69, 140, 24, 'Y', '2024-04-10', NULL, NULL),
(3126, 21, 105, 41, 'Y', '2024-04-30', NULL, NULL),
(3127, 17, 22, 49, 'Y', '2024-04-06', NULL, NULL),
(3128, 37, 91, 38, 'Y', '2024-05-13', NULL, NULL),
(3129, 15, 59, 23, 'Y', '2024-05-05', NULL, NULL),
(3130, 79, 85, 26, 'Y', '2024-05-15', NULL, NULL),
(3131, 62, 97, 58, 'Y', '2024-06-22', NULL, NULL),
(3132, 31, 131, 25, 'Y', '2024-05-17', NULL, NULL),
(3133, 15, 33, 23, 'Y', '2024-05-13', NULL, NULL),
(3134, 27, 46, 47, 'Y', '2024-04-16', NULL, NULL),
(3135, 25, 27, 54, 'Y', '2024-04-01', NULL, NULL),
(3136, 86, 123, 35, 'Y', '2024-06-26', NULL, NULL),
(3137, 49, 136, 34, 'Y', '2024-04-15', NULL, NULL),
(3138, 31, 11, 25, 'Y', '2024-05-30', NULL, NULL),
(3139, 24, 149, 39, 'Y', '2024-06-15', NULL, NULL),
(3140, 86, 118, 35, 'Y', '2024-06-05', NULL, NULL),
(3141, 35, 37, 24, 'Y', '2024-05-28', NULL, NULL),
(3142, 18, 150, 53, 'Y', '2024-05-25', NULL, NULL),
(3143, 33, 81, 51, 'Y', '2024-04-18', NULL, NULL),
(3144, 22, 48, 25, 'Y', '2024-05-15', NULL, NULL),
(3145, 75, 22, 57, 'Y', '2024-06-21', NULL, NULL),
(3146, 30, 67, 36, 'Y', '2024-06-23', NULL, NULL),
(3147, 50, 69, 56, 'Y', '2024-04-29', NULL, NULL),
(3148, 83, 134, 22, 'Y', '2024-06-22', NULL, NULL),
(3149, 69, 81, 24, 'Y', '2024-06-03', NULL, NULL),
(3150, 20, 124, 23, 'Y', '2024-04-25', NULL, NULL),
(3151, 88, 36, 32, 'Y', '2024-04-10', NULL, NULL),
(3152, 62, 42, 58, 'Y', '2024-06-28', NULL, NULL),
(3153, 75, 4, 57, 'Y', '2024-06-04', NULL, NULL),
(3154, 47, 150, 39, 'Y', '2024-06-10', NULL, NULL),
(3155, 14, 57, 22, 'Y', '2024-05-22', NULL, NULL),
(3156, 14, 19, 22, 'Y', '2024-04-28', NULL, NULL),
(3157, 79, 57, 26, 'Y', '2024-04-05', NULL, NULL),
(3158, 18, 47, 53, 'Y', '2024-04-11', NULL, NULL),
(3159, 33, 74, 51, 'Y', '2024-04-04', NULL, NULL),
(3160, 60, 70, 43, 'Y', '2024-04-09', NULL, NULL),
(3161, 29, 76, 48, 'Y', '2024-04-07', NULL, NULL),
(3162, 68, 72, 42, 'Y', '2024-06-08', NULL, NULL),
(3163, 19, 20, 39, 'Y', '2024-04-16', NULL, NULL),
(3164, 30, 99, 36, 'Y', '2024-05-16', NULL, NULL),
(3165, 75, 3, 57, 'Y', '2024-04-02', NULL, NULL),
(3166, 30, 85, 36, 'Y', '2024-05-17', NULL, NULL),
(3167, 86, 38, 35, 'Y', '2024-04-28', NULL, NULL),
(3168, 41, 127, 39, 'Y', '2024-04-06', NULL, NULL),
(3169, 28, 64, 43, 'Y', '2024-06-13', NULL, NULL),
(3170, 87, 83, 56, 'Y', '2024-06-24', NULL, NULL),
(3171, 33, 103, 51, 'Y', '2024-04-12', NULL, NULL),
(3172, 78, 51, 39, 'Y', '2024-04-23', NULL, NULL),
(3173, 16, 131, 22, 'Y', '2024-05-02', NULL, NULL),
(3174, 69, 78, 24, 'Y', '2024-05-22', NULL, NULL),
(3175, 83, 137, 22, 'Y', '2024-04-01', NULL, NULL),
(3176, 19, 126, 39, 'Y', '2024-04-05', NULL, NULL),
(3177, 45, 137, 38, 'Y', '2024-05-22', NULL, NULL),
(3178, 64, 2, 29, 'Y', '2024-05-24', NULL, NULL),
(3179, 49, 69, 34, 'Y', '2024-05-29', NULL, NULL),
(3180, 36, 3, 32, 'Y', '2024-04-17', NULL, NULL),
(3181, 87, 66, 56, 'Y', '2024-06-27', NULL, NULL),
(3182, 18, 77, 53, 'Y', '2024-04-06', NULL, NULL),
(3183, 17, 15, 49, 'Y', '2024-04-18', NULL, NULL),
(3184, 25, 105, 54, 'Y', '2024-04-07', NULL, NULL),
(3185, 53, 65, 23, 'Y', '2024-04-03', NULL, NULL),
(3186, 33, 6, 51, 'Y', '2024-04-20', NULL, NULL),
(3187, 17, 150, 49, 'Y', '2024-04-09', NULL, NULL),
(3188, 43, 49, 43, 'Y', '2024-06-05', NULL, NULL),
(3189, 17, 18, 49, 'Y', '2024-06-29', NULL, NULL),
(3190, 61, 15, 40, 'Y', '2024-06-01', NULL, NULL),
(3191, 84, 33, 24, 'Y', '2024-04-04', NULL, NULL),
(3192, 71, 113, 39, 'Y', '2024-04-19', NULL, NULL),
(3193, 37, 7, 38, 'Y', '2024-04-30', NULL, NULL),
(3194, 61, 127, 40, 'Y', '2024-05-01', NULL, NULL),
(3195, 41, 7, 39, 'Y', '2024-06-03', NULL, NULL),
(3196, 33, 79, 51, 'Y', '2024-06-04', NULL, NULL),
(3197, 43, 32, 43, 'Y', '2024-05-26', NULL, NULL),
(3198, 65, 21, 48, 'Y', '2024-04-23', NULL, NULL),
(3199, 29, 86, 48, 'Y', '2024-04-07', NULL, NULL),
(3200, 80, 47, 26, 'Y', '2024-04-18', NULL, NULL),
(3201, 61, 132, 40, 'Y', '2024-05-04', NULL, NULL),
(3202, 38, 84, 39, 'Y', '2024-05-28', NULL, NULL),
(3203, 36, 71, 32, 'Y', '2024-05-29', NULL, NULL),
(3204, 50, 13, 56, 'Y', '2024-05-03', NULL, NULL),
(3205, 77, 117, 53, 'Y', '2024-06-13', NULL, NULL),
(3206, 49, 143, 34, 'Y', '2024-04-01', NULL, NULL),
(3207, 61, 55, 40, 'Y', '2024-06-24', NULL, NULL),
(3208, 68, 130, 42, 'Y', '2024-06-11', NULL, NULL),
(3209, 68, 149, 42, 'Y', '2024-06-04', NULL, NULL),
(3210, 75, 39, 57, 'Y', '2024-06-28', NULL, NULL),
(3211, 43, 54, 43, 'Y', '2024-05-18', NULL, NULL),
(3212, 62, 48, 58, 'Y', '2024-06-17', NULL, NULL),
(3213, 61, 63, 40, 'Y', '2024-06-26', NULL, NULL),
(3214, 17, 56, 49, 'Y', '2024-06-08', NULL, NULL),
(3215, 73, 117, 34, 'Y', '2024-06-23', NULL, NULL),
(3216, 79, 5, 26, 'Y', '2024-06-29', NULL, NULL),
(3217, 63, 35, 48, 'Y', '2024-06-20', NULL, NULL),
(3218, 75, 22, 57, 'Y', '2024-06-18', NULL, NULL),
(3219, 54, 70, 41, 'Y', '2024-06-04', NULL, NULL),
(3220, 32, 122, 43, 'Y', '2024-06-29', NULL, NULL),
(3221, 50, 42, 56, 'Y', '2024-05-21', NULL, NULL),
(3222, 79, 105, 26, 'Y', '2024-04-19', NULL, NULL),
(3223, 88, 42, 32, 'Y', '2024-06-12', NULL, NULL),
(3224, 80, 143, 26, 'Y', '2024-04-03', NULL, NULL),
(3225, 67, 77, 24, 'Y', '2024-05-08', NULL, NULL),
(3226, 51, 31, 50, 'Y', '2024-04-14', NULL, NULL),
(3227, 76, 53, 48, 'Y', '2024-04-19', NULL, NULL),
(3228, 77, 21, 53, 'Y', '2024-04-08', NULL, NULL),
(3229, 33, 49, 51, 'Y', '2024-06-10', NULL, NULL),
(3230, 33, 56, 51, 'Y', '2024-06-08', NULL, NULL),
(3231, 15, 25, 23, 'Y', '2024-04-27', NULL, NULL),
(3232, 67, 73, 24, 'Y', '2024-04-08', NULL, NULL),
(3233, 17, 115, 49, 'Y', '2024-06-18', NULL, NULL),
(3234, 80, 149, 26, 'Y', '2024-06-21', NULL, NULL),
(3235, 42, 72, 29, 'Y', '2024-04-09', NULL, NULL),
(3236, 86, 36, 35, 'Y', '2024-04-18', NULL, NULL),
(3237, 79, 10, 26, 'Y', '2024-04-21', NULL, NULL),
(3238, 23, 80, 34, 'Y', '2024-06-30', NULL, NULL),
(3239, 30, 124, 36, 'Y', '2024-06-18', NULL, NULL),
(3240, 54, 80, 41, 'Y', '2024-06-14', NULL, NULL),
(3241, 17, 123, 49, 'Y', '2024-05-29', NULL, NULL),
(3242, 45, 48, 38, 'Y', '2024-05-27', NULL, NULL),
(3243, 30, 75, 36, 'Y', '2024-04-09', NULL, NULL),
(3244, 49, 33, 34, 'Y', '2024-05-08', NULL, NULL),
(3245, 22, 102, 25, 'Y', '2024-04-02', NULL, NULL),
(3246, 47, 86, 39, 'Y', '2024-06-16', NULL, NULL),
(3247, 33, 130, 51, 'Y', '2024-05-12', NULL, NULL),
(3248, 81, 25, 41, 'Y', '2024-05-30', NULL, NULL),
(3249, 25, 59, 54, 'Y', '2024-06-05', NULL, NULL),
(3250, 68, 92, 42, 'Y', '2024-06-08', NULL, NULL),
(3251, 39, 143, 47, 'Y', '2024-04-26', NULL, NULL),
(3252, 50, 102, 56, 'Y', '2024-05-19', NULL, NULL),
(3253, 74, 139, 47, 'Y', '2024-06-07', NULL, NULL),
(3254, 30, 93, 36, 'Y', '2024-04-23', NULL, NULL),
(3255, 79, 118, 26, 'Y', '2024-04-17', NULL, NULL),
(3256, 17, 57, 49, 'Y', '2024-04-27', NULL, NULL),
(3257, 35, 41, 24, 'Y', '2024-05-21', NULL, NULL),
(3258, 84, 30, 24, 'Y', '2024-06-28', NULL, NULL),
(3259, 86, 127, 35, 'Y', '2024-04-18', NULL, NULL),
(3260, 86, 65, 35, 'Y', '2024-06-03', NULL, NULL),
(3261, 67, 150, 24, 'Y', '2024-04-26', NULL, NULL),
(3262, 61, 89, 40, 'Y', '2024-05-26', NULL, NULL),
(3263, 86, 94, 35, 'Y', '2024-06-18', NULL, NULL),
(3264, 34, 44, 50, 'Y', '2024-05-26', NULL, NULL),
(3265, 68, 22, 42, 'Y', '2024-05-10', NULL, NULL),
(3266, 30, 50, 36, 'Y', '2024-04-25', NULL, NULL),
(3267, 17, 138, 49, 'Y', '2024-06-11', NULL, NULL),
(3268, 17, 150, 49, 'Y', '2024-04-08', NULL, NULL),
(3269, 47, 85, 39, 'Y', '2024-06-28', NULL, NULL),
(3270, 25, 123, 54, 'Y', '2024-04-19', NULL, NULL),
(3271, 75, 127, 57, 'Y', '2024-05-24', NULL, NULL),
(3272, 33, 80, 51, 'Y', '2024-05-13', NULL, NULL),
(3273, 39, 17, 47, 'Y', '2024-05-08', NULL, NULL),
(3274, 22, 46, 25, 'Y', '2024-04-22', NULL, NULL),
(3275, 68, 46, 42, 'Y', '2024-04-15', NULL, NULL),
(3276, 68, 126, 42, 'Y', '2024-05-19', NULL, NULL),
(3277, 32, 137, 43, 'Y', '2024-04-08', NULL, NULL),
(3278, 38, 96, 39, 'Y', '2024-06-19', NULL, NULL),
(3279, 17, 92, 49, 'Y', '2024-06-17', NULL, NULL),
(3280, 62, 58, 58, 'Y', '2024-04-18', NULL, NULL),
(3281, 42, 88, 29, 'Y', '2024-04-22', NULL, NULL),
(3282, 86, 37, 35, 'Y', '2024-06-20', NULL, NULL),
(3283, 60, 84, 43, 'Y', '2024-06-09', NULL, NULL),
(3284, 25, 61, 54, 'Y', '2024-04-27', NULL, NULL),
(3285, 17, 104, 49, 'Y', '2024-06-26', NULL, NULL),
(3286, 68, 60, 42, 'Y', '2024-04-07', NULL, NULL),
(3287, 48, 28, 44, 'Y', '2024-05-24', NULL, NULL),
(3288, 27, 70, 47, 'Y', '2024-05-29', NULL, NULL),
(3289, 37, 85, 38, 'Y', '2024-04-12', NULL, NULL),
(3290, 62, 23, 58, 'Y', '2024-06-03', NULL, NULL),
(3291, 20, 35, 23, 'Y', '2024-04-05', NULL, NULL),
(3292, 87, 116, 56, 'Y', '2024-04-10', NULL, NULL),
(3293, 74, 113, 47, 'Y', '2024-04-24', NULL, NULL),
(3294, 51, 136, 50, 'Y', '2024-06-03', NULL, NULL),
(3295, 87, 72, 56, 'Y', '2024-05-29', NULL, NULL),
(3296, 45, 80, 38, 'Y', '2024-04-23', NULL, NULL),
(3297, 49, 6, 34, 'Y', '2024-05-14', NULL, NULL),
(3298, 53, 22, 23, 'Y', '2024-04-06', NULL, NULL),
(3299, 25, 140, 54, 'Y', '2024-04-11', NULL, NULL),
(3300, 69, 69, 24, 'Y', '2024-06-30', NULL, NULL),
(3301, 79, 23, 26, 'Y', '2024-04-24', NULL, NULL),
(3302, 34, 128, 50, 'Y', '2024-05-29', NULL, NULL),
(3303, 24, 9, 39, 'Y', '2024-05-18', NULL, NULL),
(3304, 30, 66, 36, 'Y', '2024-05-05', NULL, NULL),
(3305, 55, 100, 23, 'Y', '2024-05-25', NULL, NULL),
(3306, 30, 132, 36, 'Y', '2024-05-14', NULL, NULL),
(3307, 26, 90, 23, 'Y', '2024-06-06', NULL, NULL),
(3308, 32, 85, 43, 'Y', '2024-05-22', NULL, NULL),
(3309, 81, 76, 41, 'Y', '2024-05-27', NULL, NULL),
(3310, 77, 51, 53, 'Y', '2024-06-11', NULL, NULL),
(3311, 68, 1, 42, 'Y', '2024-04-21', NULL, NULL),
(3312, 49, 61, 34, 'Y', '2024-04-29', NULL, NULL),
(3313, 68, 55, 42, 'Y', '2024-04-10', NULL, NULL),
(3314, 71, 10, 39, 'Y', '2024-05-08', NULL, NULL),
(3315, 44, 46, 53, 'Y', '2024-05-03', NULL, NULL),
(3316, 14, 43, 22, 'Y', '2024-04-19', NULL, NULL),
(3317, 38, 60, 39, 'Y', '2024-06-01', NULL, NULL),
(3318, 34, 51, 50, 'Y', '2024-05-19', NULL, NULL),
(3319, 75, 80, 57, 'Y', '2024-04-24', NULL, NULL),
(3320, 27, 72, 47, 'Y', '2024-06-09', NULL, NULL),
(3321, 69, 48, 24, 'Y', '2024-05-21', NULL, NULL),
(3322, 71, 122, 39, 'Y', '2024-04-19', NULL, NULL),
(3323, 50, 117, 56, 'Y', '2024-05-09', NULL, NULL),
(3324, 16, 130, 22, 'Y', '2024-05-10', NULL, NULL),
(3325, 30, 124, 36, 'Y', '2024-06-15', NULL, NULL),
(3326, 81, 115, 41, 'Y', '2024-05-31', NULL, NULL),
(3327, 40, 6, 47, 'Y', '2024-06-18', NULL, NULL),
(3328, 37, 81, 38, 'Y', '2024-05-22', NULL, NULL),
(3329, 33, 41, 51, 'Y', '2024-05-25', NULL, NULL),
(3330, 14, 64, 22, 'Y', '2024-04-22', NULL, NULL),
(3331, 59, 98, 40, 'Y', '2024-06-04', NULL, NULL),
(3332, 83, 20, 22, 'Y', '2024-05-31', NULL, NULL),
(3333, 82, 41, 50, 'Y', '2024-05-04', NULL, NULL),
(3334, 49, 17, 34, 'Y', '2024-04-09', NULL, NULL),
(3335, 14, 3, 22, 'Y', '2024-05-30', NULL, NULL),
(3336, 54, 134, 41, 'Y', '2024-06-20', NULL, NULL),
(3337, 63, 136, 48, 'Y', '2024-04-20', NULL, NULL),
(3338, 59, 125, 40, 'Y', '2024-06-22', NULL, NULL),
(3339, 25, 130, 54, 'Y', '2024-06-09', NULL, NULL),
(3340, 35, 62, 24, 'Y', '2024-05-12', NULL, NULL),
(3341, 48, 42, 44, 'Y', '2024-05-15', NULL, NULL),
(3342, 49, 125, 34, 'Y', '2024-05-07', NULL, NULL),
(3343, 48, 146, 44, 'Y', '2024-04-19', NULL, NULL),
(3344, 66, 76, 50, 'Y', '2024-06-13', NULL, NULL),
(3345, 65, 47, 48, 'Y', '2024-06-06', NULL, NULL),
(3346, 30, 47, 36, 'Y', '2024-05-29', NULL, NULL),
(3347, 26, 129, 23, 'Y', '2024-06-01', NULL, NULL),
(3348, 18, 49, 53, 'Y', '2024-05-08', NULL, NULL),
(3349, 67, 125, 24, 'Y', '2024-05-05', NULL, NULL),
(3350, 36, 21, 32, 'Y', '2024-05-31', NULL, NULL),
(3351, 18, 36, 53, 'Y', '2024-04-18', NULL, NULL),
(3352, 18, 139, 53, 'Y', '2024-05-06', NULL, NULL),
(3353, 48, 127, 44, 'Y', '2024-06-28', NULL, NULL),
(3354, 88, 100, 32, 'Y', '2024-06-07', NULL, NULL),
(3355, 88, 125, 32, 'Y', '2024-04-22', NULL, NULL),
(3356, 87, 141, 56, 'Y', '2024-06-08', NULL, NULL),
(3357, 50, 56, 56, 'Y', '2024-05-06', NULL, NULL),
(3358, 30, 106, 36, 'Y', '2024-06-21', NULL, NULL),
(3359, 62, 128, 58, 'Y', '2024-06-07', NULL, NULL),
(3360, 64, 47, 29, 'Y', '2024-05-31', NULL, NULL),
(3361, 32, 67, 43, 'Y', '2024-06-10', NULL, NULL),
(3362, 62, 123, 58, 'Y', '2024-04-13', NULL, NULL),
(3363, 48, 71, 44, 'Y', '2024-06-25', NULL, NULL),
(3364, 63, 102, 48, 'Y', '2024-06-07', NULL, NULL),
(3365, 40, 45, 47, 'Y', '2024-05-02', NULL, NULL),
(3366, 86, 123, 35, 'Y', '2024-04-01', NULL, NULL),
(3367, 25, 7, 54, 'Y', '2024-04-27', NULL, NULL),
(3368, 17, 28, 49, 'Y', '2024-06-26', NULL, NULL),
(3369, 75, 126, 57, 'Y', '2024-05-09', NULL, NULL),
(3370, 64, 28, 29, 'Y', '2024-06-06', NULL, NULL),
(3371, 54, 10, 41, 'Y', '2024-04-23', NULL, NULL),
(3372, 21, 141, 41, 'Y', '2024-05-03', NULL, NULL),
(3373, 56, 25, 44, 'Y', '2024-06-11', NULL, NULL),
(3374, 17, 119, 49, 'Y', '2024-06-05', NULL, NULL),
(3375, 75, 107, 57, 'Y', '2024-04-20', NULL, NULL),
(3376, 69, 79, 24, 'Y', '2024-06-16', NULL, NULL),
(3377, 79, 23, 26, 'Y', '2024-05-03', NULL, NULL),
(3378, 81, 93, 41, 'Y', '2024-05-10', NULL, NULL),
(3379, 75, 121, 57, 'Y', '2024-05-29', NULL, NULL),
(3380, 33, 48, 51, 'Y', '2024-04-27', NULL, NULL),
(3381, 75, 32, 57, 'Y', '2024-06-26', NULL, NULL),
(3382, 34, 150, 50, 'Y', '2024-06-27', NULL, NULL),
(3383, 21, 61, 41, 'Y', '2024-04-30', NULL, NULL),
(3384, 78, 144, 39, 'Y', '2024-06-02', NULL, NULL),
(3385, 30, 49, 36, 'Y', '2024-06-18', NULL, NULL),
(3386, 42, 56, 29, 'Y', '2024-04-11', NULL, NULL),
(3387, 75, 95, 57, 'Y', '2024-06-24', NULL, NULL),
(3388, 20, 28, 23, 'Y', '2024-05-26', NULL, NULL),
(3389, 75, 61, 57, 'Y', '2024-05-05', NULL, NULL),
(3390, 31, 45, 25, 'Y', '2024-04-16', NULL, NULL),
(3391, 75, 85, 57, 'Y', '2024-05-22', NULL, NULL),
(3392, 77, 41, 53, 'Y', '2024-04-16', NULL, NULL),
(3393, 56, 103, 44, 'Y', '2024-06-20', NULL, NULL),
(3394, 76, 82, 48, 'Y', '2024-05-23', NULL, NULL),
(3395, 75, 25, 57, 'Y', '2024-06-25', NULL, NULL),
(3396, 82, 92, 50, 'Y', '2024-06-12', NULL, NULL),
(3397, 59, 98, 40, 'Y', '2024-04-07', NULL, NULL),
(3398, 45, 31, 38, 'Y', '2024-06-06', NULL, NULL),
(3399, 75, 125, 57, 'Y', '2024-04-29', NULL, NULL),
(3400, 56, 20, 44, 'Y', '2024-05-27', NULL, NULL),
(3401, 86, 113, 35, 'Y', '2024-06-05', NULL, NULL),
(3402, 59, 1, 40, 'Y', '2024-06-16', NULL, NULL),
(3403, 75, 119, 57, 'Y', '2024-04-22', NULL, NULL),
(3404, 30, 69, 36, 'Y', '2024-05-26', NULL, NULL),
(3405, 25, 117, 54, 'Y', '2024-05-10', NULL, NULL),
(3406, 86, 5, 35, 'Y', '2024-04-06', NULL, NULL),
(3407, 86, 114, 35, 'Y', '2024-05-05', NULL, NULL),
(3408, 64, 8, 29, 'Y', '2024-05-18', NULL, NULL),
(3409, 18, 12, 53, 'Y', '2024-06-26', NULL, NULL),
(3410, 25, 26, 54, 'Y', '2024-06-02', NULL, NULL),
(3411, 75, 95, 57, 'Y', '2024-04-11', NULL, NULL),
(3412, 44, 74, 53, 'Y', '2024-06-09', NULL, NULL),
(3413, 62, 139, 58, 'Y', '2024-04-28', NULL, NULL),
(3414, 68, 69, 42, 'Y', '2024-04-17', NULL, NULL),
(3415, 28, 44, 43, 'Y', '2024-06-13', NULL, NULL),
(3416, 81, 53, 41, 'Y', '2024-05-13', NULL, NULL),
(3417, 62, 113, 58, 'Y', '2024-04-30', NULL, NULL),
(3418, 23, 54, 34, 'Y', '2024-06-08', NULL, NULL),
(3419, 48, 2, 44, 'Y', '2024-04-23', NULL, NULL),
(3420, 42, 62, 29, 'Y', '2024-04-22', NULL, NULL),
(3421, 68, 93, 42, 'Y', '2024-04-14', NULL, NULL),
(3422, 75, 112, 57, 'Y', '2024-04-30', NULL, NULL),
(3423, 36, 53, 32, 'Y', '2024-06-03', NULL, NULL),
(3424, 25, 81, 54, 'Y', '2024-04-17', NULL, NULL),
(3425, 73, 94, 34, 'Y', '2024-06-28', NULL, NULL),
(3426, 33, 20, 51, 'Y', '2024-06-11', NULL, NULL),
(3427, 48, 117, 44, 'Y', '2024-05-16', NULL, NULL),
(3428, 84, 146, 24, 'Y', '2024-04-07', NULL, NULL),
(3429, 36, 18, 32, 'Y', '2024-06-09', NULL, NULL),
(3430, 86, 79, 35, 'Y', '2024-05-13', NULL, NULL),
(3431, 21, 22, 41, 'Y', '2024-06-04', NULL, NULL),
(3432, 75, 106, 57, 'Y', '2024-05-10', NULL, NULL),
(3433, 75, 3, 57, 'Y', '2024-06-26', NULL, NULL),
(3434, 33, 134, 51, 'Y', '2024-05-17', NULL, NULL),
(3435, 75, 76, 57, 'Y', '2024-06-12', NULL, NULL),
(3436, 59, 125, 40, 'Y', '2024-06-28', NULL, NULL),
(3437, 44, 148, 53, 'Y', '2024-05-17', NULL, NULL),
(3438, 44, 52, 53, 'Y', '2024-05-30', NULL, NULL),
(3439, 23, 126, 34, 'Y', '2024-04-18', NULL, NULL),
(3440, 31, 71, 25, 'Y', '2024-05-17', NULL, NULL),
(3441, 42, 93, 29, 'Y', '2024-06-24', NULL, NULL),
(3442, 25, 4, 54, 'Y', '2024-05-22', NULL, NULL),
(3443, 51, 113, 50, 'Y', '2024-04-28', NULL, NULL),
(3444, 36, 17, 32, 'Y', '2024-04-03', NULL, NULL),
(3445, 35, 40, 24, 'Y', '2024-04-24', NULL, NULL),
(3446, 17, 15, 49, 'Y', '2024-04-07', NULL, NULL),
(3447, 17, 80, 49, 'Y', '2024-04-30', NULL, NULL),
(3448, 33, 101, 51, 'Y', '2024-06-28', NULL, NULL),
(3449, 44, 137, 53, 'Y', '2024-04-28', NULL, NULL),
(3450, 30, 104, 36, 'Y', '2024-05-22', NULL, NULL),
(3451, 52, 49, 48, 'Y', '2024-04-24', NULL, NULL),
(3452, 79, 40, 26, 'Y', '2024-06-14', NULL, NULL),
(3453, 33, 106, 51, 'Y', '2024-05-19', NULL, NULL),
(3454, 19, 25, 39, 'Y', '2024-05-05', NULL, NULL),
(3455, 37, 119, 38, 'Y', '2024-05-22', NULL, NULL),
(3456, 81, 102, 41, 'Y', '2024-05-04', NULL, NULL),
(3457, 49, 34, 34, 'Y', '2024-05-11', NULL, NULL),
(3458, 25, 58, 54, 'Y', '2024-04-18', NULL, NULL),
(3459, 87, 31, 56, 'Y', '2024-04-25', NULL, NULL),
(3460, 62, 113, 58, 'Y', '2024-06-01', NULL, NULL),
(3461, 87, 118, 56, 'Y', '2024-04-17', NULL, NULL),
(3462, 50, 117, 56, 'Y', '2024-04-10', NULL, NULL),
(3463, 16, 6, 22, 'Y', '2024-06-19', NULL, NULL),
(3464, 26, 44, 23, 'Y', '2024-06-29', NULL, NULL),
(3465, 86, 96, 35, 'Y', '2024-05-21', NULL, NULL),
(3466, 49, 45, 34, 'Y', '2024-04-17', NULL, NULL),
(3467, 30, 27, 36, 'Y', '2024-04-27', NULL, NULL),
(3468, 59, 64, 40, 'Y', '2024-05-13', NULL, NULL),
(3469, 47, 33, 39, 'Y', '2024-05-27', NULL, NULL),
(3470, 17, 70, 49, 'Y', '2024-05-20', NULL, NULL),
(3471, 63, 61, 48, 'Y', '2024-06-02', NULL, NULL),
(3472, 25, 107, 54, 'Y', '2024-06-01', NULL, NULL),
(3473, 44, 81, 53, 'Y', '2024-05-28', NULL, NULL),
(3474, 61, 131, 40, 'Y', '2024-05-17', NULL, NULL),
(3475, 32, 116, 43, 'Y', '2024-05-11', NULL, NULL),
(3476, 17, 99, 49, 'Y', '2024-06-03', NULL, NULL),
(3477, 84, 118, 24, 'Y', '2024-05-05', NULL, NULL),
(3478, 14, 111, 22, 'Y', '2024-06-25', NULL, NULL),
(3479, 88, 7, 32, 'Y', '2024-05-20', NULL, NULL),
(3480, 37, 87, 38, 'Y', '2024-05-19', NULL, NULL),
(3481, 81, 87, 41, 'Y', '2024-06-26', NULL, NULL),
(3482, 42, 59, 29, 'Y', '2024-04-21', NULL, NULL),
(3483, 22, 70, 25, 'Y', '2024-04-03', NULL, NULL),
(3484, 45, 25, 38, 'Y', '2024-04-27', NULL, NULL),
(3485, 81, 145, 41, 'Y', '2024-04-02', NULL, NULL),
(3486, 62, 19, 58, 'Y', '2024-06-19', NULL, NULL),
(3487, 35, 35, 24, 'Y', '2024-06-23', NULL, NULL),
(3488, 26, 105, 23, 'Y', '2024-04-06', NULL, NULL),
(3489, 25, 40, 54, 'Y', '2024-04-03', NULL, NULL),
(3490, 81, 56, 41, 'Y', '2024-04-04', NULL, NULL),
(3491, 49, 2, 34, 'Y', '2024-06-23', NULL, NULL),
(3492, 80, 17, 26, 'Y', '2024-04-07', NULL, NULL),
(3493, 71, 89, 39, 'Y', '2024-05-22', NULL, NULL),
(3494, 32, 10, 43, 'Y', '2024-05-15', NULL, NULL),
(3495, 70, 26, 43, 'Y', '2024-06-23', NULL, NULL),
(3496, 64, 140, 29, 'Y', '2024-06-29', NULL, NULL),
(3497, 45, 82, 38, 'Y', '2024-04-24', NULL, NULL),
(3498, 43, 25, 43, 'Y', '2024-05-15', NULL, NULL),
(3499, 86, 55, 35, 'Y', '2024-05-02', NULL, NULL),
(3500, 25, 17, 54, 'Y', '2024-05-31', NULL, NULL),
(3501, 67, 106, 24, 'Y', '2024-06-08', NULL, NULL),
(3502, 68, 33, 42, 'Y', '2024-06-13', NULL, NULL),
(3503, 68, 113, 42, 'Y', '2024-05-04', NULL, NULL),
(3504, 18, 91, 53, 'Y', '2024-04-22', NULL, NULL),
(3505, 88, 9, 32, 'Y', '2024-05-08', NULL, NULL),
(3506, 31, 89, 25, 'Y', '2024-06-28', NULL, NULL),
(3507, 78, 113, 39, 'Y', '2024-06-14', NULL, NULL),
(3508, 60, 104, 43, 'Y', '2024-06-27', NULL, NULL),
(3509, 25, 109, 54, 'Y', '2024-04-05', NULL, NULL),
(3510, 14, 48, 22, 'Y', '2024-04-15', NULL, NULL),
(3511, 25, 24, 54, 'Y', '2024-05-04', NULL, NULL),
(3512, 32, 39, 43, 'Y', '2024-05-19', NULL, NULL),
(3513, 20, 3, 23, 'Y', '2024-04-25', NULL, NULL),
(3514, 30, 76, 36, 'Y', '2024-06-03', NULL, NULL),
(3515, 45, 37, 38, 'Y', '2024-06-15', NULL, NULL),
(3516, 68, 50, 42, 'Y', '2024-06-22', NULL, NULL),
(3517, 86, 32, 35, 'Y', '2024-06-05', NULL, NULL),
(3518, 68, 100, 42, 'Y', '2024-04-25', NULL, NULL),
(3519, 79, 65, 26, 'Y', '2024-05-28', NULL, NULL),
(3520, 56, 51, 44, 'Y', '2024-04-19', NULL, NULL),
(3521, 82, 140, 50, 'Y', '2024-04-02', NULL, NULL),
(3522, 83, 96, 22, 'Y', '2024-04-17', NULL, NULL),
(3523, 25, 116, 54, 'Y', '2024-05-25', NULL, NULL),
(3524, 33, 35, 51, 'Y', '2024-05-29', NULL, NULL),
(3525, 17, 8, 49, 'Y', '2024-05-01', NULL, NULL),
(3526, 80, 10, 26, 'Y', '2024-04-03', NULL, NULL),
(3527, 75, 130, 57, 'Y', '2024-06-19', NULL, NULL),
(3528, 42, 70, 29, 'Y', '2024-06-22', NULL, NULL),
(3529, 61, 98, 40, 'Y', '2024-04-26', NULL, NULL),
(3530, 37, 15, 38, 'Y', '2024-06-09', NULL, NULL),
(3531, 73, 18, 34, 'Y', '2024-05-29', NULL, NULL),
(3532, 74, 22, 47, 'Y', '2024-05-16', NULL, NULL),
(3533, 46, 107, 50, 'Y', '2024-06-20', NULL, NULL),
(3534, 86, 21, 35, 'Y', '2024-04-16', NULL, NULL),
(3535, 49, 24, 34, 'Y', '2024-06-06', NULL, NULL),
(3536, 79, 6, 26, 'Y', '2024-06-20', NULL, NULL),
(3537, 71, 23, 39, 'Y', '2024-04-05', NULL, NULL),
(3538, 80, 14, 26, 'Y', '2024-06-11', NULL, NULL),
(3539, 22, 138, 25, 'Y', '2024-04-15', NULL, NULL),
(3540, 26, 90, 23, 'Y', '2024-04-24', NULL, NULL),
(3541, 59, 61, 40, 'Y', '2024-04-19', NULL, NULL),
(3542, 26, 18, 23, 'Y', '2024-06-07', NULL, NULL),
(3543, 23, 98, 34, 'Y', '2024-04-03', NULL, NULL),
(3544, 88, 48, 32, 'Y', '2024-04-04', NULL, NULL),
(3545, 86, 39, 35, 'Y', '2024-06-02', NULL, NULL),
(3546, 17, 142, 49, 'Y', '2024-04-30', NULL, NULL),
(3547, 59, 36, 40, 'Y', '2024-04-30', NULL, NULL),
(3548, 75, 5, 57, 'Y', '2024-05-06', NULL, NULL),
(3549, 86, 149, 35, 'Y', '2024-04-05', NULL, NULL),
(3550, 62, 77, 58, 'Y', '2024-04-12', NULL, NULL),
(3551, 48, 74, 44, 'Y', '2024-04-18', NULL, NULL),
(3552, 49, 84, 34, 'Y', '2024-06-29', NULL, NULL),
(3553, 61, 43, 40, 'Y', '2024-06-07', NULL, NULL),
(3554, 48, 102, 44, 'Y', '2024-06-03', NULL, NULL),
(3555, 48, 1, 44, 'Y', '2024-06-23', NULL, NULL),
(3556, 80, 51, 26, 'Y', '2024-06-06', NULL, NULL),
(3557, 67, 97, 24, 'Y', '2024-06-07', NULL, NULL),
(3558, 55, 3, 23, 'Y', '2024-04-17', NULL, NULL),
(3559, 44, 13, 53, 'Y', '2024-05-08', NULL, NULL),
(3560, 59, 13, 40, 'Y', '2024-04-13', NULL, NULL),
(3561, 77, 16, 53, 'Y', '2024-05-05', NULL, NULL),
(3562, 83, 1, 22, 'Y', '2024-05-23', '2024-05-22 20:46:48', '2024-05-22 20:46:48'),
(3563, 22, 1, 25, 'Y', '2024-05-23', '2024-05-22 20:47:24', '2024-05-22 20:47:24'),
(3564, 31, 2, 25, 'Y', '2024-05-23', '2024-05-22 20:47:29', '2024-05-22 20:47:29'),
(3565, 35, 22, 24, 'Y', '2024-05-24', '2024-05-24 08:37:20', '2024-05-24 08:37:20'),
(3566, 35, 22, 24, 'Y', '2024-05-24', '2024-05-24 08:37:22', '2024-05-24 08:37:22'),
(3567, 84, 22, 24, 'Y', '2024-05-24', '2024-05-24 08:37:27', '2024-05-24 08:37:27'),
(3568, 67, 22, 24, 'Y', '2024-05-24', '2024-05-24 08:37:31', '2024-05-24 08:37:31'),
(3569, 69, 22, 24, 'Y', '2024-05-24', '2024-05-24 08:37:36', '2024-05-24 08:37:36'),
(3570, 30, 22, 36, 'Y', '2024-05-24', '2024-05-24 08:45:05', '2024-05-24 08:45:05'),
(3571, 37, 22, 38, 'Y', '2024-05-24', '2024-05-24 08:45:26', '2024-05-24 08:45:26'),
(3572, 45, 22, 38, 'Y', '2024-05-24', '2024-05-24 08:45:31', '2024-05-24 08:45:31'),
(3573, 23, 1, 34, 'Y', '2024-05-28', '2024-05-28 06:10:59', '2024-05-28 06:10:59'),
(3574, 15, 23, 23, 'Y', '2024-05-30', '2024-05-30 01:26:13', '2024-05-30 01:26:13'),
(3575, 35, 1, 24, 'Y', '2024-06-01', '2024-06-01 01:15:46', '2024-06-01 01:15:46'),
(3576, 84, 1, 24, 'Y', '2024-06-01', '2024-06-01 01:15:52', '2024-06-01 01:15:52'),
(3577, 58, 1, 22, 'Y', '2024-06-01', '2024-06-01 02:23:10', '2024-06-01 02:23:10'),
(3578, 14, 1, 22, 'Y', '2024-06-01', '2024-06-01 02:23:19', '2024-06-01 02:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `material_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duration` time DEFAULT NULL,
  `completed` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `chapter_id`, `material_title`, `material`, `thumbnail`, `file`, `text`, `duration`, `completed`, `created_at`, `updated_at`) VALUES
(14, 8, 'Learning 1', 'Lorem Lorem', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'OKOKO', '00:01:00', 'Y', '2024-03-28 00:17:45', '2024-03-28 00:17:45'),
(15, 11, 'Learning 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'OKOKO', '00:01:00', 'N', '2024-03-28 00:34:10', '2024-03-28 00:34:10'),
(16, 8, 'Learning 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'OKOKO', '00:01:00', 'Y', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(17, 66, 'Material Title 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(18, 36, 'Material Title 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(19, 54, 'Material Title 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(20, 12, 'Material Title 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(21, 58, 'Material Title 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(22, 32, 'Material Title 6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(23, 35, 'Material Title 7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(24, 51, 'Material Title 8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(25, 26, 'Material Title 9', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(26, 13, 'Material Title 10', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(27, 73, 'Material Title 11', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(28, 72, 'Material Title 12', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(29, 31, 'Material Title 13', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(30, 50, 'Material Title 14', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(31, 32, 'Material Title 15', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(32, 39, 'Material Title 16', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(33, 49, 'Material Title 17', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(34, 64, 'Material Title 18', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(35, 14, 'Material Title 19', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(36, 23, 'Material Title 20', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(37, 28, 'Material Title 21', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(38, 51, 'Material Title 22', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(39, 37, 'Material Title 23', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(40, 37, 'Material Title 24', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(41, 51, 'Material Title 25', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(42, 27, 'Material Title 26', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(43, 39, 'Material Title 27', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(44, 62, 'Material Title 28', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(45, 28, 'Material Title 29', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(46, 64, 'Material Title 30', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(47, 54, 'Material Title 31', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(48, 69, 'Material Title 32', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(49, 68, 'Material Title 33', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(50, 71, 'Material Title 34', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(51, 38, 'Material Title 35', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(52, 46, 'Material Title 36', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(53, 11, 'Material Title 37', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(54, 58, 'Material Title 38', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(55, 12, 'Material Title 39', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(56, 69, 'Material Title 40', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(57, 61, 'Material Title 41', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(58, 9, 'Material Title 42', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'Y', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(59, 17, 'Material Title 43', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(60, 72, 'Material Title 44', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(61, 17, 'Material Title 45', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(62, 52, 'Material Title 46', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(63, 46, 'Material Title 47', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(64, 27, 'Material Title 48', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(65, 24, 'Material Title 49', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(66, 53, 'Material Title 50', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(67, 15, 'Material Title 51', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(68, 20, 'Material Title 52', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(69, 16, 'Material Title 53', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(70, 39, 'Material Title 54', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(71, 21, 'Material Title 55', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(72, 42, 'Material Title 56', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(73, 68, 'Material Title 57', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(74, 73, 'Material Title 58', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(75, 57, 'Material Title 59', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(76, 24, 'Material Title 60', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(77, 62, 'Material Title 61', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(78, 51, 'Material Title 62', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(79, 67, 'Material Title 63', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(80, 67, 'Material Title 64', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(81, 58, 'Material Title 65', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(82, 53, 'Material Title 66', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(83, 10, 'Material Title 67', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(84, 14, 'Material Title 68', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(85, 24, 'Material Title 69', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(86, 56, 'Material Title 70', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(87, 71, 'Material Title 71', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25'),
(88, 23, 'Material Title 72', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '1711611445_learning(1).jpg', '1711611250_COBA FILE PDF MATERIAL.pdf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam placeat esse asperiores nesciunt ea id non reiciendis aliquid perspiciatis officiis, neque nihil adipisci amet veritatis debitis, quo, aperiam magnam reprehenderit?', '00:01:00', 'N', '2024-03-28 00:37:25', '2024-03-28 00:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `materials_to_chapters`
--

CREATE TABLE `materials_to_chapters` (
  `id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `material_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `completed` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_10_154923_create_courses_table', 1),
(6, '2024_01_10_154945_create_chapters_table', 1),
(7, '2024_01_10_155017_create_materials_table', 1),
(8, '2024_01_10_155038_create_reviews_table', 1),
(9, '2024_01_10_155055_create_user_course_history_table', 1),
(10, '2024_01_10_171824_create_histories_table', 1),
(11, '2024_01_24_124137_create_jurusan_table', 1),
(12, '2024_02_23_041459_create_permission_tables', 1),
(13, '2024_03_23_132105_create_activity_log_table', 2),
(14, '2024_03_23_132106_add_event_column_to_activity_log_table', 2),
(15, '2024_03_23_132107_add_batch_uuid_column_to_activity_log_table', 2),
(16, '2024_05_11_135823_create_cobas_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(8, 'App\\Models\\User', 2),
(11, 'App\\Models\\User', 2),
(14, 'App\\Models\\User', 2),
(15, 'App\\Models\\User', 2),
(16, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 2),
(13, 'App\\Models\\User', 3),
(13, 'App\\Models\\User', 4),
(13, 'App\\Models\\User', 5),
(13, 'App\\Models\\User', 6),
(13, 'App\\Models\\User', 7),
(13, 'App\\Models\\User', 9),
(13, 'App\\Models\\User', 10),
(13, 'App\\Models\\User', 11),
(13, 'App\\Models\\User', 12),
(13, 'App\\Models\\User', 13),
(13, 'App\\Models\\User', 14),
(13, 'App\\Models\\User', 15),
(13, 'App\\Models\\User', 16),
(13, 'App\\Models\\User', 17),
(13, 'App\\Models\\User', 18),
(13, 'App\\Models\\User', 19),
(13, 'App\\Models\\User', 20),
(13, 'App\\Models\\User', 21),
(14, 'App\\Models\\User', 22),
(14, 'App\\Models\\User', 23),
(14, 'App\\Models\\User', 24),
(14, 'App\\Models\\User', 25),
(14, 'App\\Models\\User', 26),
(14, 'App\\Models\\User', 27),
(14, 'App\\Models\\User', 28),
(14, 'App\\Models\\User', 29),
(14, 'App\\Models\\User', 30),
(14, 'App\\Models\\User', 31),
(14, 'App\\Models\\User', 32),
(14, 'App\\Models\\User', 33),
(14, 'App\\Models\\User', 34),
(14, 'App\\Models\\User', 35),
(14, 'App\\Models\\User', 36),
(14, 'App\\Models\\User', 37),
(14, 'App\\Models\\User', 38),
(14, 'App\\Models\\User', 39),
(14, 'App\\Models\\User', 40),
(14, 'App\\Models\\User', 41),
(14, 'App\\Models\\User', 42),
(14, 'App\\Models\\User', 43),
(14, 'App\\Models\\User', 509),
(14, 'App\\Models\\User', 510),
(14, 'App\\Models\\User', 514);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(8, 'create_course', 'web', '2024-05-24 03:44:47', '2024-05-24 03:44:47'),
(9, 'edit_course', 'web', '2024-05-24 03:44:57', '2024-05-24 03:44:57'),
(10, 'delete_course', 'web', '2024-05-24 03:45:14', '2024-05-24 03:45:14'),
(11, 'create_material', 'web', '2024-05-24 03:45:44', '2024-05-24 03:45:44'),
(12, 'edit_material', 'web', '2024-05-24 03:45:52', '2024-05-24 03:45:52'),
(13, 'delete_material', 'web', '2024-05-24 03:46:03', '2024-05-24 03:46:03'),
(14, 'create_chapter', 'web', '2024-05-24 03:46:14', '2024-05-24 03:46:14'),
(15, 'edit_chapter', 'web', '2024-05-24 03:46:34', '2024-05-24 03:46:34'),
(16, 'delete_chapter', 'web', '2024-05-24 03:46:42', '2024-05-24 03:46:42'),
(17, 'create_category', 'web', '2024-05-24 04:39:32', '2024-05-24 04:39:32'),
(18, 'edit_category', 'web', '2024-05-24 04:39:41', '2024-05-24 04:39:41'),
(19, 'delete_category', 'web', '2024-05-24 04:39:53', '2024-05-24 04:39:53'),
(20, 'create_review', 'web', '2024-05-24 04:40:17', '2024-05-24 04:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `course_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(2034, 221, 30, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2037, 230, 40, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2038, 248, 52, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2048, 234, 53, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2060, 171, 58, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2073, 226, 47, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2074, 244, 53, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2076, 217, 56, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2080, 156, 51, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2088, 295, 26, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2097, 157, 30, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2108, 127, 24, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2114, 249, 57, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2117, 235, 38, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2123, 147, 22, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2130, 186, 56, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2135, 281, 37, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2148, 157, 39, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2156, 291, 55, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2159, 158, 54, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2181, 162, 36, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2183, 259, 46, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2192, 282, 46, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2204, 161, 48, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2205, 246, 41, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2211, 291, 28, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2213, 159, 37, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2227, 288, 47, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2228, 243, 44, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2237, 281, 54, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2263, 170, 58, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2275, 243, 41, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2281, 250, 23, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2319, 252, 25, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2328, 128, 48, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2329, 292, 37, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2358, 299, 23, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2402, 256, 48, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2414, 164, 29, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2417, 249, 23, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2419, 137, 27, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2420, 218, 48, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2429, 158, 35, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2452, 200, 29, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2464, 253, 23, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2476, 140, 56, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2477, 151, 51, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2499, 284, 52, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2506, 186, 55, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2524, 18, 27, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2525, 88, 32, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2526, 70, 23, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2527, 83, 28, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2528, 29, 44, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2529, 30, 48, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2530, 29, 56, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2531, 92, 28, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2532, 92, 30, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2533, 5, 35, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2534, 98, 27, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2535, 60, 25, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2536, 30, 42, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2537, 24, 53, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2538, 66, 45, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2539, 3, 23, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2540, 25, 35, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2541, 95, 52, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2542, 80, 57, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2543, 57, 38, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2544, 13, 51, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2545, 29, 22, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2546, 60, 43, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2547, 30, 33, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2548, 44, 30, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2549, 88, 34, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2550, 99, 41, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2551, 3, 33, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2552, 24, 34, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2553, 90, 43, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2554, 28, 37, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2555, 69, 38, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2556, 4, 43, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2557, 52, 46, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2558, 84, 42, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2559, 86, 51, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2560, 77, 52, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2561, 87, 25, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2562, 84, 57, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2563, 14, 23, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2564, 5, 32, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2565, 91, 23, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2566, 60, 30, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2567, 38, 57, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2568, 28, 54, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2569, 4, 33, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2570, 14, 44, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2571, 14, 47, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2572, 87, 25, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2573, 27, 45, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2574, 22, 49, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2575, 63, 55, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2576, 98, 55, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2577, 72, 39, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2578, 32, 36, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2579, 38, 34, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2580, 39, 42, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2581, 74, 26, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2582, 30, 43, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2583, 14, 33, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2584, 31, 33, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2585, 37, 32, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2586, 73, 46, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2587, 32, 45, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2588, 91, 49, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2589, 40, 31, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2590, 50, 57, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2591, 60, 52, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2592, 91, 46, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2593, 32, 41, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2594, 22, 47, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2595, 98, 42, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2596, 87, 49, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2597, 32, 43, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2598, 21, 35, '20', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2599, 37, 34, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2600, 3, 41, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2601, 78, 44, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2602, 91, 41, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2603, 14, 56, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2604, 24, 23, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2605, 56, 37, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2606, 60, 34, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2607, 97, 28, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2608, 55, 45, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2609, 40, 25, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2610, 20, 45, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2611, 62, 46, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2612, 85, 44, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2613, 39, 30, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2614, 69, 34, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2615, 94, 29, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2616, 62, 33, '60', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2617, 65, 24, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2618, 72, 30, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2619, 47, 55, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2620, 86, 41, '100', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2621, 31, 40, '80', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2622, 70, 51, '40', 'Ini Contoh Komentar Yang Diberikan oleh User', NULL, NULL),
(2623, 1, 42, '60', 'asasas', '2024-05-23 02:10:15', '2024-05-23 02:10:15'),
(2624, 1, 50, '100', '1asa', '2024-05-23 02:11:00', '2024-05-23 02:11:00'),
(2625, 1, 40, '100', 'Coba Rating 40', '2024-05-23 02:44:06', '2024-05-23 02:44:06'),
(2626, 22, 23, '100', 'Mantap', '2024-05-24 08:07:39', '2024-05-24 08:07:39'),
(2627, 1, 44, '100', 'Alus', '2024-06-01 04:46:17', '2024-06-01 04:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(12, 'admin', 'web', '2024-05-24 04:41:32', '2024-05-24 04:41:32'),
(13, 'instructor', 'web', '2024-05-24 04:42:20', '2024-05-24 04:42:20'),
(14, 'siswa', 'web', '2024-05-24 04:42:29', '2024-05-24 04:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(8, 12),
(9, 12),
(10, 12),
(11, 12),
(12, 12),
(13, 12),
(14, 12),
(15, 12),
(16, 12),
(17, 12),
(18, 12),
(19, 12),
(20, 12),
(8, 13),
(9, 13),
(10, 13),
(11, 13),
(12, 13),
(13, 13),
(14, 13),
(15, 13),
(16, 13),
(20, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_media` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `position`, `phone`, `code_phone`, `image`, `cover`, `biography`, `social_media`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@course.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'asasa', '856231545832', '+62', '1714563437.png', '1716564968.png', 'qwqe', 'a~~a~~a~~a', '2024-02-24 01:18:12', '2024-05-01 21:41:52'),
(2, 'Helfi', 'admin1@course.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Programmer', '+6285770317597', '+62', '1710155782.png', '1716564968.png', 'qwqe', 'a~~a~~a~~a', '2024-03-03 23:16:14', '2024-03-03 23:16:14'),
(3, 'user1', 'user1@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '850777635550', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(4, 'user2', 'user2@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '876265822324', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(5, 'user3', 'user3@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '886217905524', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(6, 'user4', 'user4@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '824895630121', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(7, 'user5', 'user5@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '864254174899', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(8, 'user6', 'user6@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '820449963539', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(9, 'user7', 'user7@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '894981582598', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(10, 'user8', 'user8@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '891469036614', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(11, 'user9', 'user9@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '810045133877', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(12, 'user10', 'user10@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '880407826655', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(13, 'user11', 'user11@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '858133407365', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(14, 'user12', 'user12@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '832582071110', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(15, 'user13', 'user13@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '859060912762', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(16, 'user14', 'user14@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '846493259478', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(17, 'user15', 'user15@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '858355987293', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(18, 'user16', 'user16@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '872321832555', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(19, 'user17', 'user17@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '891558020360', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(20, 'user18', 'user18@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '846070745425', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(21, 'user19', 'user19@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '899958806470', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(22, 'Dini Aryani', 'user20@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '819196152476', '+62', '1716563514.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, '2024-05-24 08:36:08'),
(23, 'user21', 'user21@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '837620790112', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(24, 'user22', 'user22@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '854696061732', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(25, 'user23', 'user23@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '895702558708', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(26, 'user24', 'user24@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '850118828306', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(27, 'user25', 'user25@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '839286626354', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(28, 'user26', 'user26@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '827925566217', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(29, 'user27', 'user27@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '868619388141', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(30, 'user28', 'user28@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '878413561279', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(31, 'user29', 'user29@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '868504622020', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(32, 'user30', 'user30@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '880487058677', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(33, 'user31', 'user31@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '826727964131', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(34, 'user32', 'user32@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '853391591466', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(35, 'user33', 'user33@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '894231040023', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(36, 'user34', 'user34@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '856657859996', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(37, 'user35', 'user35@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '847502708722', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(38, 'user36', 'user36@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '859914293907', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(39, 'user37', 'user37@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '852169764697', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(40, 'user38', 'user38@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '868027404715', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(41, 'user39', 'user39@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '862215671215', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(42, 'user40', 'user40@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '838225898063', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(43, 'user41', 'user41@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '883017401889', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(44, 'user42', 'user42@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '826237553619', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(45, 'user43', 'user43@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '844979542567', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(46, 'user44', 'user44@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '866512753968', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(47, 'user45', 'user45@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '817843760625', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(48, 'user46', 'user46@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '869782527973', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(49, 'user47', 'user47@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '849885389388', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(50, 'user48', 'user48@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '853483836893', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(51, 'user49', 'user49@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '877838336784', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(52, 'user50', 'user50@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '820020032104', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(53, 'user51', 'user51@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '885521909561', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(54, 'user52', 'user52@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '861155355643', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(55, 'user53', 'user53@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '823206712579', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(56, 'user54', 'user54@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '893311677834', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(57, 'user55', 'user55@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '831307124222', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(58, 'user56', 'user56@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '865369195322', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(59, 'user57', 'user57@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '822918531105', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(60, 'user58', 'user58@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '863336681672', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(61, 'user59', 'user59@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '852835505152', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(62, 'user60', 'user60@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '894278627397', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(63, 'user61', 'user61@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '869985344017', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(64, 'user62', 'user62@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '856260287562', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(65, 'user63', 'user63@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '819939104289', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(66, 'user64', 'user64@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '843142573711', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(67, 'user65', 'user65@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '837604408960', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(68, 'user66', 'user66@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '897267882795', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(69, 'user67', 'user67@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '889281188359', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(70, 'user68', 'user68@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '823117944948', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(71, 'user69', 'user69@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '826873328840', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(72, 'user70', 'user70@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '851033804043', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(73, 'user71', 'user71@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '848077741344', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(74, 'user72', 'user72@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '870075235216', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(75, 'user73', 'user73@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '879659370874', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(76, 'user74', 'user74@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '866893370464', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(77, 'user75', 'user75@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '871676140621', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(78, 'user76', 'user76@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '853824413582', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(79, 'user77', 'user77@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '873047587671', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(80, 'user78', 'user78@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '869810020899', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(81, 'user79', 'user79@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '837568672541', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(82, 'user80', 'user80@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '893728983438', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(83, 'user81', 'user81@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '877709048025', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(84, 'user82', 'user82@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '828033282435', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(85, 'user83', 'user83@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '876710690166', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(86, 'user84', 'user84@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '892927090440', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(87, 'user85', 'user85@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '829748318807', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(88, 'user86', 'user86@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '886243735413', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(89, 'user87', 'user87@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '828658510051', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(90, 'user88', 'user88@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '828271661654', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(91, 'user89', 'user89@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '868239079998', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(92, 'user90', 'user90@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '825750010434', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(93, 'user91', 'user91@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '898437024957', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(94, 'user92', 'user92@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '813292893101', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(95, 'user93', 'user93@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '842675800153', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(96, 'user94', 'user94@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '821835174285', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(97, 'user95', 'user95@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '838776835011', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(98, 'user96', 'user96@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '894847452448', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(99, 'user97', 'user97@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '864477774808', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(100, 'user98', 'user98@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '838246931456', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(101, 'user99', 'user99@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '812838573994', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(102, 'user100', 'user100@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '855578802504', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(103, 'user101', 'user101@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '834617579187', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(104, 'user102', 'user102@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '845641741411', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(105, 'user103', 'user103@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '846637064212', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(106, 'user104', 'user104@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '818070107611', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(107, 'user105', 'user105@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '875007188579', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(108, 'user106', 'user106@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '873642330031', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(109, 'user107', 'user107@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '849900517951', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(110, 'user108', 'user108@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '898717644319', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(111, 'user109', 'user109@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '890480076520', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(112, 'user110', 'user110@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '856550409391', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(113, 'user111', 'user111@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '861476857130', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(114, 'user112', 'user112@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '895759931060', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(115, 'user113', 'user113@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '866486555781', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(116, 'user114', 'user114@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '881195790115', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(117, 'user115', 'user115@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '856357423058', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(118, 'user116', 'user116@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '871451148824', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(119, 'user117', 'user117@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '838565501442', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(120, 'user118', 'user118@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '831361068590', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(121, 'user119', 'user119@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '860939879117', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(122, 'user120', 'user120@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '850428618258', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(123, 'user121', 'user121@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '829730570453', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(124, 'user122', 'user122@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '887162230195', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(125, 'user123', 'user123@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '817199965168', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(126, 'user124', 'user124@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '886811453730', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(127, 'user125', 'user125@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '872672886278', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(128, 'user126', 'user126@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '851114506392', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(129, 'user127', 'user127@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '838169826835', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(130, 'user128', 'user128@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '886016046567', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(131, 'user129', 'user129@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '889125503774', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(132, 'user130', 'user130@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '832603944085', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(133, 'user131', 'user131@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '888898867277', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(134, 'user132', 'user132@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '816088230164', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(135, 'user133', 'user133@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '899701183402', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(136, 'user134', 'user134@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '852523627810', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(137, 'user135', 'user135@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '894635641681', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(138, 'user136', 'user136@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '817922020912', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(139, 'user137', 'user137@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '866723872325', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(140, 'user138', 'user138@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '861909423679', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(141, 'user139', 'user139@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '830753227370', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(142, 'user140', 'user140@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '843026764248', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(143, 'user141', 'user141@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '845585310769', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(144, 'user142', 'user142@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '853900178217', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(145, 'user143', 'user143@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '867398932956', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(146, 'user144', 'user144@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '851745915252', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(147, 'user145', 'user145@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '892492712177', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(148, 'user146', 'user146@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '829159570048', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(149, 'user147', 'user147@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '860512921908', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(150, 'user148', 'user148@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '873245187004', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(151, 'user149', 'user149@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '858783624302', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(152, 'user150', 'user150@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '889306538394', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(153, 'user151', 'user151@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '875766265627', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(154, 'user152', 'user152@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '848023734149', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(155, 'user153', 'user153@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '893618423029', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(156, 'user154', 'user154@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '858173807147', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(157, 'user155', 'user155@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '853065431783', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(158, 'user156', 'user156@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '865241103124', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(159, 'user157', 'user157@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '867715964276', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(160, 'user158', 'user158@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '889776061456', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(161, 'user159', 'user159@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '848792735783', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(162, 'user160', 'user160@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '858381742867', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(163, 'user161', 'user161@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '891879550852', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(164, 'user162', 'user162@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '830410612884', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(165, 'user163', 'user163@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '824026426789', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(166, 'user164', 'user164@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '889951304796', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(167, 'user165', 'user165@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '884124292412', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(168, 'user166', 'user166@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '851927669780', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(169, 'user167', 'user167@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '873292329873', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(170, 'user168', 'user168@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '890447091458', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(171, 'user169', 'user169@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '858932601368', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(172, 'user170', 'user170@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '834641955325', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(173, 'user171', 'user171@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '814499181360', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(174, 'user172', 'user172@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '836315793363', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(175, 'user173', 'user173@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '882253674924', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(176, 'user174', 'user174@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '868790223488', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(177, 'user175', 'user175@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '884874405477', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(178, 'user176', 'user176@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '851697002560', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(179, 'user177', 'user177@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '842383113608', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(180, 'user178', 'user178@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '879316332674', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(181, 'user179', 'user179@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '857195538710', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(182, 'user180', 'user180@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '894894685856', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(183, 'user181', 'user181@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '841531103206', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(184, 'user182', 'user182@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '819117690812', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(185, 'user183', 'user183@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '814016458619', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(186, 'user184', 'user184@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '831231385695', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(187, 'user185', 'user185@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '813869432932', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(188, 'user186', 'user186@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '848105139856', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(189, 'user187', 'user187@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '824507382596', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(190, 'user188', 'user188@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '884403923423', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(191, 'user189', 'user189@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '839660107768', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(192, 'user190', 'user190@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '823613479442', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(193, 'user191', 'user191@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '849058660677', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(194, 'user192', 'user192@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '820253492396', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(195, 'user193', 'user193@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '863317783476', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(196, 'user194', 'user194@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Admin', '861650578411', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(197, 'user195', 'user195@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '849107616045', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(198, 'user196', 'user196@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '899048782753', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(199, 'user197', 'user197@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Instructor', '898911092776', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(200, 'user198', 'user198@example.com', NULL, '$2y$12$EkwlZyFPOskCI73CPCFTA.fPnYOcPji.P7UpyJ26CZq7o55gibf8y', NULL, 'Student', '896798666274', '+62', '1711552202.jpg', '1716564968.png', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(201, 'user199', 'user199@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '845561570280', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(202, 'user200', 'user200@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '826607779054', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(203, 'user201', 'user201@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '832255351578', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(204, 'user202', 'user202@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '828952181380', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(205, 'user203', 'user203@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '837104388195', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(206, 'user204', 'user204@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '849749860537', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(207, 'user205', 'user205@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '815164675554', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(208, 'user206', 'user206@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '863724180381', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(209, 'user207', 'user207@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '825274700156', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(210, 'user208', 'user208@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '892152361035', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(211, 'user209', 'user209@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '848835717268', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `position`, `phone`, `code_phone`, `image`, `cover`, `biography`, `social_media`, `created_at`, `updated_at`) VALUES
(212, 'user210', 'user210@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '867027070074', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(213, 'user211', 'user211@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '849295314631', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(214, 'user212', 'user212@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '817544232252', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(215, 'user213', 'user213@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '864312635209', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(216, 'user214', 'user214@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '874409623048', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(217, 'user215', 'user215@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '832373533194', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(218, 'user216', 'user216@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '857652203318', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(219, 'user217', 'user217@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '878474871521', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(220, 'user218', 'user218@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '887299686846', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(221, 'user219', 'user219@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '884715296058', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(222, 'user220', 'user220@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '819730411120', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(223, 'user221', 'user221@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '862622256507', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(224, 'user222', 'user222@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '883792589060', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(225, 'user223', 'user223@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '821401286428', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(226, 'user224', 'user224@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '890744726847', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(227, 'user225', 'user225@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '864155220205', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(228, 'user226', 'user226@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '821145621369', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(229, 'user227', 'user227@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '867592208307', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(230, 'user228', 'user228@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '861117943906', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(231, 'user229', 'user229@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '848605671695', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(232, 'user230', 'user230@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '885024845180', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(233, 'user231', 'user231@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '864670652878', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(234, 'user232', 'user232@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '898313263879', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(235, 'user233', 'user233@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '844726490687', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(236, 'user234', 'user234@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '854232228764', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(237, 'user235', 'user235@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '824567206155', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(238, 'user236', 'user236@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '871245372004', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(239, 'user237', 'user237@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '818960771952', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(240, 'user238', 'user238@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '831742473450', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(241, 'user239', 'user239@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '882611706304', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(242, 'user240', 'user240@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '883225734235', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(243, 'user241', 'user241@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '847808280642', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(244, 'user242', 'user242@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '821853560091', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(245, 'user243', 'user243@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '897803834309', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(246, 'user244', 'user244@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '825768526606', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(247, 'user245', 'user245@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '887631390175', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(248, 'user246', 'user246@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '830844435133', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(249, 'user247', 'user247@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '882142047549', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(250, 'user248', 'user248@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '876277881403', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(251, 'user249', 'user249@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '888814027045', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(252, 'user250', 'user250@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '854645497604', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(253, 'user251', 'user251@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '873846444315', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(254, 'user252', 'user252@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '845744268684', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(255, 'user253', 'user253@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '848688899428', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(256, 'user254', 'user254@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '888859056601', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(257, 'user255', 'user255@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '848839317925', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(258, 'user256', 'user256@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '898744423591', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(259, 'user257', 'user257@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '867307441887', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(260, 'user258', 'user258@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '877748456638', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(261, 'user259', 'user259@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '865102779949', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(262, 'user260', 'user260@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '826571430227', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(263, 'user261', 'user261@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '820816415888', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(264, 'user262', 'user262@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '871167884037', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(265, 'user263', 'user263@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '861119101027', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(266, 'user264', 'user264@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '828344072601', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(267, 'user265', 'user265@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '884790853568', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(268, 'user266', 'user266@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '894796488865', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(269, 'user267', 'user267@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '887688300179', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(270, 'user268', 'user268@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '852774454166', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(271, 'user269', 'user269@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '812366925696', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(272, 'user270', 'user270@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '825054089863', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(273, 'user271', 'user271@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '867041158102', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(274, 'user272', 'user272@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '868865439029', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(275, 'user273', 'user273@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '889248780599', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(276, 'user274', 'user274@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '824616101060', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(277, 'user275', 'user275@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '840839568693', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(278, 'user276', 'user276@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '849608350668', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(279, 'user277', 'user277@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '864545867306', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(280, 'user278', 'user278@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '844234437471', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(281, 'user279', 'user279@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '874015869864', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(282, 'user280', 'user280@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '887194363234', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(283, 'user281', 'user281@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '821246571677', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(284, 'user282', 'user282@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '819334548576', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(285, 'user283', 'user283@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '858100858564', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(286, 'user284', 'user284@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '864816871011', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(287, 'user285', 'user285@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '896278538122', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(288, 'user286', 'user286@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '858832372640', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(289, 'user287', 'user287@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '810527017958', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(290, 'user288', 'user288@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '890105376616', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(291, 'user289', 'user289@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '824553587729', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(292, 'user290', 'user290@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '855088444654', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(293, 'user291', 'user291@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '818816723681', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(294, 'user292', 'user292@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '889774968673', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(295, 'user293', 'user293@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '812532407716', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(296, 'user294', 'user294@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '843267526505', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(297, 'user295', 'user295@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '859890098231', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(298, 'user296', 'user296@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '853891921431', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(299, 'user297', 'user297@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '848121576715', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(300, 'user298', 'user298@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '876807446296', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(301, 'user299', 'user299@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '874963484818', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(302, 'user300', 'user300@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '884698838296', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(303, 'user301', 'user301@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '840930876454', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(304, 'user302', 'user302@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '837616415906', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(305, 'user303', 'user303@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '856817618303', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(306, 'user304', 'user304@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '828599474937', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(307, 'user305', 'user305@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '827133316297', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(308, 'user306', 'user306@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '872916895246', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(309, 'user307', 'user307@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '891601304533', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(310, 'user308', 'user308@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '863088060021', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(311, 'user309', 'user309@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '869169315749', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(312, 'user310', 'user310@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '856053361243', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(313, 'user311', 'user311@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '875142937598', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(314, 'user312', 'user312@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '838619802526', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(315, 'user313', 'user313@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '879642511165', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(316, 'user314', 'user314@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '839935974039', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(317, 'user315', 'user315@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '865083621736', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(318, 'user316', 'user316@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '883828645645', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(319, 'user317', 'user317@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '868574785872', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(320, 'user318', 'user318@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '811609032409', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(321, 'user319', 'user319@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '845649296689', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(322, 'user320', 'user320@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '878555749969', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(323, 'user321', 'user321@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '851273658399', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(324, 'user322', 'user322@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '899384394214', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(325, 'user323', 'user323@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '864228405873', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(326, 'user324', 'user324@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '812623061310', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(327, 'user325', 'user325@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '855941281699', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(328, 'user326', 'user326@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '834584425617', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(329, 'user327', 'user327@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '870279642019', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(330, 'user328', 'user328@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '824747984217', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(331, 'user329', 'user329@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '876807617918', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(332, 'user330', 'user330@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '874227184731', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(333, 'user331', 'user331@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '819776883127', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(334, 'user332', 'user332@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '864909666546', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(335, 'user333', 'user333@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '854757157276', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(336, 'user334', 'user334@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '889593055298', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(337, 'user335', 'user335@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '813603501826', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(338, 'user336', 'user336@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '811852453212', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(339, 'user337', 'user337@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '861670775209', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(340, 'user338', 'user338@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '878055521032', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(341, 'user339', 'user339@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '820619642137', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(342, 'user340', 'user340@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '840443736898', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(343, 'user341', 'user341@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '828691094484', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(344, 'user342', 'user342@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '844017782186', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(345, 'user343', 'user343@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '816726416869', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(346, 'user344', 'user344@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '884461977732', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(347, 'user345', 'user345@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '867648707755', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(348, 'user346', 'user346@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '859856541853', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(349, 'user347', 'user347@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '822926537196', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(350, 'user348', 'user348@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '810506996742', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(351, 'user349', 'user349@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '893429112064', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(352, 'user350', 'user350@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '816475462994', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(353, 'user351', 'user351@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '894088103565', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(354, 'user352', 'user352@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '868272043184', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(355, 'user353', 'user353@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '833507138302', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(356, 'user354', 'user354@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '835789183493', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(357, 'user355', 'user355@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '894051489251', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(358, 'user356', 'user356@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '823039134450', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(359, 'user357', 'user357@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '896429101459', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(360, 'user358', 'user358@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '899279361458', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(361, 'user359', 'user359@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '842708647267', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(362, 'user360', 'user360@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '831462585251', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(363, 'user361', 'user361@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '852868928475', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(364, 'user362', 'user362@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '893329597103', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(365, 'user363', 'user363@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '889502596305', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(366, 'user364', 'user364@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '830625954459', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(367, 'user365', 'user365@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '889438707090', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(368, 'user366', 'user366@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '877628164855', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(369, 'user367', 'user367@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '820440522655', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(370, 'user368', 'user368@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '860582225239', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(371, 'user369', 'user369@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '872962112062', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(372, 'user370', 'user370@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '829072390263', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(373, 'user371', 'user371@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '883586548618', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(374, 'user372', 'user372@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '811174346673', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(375, 'user373', 'user373@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '863398782713', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(376, 'user374', 'user374@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '876411159202', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(377, 'user375', 'user375@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '877988994726', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(378, 'user376', 'user376@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '882842764119', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(379, 'user377', 'user377@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '895692476458', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(380, 'user378', 'user378@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '851000735764', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(381, 'user379', 'user379@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '898014248760', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(382, 'user380', 'user380@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '815259681963', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(383, 'user381', 'user381@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '898786697295', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(384, 'user382', 'user382@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '885370883457', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(385, 'user383', 'user383@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '838764225065', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(386, 'user384', 'user384@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '882057239008', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(387, 'user385', 'user385@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '868186574904', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(388, 'user386', 'user386@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '874317373201', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(389, 'user387', 'user387@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '853543070930', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(390, 'user388', 'user388@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '894371939487', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(391, 'user389', 'user389@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '845620685613', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(392, 'user390', 'user390@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '836477819733', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(393, 'user391', 'user391@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '848378827353', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(394, 'user392', 'user392@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '879230328657', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(395, 'user393', 'user393@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '882653356500', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(396, 'user394', 'user394@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '882514418615', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(397, 'user395', 'user395@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '832928189342', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(398, 'user396', 'user396@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '876130008551', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(399, 'user397', 'user397@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '857047134496', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(400, 'user398', 'user398@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '833799128807', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(401, 'user399', 'user399@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '887244799186', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(402, 'user400', 'user400@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '848556580231', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(403, 'user401', 'user401@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '880987891734', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(404, 'user402', 'user402@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '860302953913', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(405, 'user403', 'user403@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '834032838046', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(406, 'user404', 'user404@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '889285967808', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(407, 'user405', 'user405@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '839994382575', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(408, 'user406', 'user406@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '843803217167', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(409, 'user407', 'user407@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '826807691602', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(410, 'user408', 'user408@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '832025886807', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(411, 'user409', 'user409@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '898460545842', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(412, 'user410', 'user410@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '847174736343', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(413, 'user411', 'user411@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '820355943727', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(414, 'user412', 'user412@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '860077844721', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(415, 'user413', 'user413@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '879507699074', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(416, 'user414', 'user414@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '886288678471', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(417, 'user415', 'user415@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '870487664258', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(418, 'user416', 'user416@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '839267617786', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(419, 'user417', 'user417@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '846170363826', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(420, 'user418', 'user418@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '824577937416', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `position`, `phone`, `code_phone`, `image`, `cover`, `biography`, `social_media`, `created_at`, `updated_at`) VALUES
(421, 'user419', 'user419@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '899029114824', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(422, 'user420', 'user420@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '849966976990', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(423, 'user421', 'user421@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '811325229175', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(424, 'user422', 'user422@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '874826554790', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(425, 'user423', 'user423@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '891900299147', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(426, 'user424', 'user424@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '842089263472', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(427, 'user425', 'user425@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '840699294443', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(428, 'user426', 'user426@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '814329027765', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(429, 'user427', 'user427@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '870220949151', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(430, 'user428', 'user428@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '810248748945', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(431, 'user429', 'user429@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '888304403112', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(432, 'user430', 'user430@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '842463637206', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(433, 'user431', 'user431@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '843116095057', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(434, 'user432', 'user432@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '835038323946', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(435, 'user433', 'user433@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '883139854349', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(436, 'user434', 'user434@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '821420598493', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(437, 'user435', 'user435@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '894984934650', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(438, 'user436', 'user436@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '812270783292', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(439, 'user437', 'user437@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '897094112670', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(440, 'user438', 'user438@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '868524161846', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(441, 'user439', 'user439@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '827444777841', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(442, 'user440', 'user440@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '881430737409', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(443, 'user441', 'user441@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '832028824972', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(444, 'user442', 'user442@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '894896869082', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(445, 'user443', 'user443@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '856958696267', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(446, 'user444', 'user444@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '898557784180', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(447, 'user445', 'user445@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '835414035100', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(448, 'user446', 'user446@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '818683979945', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(449, 'user447', 'user447@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '855180428210', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(450, 'user448', 'user448@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '824087364750', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(451, 'user449', 'user449@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '885466442761', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(452, 'user450', 'user450@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '871395399801', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(453, 'user451', 'user451@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '818266716138', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(454, 'user452', 'user452@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '844246292600', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(455, 'user453', 'user453@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '881664299967', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(456, 'user454', 'user454@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '826624619439', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(457, 'user455', 'user455@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '844498833371', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(458, 'user456', 'user456@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '884061387087', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(459, 'user457', 'user457@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '880452800703', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(460, 'user458', 'user458@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '816111330070', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(461, 'user459', 'user459@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '859966966354', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(462, 'user460', 'user460@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '821786497598', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(463, 'user461', 'user461@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '861014893674', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(464, 'user462', 'user462@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '852249122848', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(465, 'user463', 'user463@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '864460142243', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(466, 'user464', 'user464@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '862153015055', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(467, 'user465', 'user465@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '872505826076', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(468, 'user466', 'user466@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '883366926439', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(469, 'user467', 'user467@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '875454162657', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(470, 'user468', 'user468@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '852331786289', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(471, 'user469', 'user469@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '834514720968', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(472, 'user470', 'user470@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '821800293963', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(473, 'user471', 'user471@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '813963626050', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(474, 'user472', 'user472@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '822614004508', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(475, 'user473', 'user473@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '878345975983', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(476, 'user474', 'user474@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '842928854893', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(477, 'user475', 'user475@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '877007651762', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(478, 'user476', 'user476@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '895584435932', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(479, 'user477', 'user477@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '877073142572', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(480, 'user478', 'user478@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '868647433148', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(481, 'user479', 'user479@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '853585353827', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(482, 'user480', 'user480@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '845518378936', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(483, 'user481', 'user481@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '847577566667', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(484, 'user482', 'user482@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '869115773979', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(485, 'user483', 'user483@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '889071602673', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(486, 'user484', 'user484@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '863589282724', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(487, 'user485', 'user485@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '832792274825', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(488, 'user486', 'user486@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '832358463859', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(489, 'user487', 'user487@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '858611113716', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(490, 'user488', 'user488@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '898907680683', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(491, 'user489', 'user489@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '833327688021', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(492, 'user490', 'user490@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '849084592979', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(493, 'user491', 'user491@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '826910698880', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(494, 'user492', 'user492@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '860207784039', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(495, 'user493', 'user493@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Student', '863995302903', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(496, 'user494', 'user494@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '879109996667', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(497, 'user495', 'user495@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '898240963505', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(498, 'user496', 'user496@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '825836296462', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(499, 'user497', 'user497@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Instructor', '834771249144', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(500, 'user498', 'user498@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '886616675570', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(501, 'user499', 'user499@example.com', NULL, '$2y$12$xVxmt3a09frqqcWQm.BSy./j80Yo5S.XWYFCHEtVg2hjYkX.JAKfO', NULL, 'Admin', '897635719557', '+62', '1711552202.jpg', '1710173364.jpg', 'Contoh Biografi Adalah', 'a~~a~~a~~a', NULL, NULL),
(502, 'Helfi Apriliyandi Firdaos', 'helfi@course.com', NULL, '$2y$12$OARded9h.PdEe0oLzgNaouDRqsP4HKBN3AZyVj4M3V7.kFgphTit6', NULL, 'MASTER OF BACKEND DEVELOPER', '85770317597', '62', '1715005487.png', '1715005487.jpg', 'MENCARI KETANGGUHAN', 'HELFI APRILIYANDI FIRDAOS~~HELFI AJA KO', '2024-05-06 07:23:44', '2024-05-06 07:25:13'),
(503, 'Instructor', 'instructor@course.com', NULL, '$2y$12$0Jc0oEzOXscw6gSjVjxv1.6EteKlueomqfgV5opostxhYQKUQ4QEa', NULL, 'ANALISIS DATA', '085770317597', '+62', '1715005995.png', '1715005995.png', 'MANTAP', NULL, '2024-05-06 07:31:50', '2024-05-06 07:33:15'),
(504, 'asa', 'user122@course.com', NULL, '$2y$12$TpCKkx3ydo9FgH7vRvkacOm8..cRQCQTn8yHq/bkNh1lYG3sSvJM2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-18 05:17:17', '2024-05-18 05:17:17'),
(505, 'Nama', 'auh@course.com', NULL, '$2y$12$uhyWF6yMWREa3hmhca9Onel9VrWE4jPvb7G9JfXGMQPCU7yvqO7yK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-18 05:21:50', '2024-05-18 05:21:50'),
(506, 'admin', 'admin@gmail.com', '2024-05-23 08:27:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-23 08:27:38', '2024-05-23 08:27:38'),
(507, 'admin@sadisweb.com', 'admin@sadisweb.com', NULL, '$2y$12$7U/4I6VwqEJUYTw.zSxy5.p891IQFdb.GBWnxA4jgf80srgcGsrDG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-31 04:55:36', '2024-05-31 04:55:36'),
(508, 'Siswa C', 'siswac@course.com', NULL, '$2y$12$4pKrZ7WH6b5CbFWIK75MI.dQvNInK2rcsKc6pvKvoBCOMg63HNPGu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-31 05:09:55', '2024-05-31 05:09:55'),
(509, 'Helfi Apriliyandi Firdaos', 'admin@gmail.com12', NULL, '$2y$12$LVcLZ2kjLom2I8YiT/ycluUIhCeb47dENPyLmHdR0wlZBZYcZb8bO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-31 05:14:44', '2024-05-31 05:14:44'),
(510, 'Siswa', 'siswa1@course.com', NULL, '$2y$12$Jg6f2d.P3wPg1T94vaGBMOryJR307v/y/0w8ElRm.xHJcnFRou2KO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-31 05:15:42', '2024-05-31 05:15:42'),
(511, 'Test Panpel', 'panpelieasukabumiraya17@gmail.com', NULL, '$2y$12$KmXHk3NgBLCcof.Ugo69tOiHSW3mU.NObI9g.VOzXgDCepz3NcjJu', NULL, 'Test', '0266734779', '62', '1717238786.jpg', NULL, NULL, NULL, '2024-06-01 03:46:07', '2024-06-01 03:46:26'),
(512, 'Siswa C', 'tesqu@sadisweb.com', NULL, '$2y$12$8GdZb2ezYl7UEleYQp6FGOZMrlvYQSsMc9c/Wr/FYPHQDc6Hlhh0W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01 03:52:45', '2024-06-01 03:52:45'),
(513, 'Hilfi Noveliandry', 'hilfi@course.com', NULL, '$2y$12$7h4XN5Zgca.ltnt1yTRM5uwANENGXZyswcepTIBY4VTzn4rC2Q1S.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01 03:54:44', '2024-06-01 03:54:44'),
(514, 'testlagi', 'test123@course.com', NULL, '$2y$12$O0Ql6uf26hvVhMD.hFagdeMQ4OCeceeA2NhS1f.6.DuS4Dipaxe12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01 03:56:07', '2024-06-01 03:56:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `activity_log_users_FK` (`causer_id`);

--
-- Indexes for table `categoris`
--
ALTER TABLE `categoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_course_id_foreign` (`course_id`) USING BTREE;

--
-- Indexes for table `cobas`
--
ALTER TABLE `cobas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_histories_users` (`user_id`),
  ADD KEY `FK_histories_courses` (`material_id`) USING BTREE,
  ADD KEY `histories_courses_FK` (`course_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materials_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `materials_to_chapters`
--
ALTER TABLE `materials_to_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_materials_to_chapters_chapters` (`chapter_id`),
  ADD KEY `FK_materials_to_chapters_materials` (`material_id`),
  ADD KEY `FK_materials_to_chapters_users` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categoris`
--
ALTER TABLE `categoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `cobas`
--
ALTER TABLE `cobas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3579;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `materials_to_chapters`
--
ALTER TABLE `materials_to_chapters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2628;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `activity_log_users_FK` FOREIGN KEY (`causer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `FK_histories_materials` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  ADD CONSTRAINT `FK_histories_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `histories_courses_FK` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `materials_to_chapters`
--
ALTER TABLE `materials_to_chapters`
  ADD CONSTRAINT `FK_materials_to_chapters_chapters` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`),
  ADD CONSTRAINT `FK_materials_to_chapters_materials` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  ADD CONSTRAINT `FK_materials_to_chapters_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
