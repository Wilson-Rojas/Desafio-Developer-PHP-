-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2025 a las 15:54:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desafio_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Soluta earum voluptates quia.', 'Dicta porro hic rerum ea eos. Maxime dolorem molestias quidem deleniti. Velit velit tempora ipsam nihil. Ea qui omnis sequi distinctio temporibus corrupti alias eos.', '2025-06-16', '2025-11-16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(2, 'Laudantium quae voluptatibus.', 'Quos quibusdam ad sunt iusto. Dolor est dolorum sed cumque expedita eveniet tenetur.', '2025-05-07', '2025-08-07', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(3, 'Omnis odit cum nulla.', 'Sit saepe mollitia sint totam nam et ut. Et cum vitae blanditiis eveniet.', '2025-04-27', '2025-05-27', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(4, 'Impedit ratione veniam.', 'Error ut velit tempore atque a beatae ut. Sint nulla rem id quis aut nostrum vero nostrum. Quidem voluptatem facilis eius distinctio ducimus.', '2025-06-12', '2025-08-12', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(5, 'Illum iure deleniti.', 'Est fugiat ut non ut explicabo rerum error voluptatem. Et animi saepe in consectetur voluptas. Veniam velit velit ullam harum odit nam voluptates.', '2025-05-22', '2025-11-22', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(6, 'Neque repellat labore.', 'Pariatur vitae quae rerum praesentium. Sed doloribus sed expedita voluptates quia nihil. Incidunt consequatur eos aperiam dolorem nam quis. Dolore quae non dicta soluta.', '2025-06-21', '2025-07-21', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(7, 'Repellendus saepe placeat amet.', 'Ut rerum quisquam dolorum dignissimos voluptatem voluptates. Dolores delectus ducimus nobis. Sit ea et totam. Porro est sunt soluta molestiae molestiae dolores.', '2025-07-16', '2025-08-16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(8, 'Asperiores alias vero.', 'Ullam tempora nulla commodi aut. Sed totam consectetur maxime occaecati maxime impedit qui. Cumque voluptatibus id et doloribus at voluptas.', '2025-06-13', '2025-08-13', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(9, 'Ullam quas rem qui.', 'Quia rerum dolor et illo. Eos sint corporis corporis eveniet. Aliquid voluptatum rem iure repellendus architecto. Est consequatur facilis minima quibusdam labore fugiat ea ut.', '2025-06-09', '2025-10-09', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(10, 'Qui aperiam quia assumenda.', 'Qui aut enim ut ipsum aperiam sit. Enim nemo non ad voluptate aut amet sequi. Quod eos mollitia iusto accusamus.', '2025-05-19', '2025-08-19', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(11, 'Illo consequuntur qui est.', 'Totam neque nobis labore impedit. Consequatur voluptatibus praesentium unde nostrum voluptatem aut. Quis voluptatibus similique repellat pariatur eligendi velit necessitatibus.', '2025-05-09', '2025-07-09', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(12, 'Odio cupiditate sed et.', 'Perferendis sequi tempore quo voluptas. Non est molestias non itaque mollitia. Illo ea aut pariatur et asperiores ullam. Et eum iusto sed repellendus adipisci.', '2025-06-21', '2025-10-21', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(13, 'Facere ipsum et.', 'Impedit et porro labore ab vitae aut est ab. Et qui mollitia quia quia et libero. Ea hic quidem fugiat qui.', '2025-05-22', '2025-07-22', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(14, 'Sit sunt provident.', 'Debitis dolorum fuga velit a. Dolore commodi amet dolorem voluptates numquam quae a. Facilis fugit adipisci non dignissimos. Dolores omnis a praesentium dolorem et tenetur.', '2025-05-07', '2025-06-07', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(15, 'Magnam labore sed.', 'Quo cum qui voluptatibus aliquid expedita eius tempore. Sequi ea dicta amet pariatur voluptas in voluptate. Inventore est facere voluptas amet dolorem illum. Earum accusantium quidem ex ipsam ut ea.', '2025-04-29', '2025-09-29', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(16, 'Eaque nisi a.', 'Ut atque consequatur aliquam labore ut amet perspiciatis. Voluptates natus illum nihil qui cupiditate eos sit culpa. Consequatur architecto magnam voluptatem similique et perferendis. Qui porro non iste excepturi et.', '2025-04-24', '2025-09-24', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(17, 'Nam soluta maxime earum.', 'Est error excepturi aut deserunt numquam illum. Eveniet quod itaque assumenda aperiam. Autem tempore consequatur cumque possimus reprehenderit.', '2025-05-24', '2025-06-24', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(18, 'Omnis sapiente quae sint.', 'Aliquam numquam quam velit ut et ea. Nisi non ut sed id a ex distinctio. Et eos voluptas officiis tempora. Harum deleniti dolor et laborum.', '2025-07-05', '2025-12-05', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(19, 'Temporibus vitae provident.', 'Non saepe veritatis nulla dolorem voluptates. Rerum totam sunt fuga inventore eveniet vel. Ipsum aliquid vitae id. Qui commodi minus et quo sint veniam quo.', '2025-07-05', '2025-09-05', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(20, 'Nisi ea sit quibusdam.', 'Iste vel ipsum vero qui non architecto. Quae incidunt magni ut deserunt aliquid velit illum. Molestiae perferendis alias in modi.', '2025-07-09', '2026-01-09', '2025-05-22 16:40:57', '2025-05-22 16:40:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `enrolled_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_id`, `course_id`, `enrolled_at`, `created_at`, `updated_at`) VALUES
(1, 29, 7, '2025-01-09 10:45:30', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(2, 29, 4, '2025-05-17 17:42:57', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(3, 29, 14, '2025-04-17 23:32:14', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(4, 29, 2, '2025-03-17 15:40:06', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(5, 41, 16, '2025-02-02 15:07:29', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(6, 41, 8, '2025-05-01 16:04:16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(7, 27, 18, '2025-04-10 19:47:05', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(8, 45, 10, '2025-04-17 12:30:16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(9, 34, 17, '2024-12-17 22:02:35', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(10, 6, 16, '2024-12-19 02:45:52', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(11, 6, 15, '2024-11-23 16:05:57', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(12, 6, 2, '2025-04-06 02:05:48', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(13, 6, 10, '2025-05-12 11:44:03', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(14, 6, 7, '2025-03-01 15:07:04', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(15, 15, 19, '2025-04-17 04:17:04', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(16, 7, 7, '2025-03-23 19:19:09', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(17, 39, 4, '2025-01-23 23:20:46', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(18, 39, 2, '2025-05-02 16:27:40', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(19, 39, 8, '2025-04-02 04:32:47', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(20, 14, 11, '2024-11-30 03:52:37', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(21, 50, 7, '2025-02-07 09:25:16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(22, 5, 1, '2025-04-24 12:56:16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(23, 5, 6, '2024-11-29 17:01:50', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(24, 43, 19, '2025-04-13 02:21:47', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(25, 43, 11, '2025-05-05 22:10:12', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(26, 43, 10, '2024-12-18 23:58:27', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(27, 12, 18, '2025-01-22 12:41:41', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(28, 20, 7, '2025-03-28 10:53:31', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(29, 20, 8, '2025-04-27 03:22:25', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(30, 20, 19, '2024-12-30 13:06:47', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(31, 35, 19, '2024-12-30 15:47:55', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(32, 35, 17, '2025-05-16 17:30:42', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(33, 35, 20, '2025-03-26 04:46:10', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(34, 35, 5, '2024-12-29 02:33:29', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(35, 35, 7, '2025-02-25 16:17:10', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(36, 19, 18, '2025-01-07 21:18:51', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(37, 19, 15, '2025-04-19 14:48:14', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(38, 19, 10, '2025-04-18 18:25:19', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(39, 19, 2, '2024-12-26 22:09:22', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(40, 8, 20, '2025-01-31 12:35:22', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(41, 2, 1, '2024-12-06 16:49:10', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(42, 2, 6, '2025-03-28 13:33:11', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(43, 22, 12, '2025-03-12 03:08:16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(44, 21, 3, '2025-05-04 20:52:20', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(45, 18, 4, '2025-04-03 19:03:05', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(46, 18, 3, '2024-12-25 07:34:08', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(47, 18, 7, '2025-01-26 18:15:22', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(48, 18, 18, '2025-05-11 18:30:38', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(49, 18, 2, '2025-05-09 16:00:19', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(50, 16, 19, '2024-12-02 01:18:39', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(51, 16, 13, '2024-11-26 05:19:36', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(52, 16, 8, '2024-12-28 20:26:56', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(53, 25, 3, '2024-11-24 18:15:53', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(54, 25, 1, '2025-02-23 23:01:31', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(55, 25, 15, '2025-01-16 04:29:16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(56, 24, 2, '2025-02-03 01:27:04', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(57, 24, 18, '2025-05-17 21:50:59', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(58, 24, 17, '2024-12-18 19:45:12', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(59, 13, 11, '2025-04-10 04:32:21', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(60, 31, 20, '2025-04-12 07:00:28', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(61, 31, 3, '2025-04-17 18:35:04', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(62, 31, 14, '2025-03-27 20:56:10', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(63, 38, 18, '2024-11-29 03:17:03', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(64, 38, 1, '2024-12-06 12:41:28', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(65, 38, 20, '2024-12-05 19:25:19', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(66, 42, 14, '2025-04-10 10:50:31', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(67, 37, 9, '2025-04-13 10:03:47', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(68, 37, 4, '2025-04-21 11:55:09', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(69, 46, 17, '2025-03-08 19:09:50', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(70, 46, 18, '2025-03-23 19:42:36', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(71, 46, 15, '2025-02-06 05:23:47', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(72, 11, 17, '2025-05-09 19:22:27', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(73, 11, 10, '2025-01-01 10:15:48', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(74, 11, 19, '2025-05-16 08:52:33', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(75, 36, 13, '2024-12-25 16:30:54', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(76, 36, 16, '2025-01-29 16:03:28', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(77, 36, 12, '2025-02-19 17:09:23', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(78, 23, 11, '2025-02-03 23:13:47', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(79, 23, 20, '2024-12-21 01:41:00', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(80, 23, 9, '2025-01-13 19:18:32', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(81, 23, 10, '2024-12-08 14:56:41', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(82, 23, 12, '2024-12-22 20:23:24', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(83, 47, 15, '2024-12-20 19:23:30', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(84, 47, 8, '2024-12-31 00:47:10', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(85, 47, 16, '2024-12-02 04:05:52', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(86, 47, 6, '2025-04-02 07:38:32', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(87, 47, 13, '2024-12-19 19:34:06', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(88, 44, 17, '2025-01-26 18:00:05', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(89, 44, 16, '2025-03-04 19:43:29', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(90, 44, 20, '2025-01-23 20:22:59', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(91, 48, 8, '2024-12-11 19:18:41', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(92, 26, 1, '2024-12-21 19:15:15', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(93, 26, 9, '2025-04-23 13:32:44', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(94, 26, 4, '2025-05-07 00:31:45', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(95, 26, 8, '2024-11-26 17:14:57', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(96, 9, 1, '2025-05-14 15:00:36', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(97, 9, 8, '2025-04-02 06:21:53', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(98, 10, 14, '2025-02-14 23:05:27', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(99, 17, 9, '2025-01-07 03:24:25', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(100, 17, 8, '2025-01-27 09:38:41', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(101, 17, 6, '2025-04-07 08:46:58', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(102, 17, 19, '2024-12-24 21:49:13', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(103, 32, 3, '2025-02-28 09:57:46', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(104, 32, 4, '2024-12-21 13:42:32', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(105, 32, 8, '2025-04-19 08:07:16', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(106, 32, 6, '2025-01-30 15:17:09', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(107, 30, 7, '2025-03-04 10:07:47', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(108, 30, 12, '2025-02-06 02:27:50', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(109, 30, 3, '2025-04-19 15:02:54', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(110, 49, 4, '2025-03-07 15:36:41', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(111, 49, 17, '2025-01-05 14:35:39', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(112, 4, 8, '2025-04-15 15:20:04', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(113, 40, 20, '2025-01-17 07:14:15', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(114, 1, 19, '2025-05-02 18:28:54', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(115, 1, 18, '2024-11-28 09:37:13', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(116, 3, 19, '2025-03-13 01:45:07', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(117, 3, 13, '2025-01-25 12:36:12', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(118, 3, 18, '2025-03-26 17:56:26', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(119, 3, 20, '2025-04-08 10:09:39', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(120, 33, 19, '2024-12-01 21:04:34', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(121, 33, 15, '2025-04-19 18:05:51', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(122, 33, 9, '2025-01-23 23:37:05', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(123, 28, 5, '2025-02-07 14:49:15', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(124, 28, 15, '2024-12-19 09:26:27', '2025-05-22 16:40:57', '2025-05-22 16:40:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_05_20_003425_create_students_table', 1),
(6, '2025_05_20_003434_create_courses_table', 1),
(7, '2025_05_20_003443_create_enrollments_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `birthdate`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Hollie Hilpert I', 'will.sarina@example.net', '2003-12-11', 'Turkmenistan', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(2, 'Jan Boyle', 'jana.smitham@example.org', '2003-03-26', 'Saint Vincent and the Grenadines', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(3, 'Prof. Arne Thompson', 'wwilderman@example.com', '1986-10-30', 'Macao', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(4, 'Antone Quigley', 'usteuber@example.org', '1972-01-03', 'Serbia', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(5, 'Prof. Dereck Quitzon', 'fyundt@example.org', '1984-08-18', 'Wallis and Futuna', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(6, 'Kristian Hauck II', 'candice79@example.org', '1998-06-19', 'Egypt', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(7, 'Dr. Marlin Ankunding I', 'esawayn@example.com', '1990-10-19', 'Pitcairn Islands', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(8, 'Prof. Keyon Kassulke MD', 'iweber@example.org', '1984-11-13', 'Kenya', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(9, 'Dulce Koelpin MD', 'roscoe38@example.org', '1981-03-24', 'Bosnia and Herzegovina', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(10, 'Maynard Johns Jr.', 'royce33@example.org', '1993-11-25', 'Bouvet Island (Bouvetoya)', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(11, 'Prof. Rosalinda Hermiston', 'nadia.veum@example.org', '2006-04-17', 'Grenada', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(12, 'Vilma Romaguera', 'gusikowski.peggie@example.com', '1992-05-16', 'Andorra', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(13, 'Rashawn Wilderman', 'leatha51@example.org', '2006-02-17', 'Cook Islands', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(14, 'Ashly Lynch', 'evie.bogisich@example.org', '1976-06-26', 'Guatemala', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(15, 'Dr. Bria Bergnaum', 'dtorphy@example.net', '1999-11-16', 'Costa Rica', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(16, 'Jazmyn Ratke', 'jess09@example.net', '1997-08-06', 'Saint Lucia', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(17, 'Jaylin Russel', 'santiago.monahan@example.net', '1980-01-01', 'Netherlands Antilles', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(18, 'Alexandrea Nicolas', 'jeromy.ziemann@example.org', '1974-05-11', 'Guernsey', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(19, 'Yasmine Funk', 'hauck.niko@example.net', '2000-12-17', 'South Africa', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(20, 'Tomasa Jacobs', 'gust.lueilwitz@example.org', '1970-12-12', 'Iraq', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(21, 'Ari Flatley II', 'jennifer.kessler@example.org', '1998-12-05', 'United States Minor Outlying Islands', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(22, 'Michael Ferry DVM', 'jarrett00@example.org', '1992-11-20', 'Bouvet Island (Bouvetoya)', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(23, 'Mrs. Callie Brown', 'nstreich@example.org', '1976-05-21', 'Timor-Leste', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(24, 'Brendan Bednar III', 'karli.williamson@example.com', '1989-12-11', 'Equatorial Guinea', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(25, 'Rosemarie Mayert', 'joy.kuphal@example.org', '1991-08-13', 'Mauritania', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(26, 'Kory Johnson', 'robel.tina@example.net', '1971-12-03', 'Wallis and Futuna', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(27, 'Giuseppe Herzog', 'bashirian.miller@example.com', '2005-02-13', 'Marshall Islands', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(28, 'Sasha Considine MD', 'ywolf@example.net', '1979-01-08', 'Vanuatu', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(29, 'Lon Lang', 'alphonso83@example.org', '1998-11-25', 'Kazakhstan', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(30, 'Evangeline Glover', 'shaylee.heidenreich@example.net', '1985-11-18', 'Faroe Islands', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(31, 'Kyleigh Nolan DDS', 'lenore.schmeler@example.net', '2003-03-13', 'Russian Federation', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(32, 'Mr. Russel Adams', 'schumm.thora@example.com', '1980-01-27', 'Bosnia and Herzegovina', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(33, 'Blanca Stiedemann', 'xsawayn@example.net', '1994-10-09', 'American Samoa', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(34, 'Bradley Hegmann DDS', 'brooks.daniel@example.net', '2005-09-23', 'Montenegro', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(35, 'Prof. Candida Hodkiewicz', 'hane.gabriel@example.org', '1979-04-14', 'Latvia', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(36, 'Ms. Ocie Kub', 'nkunze@example.org', '1977-06-18', 'Norway', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(37, 'Lucile Effertz', 'mraz.elva@example.com', '1974-07-23', 'Saint Martin', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(38, 'Darian Hudson', 'lynch.linnie@example.com', '2007-03-05', 'Antigua and Barbuda', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(39, 'Jeffrey Rogahn', 'eusebio.hane@example.net', '2005-04-16', 'Gibraltar', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(40, 'Kamron Abernathy', 'vhalvorson@example.net', '1982-02-13', 'Malawi', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(41, 'Prof. Elbert Schaefer DDS', 'barbara.nader@example.net', '1975-11-21', 'Saint Lucia', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(42, 'Kayleigh Mertz', 'malachi56@example.org', '2002-03-20', 'Niue', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(43, 'Vita Bradtke', 'gennaro.weber@example.org', '2003-03-09', 'Zimbabwe', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(44, 'Johnathan Hirthe', 'payton26@example.com', '1997-03-08', 'Western Sahara', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(45, 'Mr. Sid Windler DVM', 'baumbach.furman@example.net', '1973-05-05', 'Djibouti', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(46, 'Kira Hickle', 'muriel.moen@example.net', '1976-03-19', 'Senegal', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(47, 'Mr. Isom Greenfelder', 'orpha35@example.org', '1996-04-18', 'Gambia', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(48, 'Dr. Jeremie Cremin Jr.', 'pbins@example.com', '1993-04-08', 'Bosnia and Herzegovina', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(49, 'Julian Krajcik', 'troy.swift@example.net', '1988-04-18', 'French Southern Territories', '2025-05-22 16:40:57', '2025-05-22 16:40:57'),
(50, 'Trystan Kuhic', 'forrest.braun@example.com', '1986-03-30', 'Zambia', '2025-05-22 16:40:57', '2025-05-22 16:40:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_student_id_foreign` (`student_id`),
  ADD KEY `enrollments_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
