-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2020 a las 18:16:56
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portal2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_tipo_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `name`, `icon`, `categoria_tipo_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Carpintero/a', 'icon/carpintero.jpg', 1, 1, '2019-10-23 23:35:32', '2019-10-23 23:35:32'),
(2, 'Electricista', 'icon/electricista.jpg', 1, 1, '2019-10-23 23:35:32', '2019-10-23 23:35:32'),
(3, 'Gasista', 'icon/gasista.jpg', 1, 1, '2019-10-23 23:35:32', '2019-10-23 23:35:32'),
(4, 'Herrero/a', 'icon/herrero.jpg', 1, 1, '2019-10-23 23:35:32', '2019-10-23 23:35:32'),
(5, 'Plomero/a', 'icon/plomero.jpg', 1, 1, '2019-10-23 23:35:32', '2019-10-23 23:35:32'),
(6, 'Soldador/a', 'icon/soldador.jpg', 1, 1, '2019-10-23 23:35:32', '2019-10-23 23:35:32'),
(7, 'Técnico/a aire acondicionado', 'icon/acondicionado.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(8, 'Técnico/a de electrodomesticos', 'icon/electrodomesticos.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(9, 'Esteticista corporal', 'icon/estetica.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(10, 'Esteticista facial', 'icon/estetica.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(11, 'Manicura y depilador/a', 'icon/manicura.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(12, 'Maquillador/a', 'icon/maquilladora.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(13, 'Peluquero/a', 'icon/peluquera.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(14, 'Diseñador/a web y gráfico', 'icon/grafico.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(15, 'Técnico/a de PC', 'icon/pc.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(16, 'Bicicletero/a', 'icon/bicicleta.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(17, 'Diseño, costura, arreglos y otros', 'icon/costura.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(18, 'Marroquinero/a', 'icon/marroquinero.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(19, 'Realizador/a de video', 'icon/video.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(20, 'Sonidista', 'icon/sonidista.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(21, 'Catering, repostería y otros', 'icon/repostera.jpg', 1, 1, '2019-10-23 23:35:33', '2019-10-23 23:35:33'),
(22, 'Productos de Carpintería', 'icon/productos_carpinteria.jpg', 2, 1, '2019-10-25 20:59:42', '2019-10-25 20:59:42'),
(23, 'Productos de Herrería', 'icon/productos_herreria.jpg', 2, 1, '2019-10-25 20:59:43', '2019-10-25 20:59:43'),
(24, 'Artefactos para el hogar', 'icon/productos_hogar.jpg', 2, 1, '2019-10-25 20:59:43', '2019-10-25 20:59:43'),
(25, 'Productos Gráficos ', 'icon/productos_graficos.jpg', 2, 1, '2019-10-25 20:59:43', '2019-10-25 20:59:43'),
(26, 'Belleza y cuidados personales', 'icon/productos_belleza.jpg', 2, 1, '2019-10-25 20:59:43', '2019-10-25 20:59:43'),
(27, 'Indumentaria', 'icon/productos_indumentaria.jpg', 2, 1, '2019-10-25 20:59:43', '2019-10-25 20:59:43'),
(28, 'Gastronomía', 'icon/productos_gastronomía.jpg', 2, 1, '2019-10-25 20:59:43', '2019-10-25 20:59:43'),
(29, 'Alfarería / Cerámica', 'icon/productos_alfareria.jpg', 2, 1, '2019-10-25 20:59:43', '2019-10-25 20:59:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_tipo`
--

CREATE TABLE `categoria_tipo` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_tipo`
--

INSERT INTO `categoria_tipo` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Servicio', '2019-10-23 22:50:21', '2019-10-23 22:50:21'),
(2, 'Producto', '2019-10-23 22:50:21', '2019-10-23 22:50:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interactionhead`
--

CREATE TABLE `interactionhead` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publicacion_id` bigint(20) UNSIGNED NOT NULL,
  `subjet_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `interactionhead`
--

INSERT INTO `interactionhead` (`id`, `publicacion_id`, `subjet_id`, `date`, `name`, `last_name`, `email`, `mobile`, `hash`, `created_at`, `updated_at`) VALUES
(1, 47, 1, '2020-11-05 00:00:00', 'Diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', 'c4ca4238a0b923820dcc509a6f75849b', '2020-11-05 16:59:18', '2020-11-14 06:53:25'),
(2, 47, 1, '2020-11-05 15:06:02', 'Diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', 'c81e728d9d4c2f636f067f89cc14862c', '2020-11-05 18:06:02', '2020-11-14 06:53:25'),
(16, 45, 1, '2020-11-05 15:52:03', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', 'c74d97b01eae257e44aa9d5bade97baf', '2020-11-05 18:52:03', '2020-11-14 06:53:25'),
(17, 51, 5, '2020-11-05 18:01:34', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '70efdf2ec9b086079795c442636b55fb', '2020-11-05 21:01:34', '2020-11-14 06:53:25'),
(18, 51, 1, '2020-11-05 18:06:39', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '6f4922f45568161a8cdf4ad2299f6d23', '2020-11-05 21:06:39', '2020-11-14 06:53:25'),
(19, 51, 2, '2020-11-05 18:28:13', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '1f0e3dad99908345f7439f8ffabdffc4', '2020-11-05 21:28:13', '2020-11-14 06:53:25'),
(20, 51, 5, '2020-11-05 18:29:50', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '98f13708210194c475687be6106a3b84', '2020-11-05 21:29:50', '2020-11-14 06:53:25'),
(21, 47, 5, '2020-11-05 18:31:00', 'Diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '3c59dc048e8850243be8079a5c74d079', '2020-11-05 21:31:00', '2020-11-14 06:53:25'),
(22, 47, 2, '2020-11-05 18:32:02', 'Diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', 'b6d767d2f8ed5d21a44b0e5886680cb9', '2020-11-05 21:32:02', '2020-11-14 06:53:25'),
(23, 47, 2, '2020-11-05 18:32:47', 'Diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '37693cfc748049e45d87b8c7d8b9aacd', '2020-11-05 21:32:47', '2020-11-14 06:53:25'),
(24, 47, 1, '2020-11-05 18:33:30', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '1ff1de774005f8da13f42943881c655f', '2020-11-05 21:33:30', '2020-11-14 06:53:25'),
(25, 47, 1, '2020-11-05 18:34:31', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '8e296a067a37563370ded05f5a3bf3ec', '2020-11-05 21:34:31', '2020-11-14 06:53:25'),
(26, 47, 5, '2020-11-05 18:34:55', 'Diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '4e732ced3463d06de0ca9a15b6153677', '2020-11-05 21:34:55', '2020-11-14 06:53:25'),
(27, 47, 5, '2020-11-05 18:37:08', 'Diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '02e74f10e0327ad868d138f2b4fdd6f0', '2020-11-05 21:37:08', '2020-11-14 06:53:25'),
(28, 51, 2, '2020-11-06 01:59:40', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', '33e75ff09dd601bbe69f351039152189', '2020-11-06 04:59:40', '2020-11-14 06:53:26'),
(29, 51, 1, '2020-11-07 01:34:14', 'Juan', 'Ramon', 'diegofranciscorodriguez@gmail.com', '1144557788', '6ea9ab1baa0efb9e19094440c317e21b', '2020-11-07 04:34:14', '2020-11-14 06:53:26'),
(30, 51, 5, '2020-11-07 01:53:49', 'Juan', 'Perez', 'diegofranciscorodriguez@gmail.com', '1144557788', '34173cb38f07f89ddbebc2ac9128303f', '2020-11-07 04:53:49', '2020-11-14 06:53:26'),
(31, 51, 1, '2020-11-08 14:05:13', 'diego', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', 'c16a5320fa475530d9583c34fd356ef5', '2020-11-08 17:05:13', '2020-11-14 06:53:26'),
(32, 51, 2, '2020-11-08 14:06:27', 'Pepe', 'Mujica', 'diegofranciscorodriguez@gmail.com', '1144557788', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2020-11-08 17:06:27', '2020-11-14 06:53:26'),
(33, 51, 5, '2020-11-08 14:07:03', 'Rodolfo', 'Quiteros', 'diegofranciscorodriguez@gmail.com', '1144557788', '182be0c5cdcd5072bb1864cdee4d3d6e', '2020-11-08 17:07:03', '2020-11-14 06:53:26'),
(34, 51, 2, '2020-11-08 14:07:40', 'Hugo', 'Chavez', 'diegofranciscorodriguez@gmail.com', '1154799438', 'e369853df766fa44e1ed0ff613f563bd', '2020-11-08 17:07:40', '2020-11-14 06:53:26'),
(36, 51, 2, '2020-11-12 09:29:28', 'Miriam', 'Breckman', 'diegofranciscorodriguez@gmail.com', '1133445566', '19ca14e7ea6328a42e0eb13d585e4c22', '2020-11-12 12:29:28', '2020-11-14 06:53:26'),
(37, 51, 2, '2020-11-14 00:39:54', 'Paco', 'Rodriguez', 'diegofranciscorodriguez@gmail.com', '1154799438', 'a5bfc9e07964f8dddeb95fc584cd965d', '2020-11-14 03:39:54', '2020-11-14 06:53:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interactionimage`
--

CREATE TABLE `interactionimage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `interactionimage`
--

INSERT INTO `interactionimage` (`id`, `message_id`, `name`, `extension`, `size`, `url`, `created_at`, `updated_at`) VALUES
(7, 29, 'WhatsApp Image 2020-09-08 at 15.32.56.jpeg', 'jpeg', 108760, '29/mji4EH5DHHAcmRt3qZ8aibflQmNTOAKWn2TCOSDo.jpeg', '2020-11-07 04:34:14', '2020-11-07 04:34:14'),
(8, 30, 'WhatsApp Image 2020-09-08 at 15.34.37.jpeg', 'jpeg', 169140, '30/aN3Tj4bQzfTg6ee3mvRMKzCfqFZj6JVzAB2Xl9Op.jpeg', '2020-11-07 04:53:49', '2020-11-07 04:53:49'),
(9, 31, 'WhatsApp Image 2020-09-08 at 15.34.37.jpeg', 'jpeg', 169140, '31/uCIfiaQRc56ywsMf15DiETBYwNLf5ju50o9uzJT8.jpeg', '2020-11-08 17:05:13', '2020-11-08 17:05:13'),
(10, 39, 'WhatsApp Image 2020-09-08 at 15.31.35 (1).jpeg', 'jpeg', 119336, '39/RFzDXbBcjitf5b6HTnuULKaOz9A5xnXzL8WzFhOO.jpeg', '2020-11-08 19:49:17', '2020-11-08 19:49:17'),
(11, 63, 'tablero.jpeg', 'jpeg', 86021, '63/0BJblH2xn1rWLB9MJxwZSJNIlz2UBQGq7Ch4egRn.jpeg', '2020-11-09 02:21:43', '2020-11-09 02:21:43'),
(12, 64, 'WhatsApp Image 2020-09-08 at 15.31.35.jpeg', 'jpeg', 119336, '64/DDL99rZ7N2vhgOgsHFvBm9E1zyWxQNuUQ42FBQKD.jpeg', '2020-11-09 02:22:58', '2020-11-09 02:22:58'),
(13, 65, 'WhatsApp Image 2020-09-08 at 15.36.23.jpeg', 'jpeg', 140220, '65/flcdQWasw4qJuaiaAyOa0F3QoWEqA20iNWPul0C2.jpeg', '2020-11-09 02:25:10', '2020-11-09 02:25:10'),
(14, 88, 'lulu.jpeg', 'jpeg', 226446, '88/EPBnEMDU0ms9DZ3j2IsZ6uvZ3A3Il7lGY301aT91.jpeg', '2020-11-16 02:20:34', '2020-11-16 02:20:34'),
(15, 88, 'luluyEmi.jpeg', 'jpeg', 147089, '88/7i59LqJmWgU3bnJXHZygFyqQxZb5UvMCKK6Sliku.jpeg', '2020-11-16 02:20:34', '2020-11-16 02:20:34'),
(16, 89, 'lulu0.jpeg', 'jpeg', 206276, '89/NUfz2T7PrXUyXOIiL5lKcdt0UA4A9rwaYF3X8UTJ.jpeg', '2020-11-16 02:22:12', '2020-11-16 02:22:12'),
(17, 90, 'lulu.jpeg', 'jpeg', 226446, '90/tXO6AGimnEvx5UckcQhbStsuQ7CV6sofNFthoYRH.jpeg', '2020-11-16 02:25:37', '2020-11-16 02:25:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interactionmessage`
--

CREATE TABLE `interactionmessage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `head_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) DEFAULT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `interactionmessage`
--

INSERT INTO `interactionmessage` (`id`, `head_id`, `date`, `message`, `read`, `is_reply`, `hash`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-05 00:00:00', 'Este es el primer mensaje de prueba de interaccion sin archivo', '0', 0, 'c4ca4238a0b923820dcc509a6f75849b', '2020-11-05 16:59:18', '2020-11-14 06:53:26'),
(2, 2, '2020-11-05 15:06:02', 'Este es el segundo mensaje de prueba de interaccion sin archivo', '0', 0, 'c81e728d9d4c2f636f067f89cc14862c', '2020-11-05 18:06:02', '2020-11-14 06:53:26'),
(16, 16, '2020-11-05 15:52:03', 'Mensaje de prueba con archivo para probar el nombre de los archivos', '1', 0, 'c74d97b01eae257e44aa9d5bade97baf', '2020-11-05 18:52:03', '2020-11-16 05:31:45'),
(17, 17, '2020-11-05 18:01:34', 'mensaje con aviso', '1', 0, '70efdf2ec9b086079795c442636b55fb', '2020-11-05 21:01:34', '2020-11-14 06:56:28'),
(18, 18, '2020-11-05 18:06:39', 'mensaje con interaccion', '1', 0, '6f4922f45568161a8cdf4ad2299f6d23', '2020-11-05 21:06:39', '2020-11-14 06:56:37'),
(19, 19, '2020-11-05 18:28:13', 'mensaje', '1', 0, '1f0e3dad99908345f7439f8ffabdffc4', '2020-11-05 21:28:13', '2020-11-14 06:53:26'),
(20, 20, '2020-11-05 18:29:50', 'Mensaje de prueba con aviso por mail', '0', 0, '98f13708210194c475687be6106a3b84', '2020-11-05 21:29:50', '2020-11-14 06:53:26'),
(21, 21, '2020-11-05 18:31:00', 'Mensaje de prueba con mail incoporado', '0', 0, '3c59dc048e8850243be8079a5c74d079', '2020-11-05 21:31:00', '2020-11-14 06:53:26'),
(22, 22, '2020-11-05 18:32:02', 'mensaje de prueba', '0', 0, 'b6d767d2f8ed5d21a44b0e5886680cb9', '2020-11-05 21:32:02', '2020-11-14 06:53:26'),
(23, 23, '2020-11-05 18:32:47', 'mensaje de prueba', '0', 0, '37693cfc748049e45d87b8c7d8b9aacd', '2020-11-05 21:32:47', '2020-11-14 06:53:26'),
(24, 24, '2020-11-05 18:33:30', 'mensaje de prueba', '0', 0, '1ff1de774005f8da13f42943881c655f', '2020-11-05 21:33:30', '2020-11-14 06:53:26'),
(25, 25, '2020-11-05 18:34:31', 'mensaje de prueba', '0', 0, '8e296a067a37563370ded05f5a3bf3ec', '2020-11-05 21:34:31', '2020-11-14 06:53:26'),
(26, 26, '2020-11-05 18:34:55', 'prueba prueba prueba prueba prueba prueba prueba', '0', 0, '4e732ced3463d06de0ca9a15b6153677', '2020-11-05 21:34:55', '2020-11-14 06:53:26'),
(27, 27, '2020-11-05 18:37:08', 'prueba prueba prueba prueba prueba prueba prueba', '0', 0, '02e74f10e0327ad868d138f2b4fdd6f0', '2020-11-05 21:37:08', '2020-11-14 06:53:26'),
(28, 28, '2020-11-06 01:59:40', 'Mensaje de prueba', '1', 0, '33e75ff09dd601bbe69f351039152189', '2020-11-06 04:59:40', '2020-11-14 06:53:26'),
(29, 29, '2020-11-07 01:34:14', 'Queria saber si hacen una casa así. Archivo adjunto', '1', 0, '6ea9ab1baa0efb9e19094440c317e21b', '2020-11-07 04:34:14', '2020-11-14 06:53:26'),
(30, 30, '2020-11-07 01:53:49', 'quería saber si hace este tipo de casas, adjunto imagen.', '1', 0, '34173cb38f07f89ddbebc2ac9128303f', '2020-11-07 04:53:49', '2020-11-14 06:53:26'),
(31, 31, '2020-11-08 14:05:13', 'Podes termiar paredes como la de la foto?', '0', 0, 'c16a5320fa475530d9583c34fd356ef5', '2020-11-08 17:05:13', '2020-11-14 06:53:26'),
(32, 32, '2020-11-08 14:06:27', 'Solo es un mensaje de prueba para llegar a la paginación', '1', 0, '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2020-11-08 17:06:27', '2020-11-14 06:53:26'),
(33, 33, '2020-11-08 14:07:03', 'Coneste mensaje llego a 10. El próximo va a otra hoya!', '1', 0, '182be0c5cdcd5072bb1864cdee4d3d6e', '2020-11-08 17:07:03', '2020-11-14 07:31:36'),
(34, 34, '2020-11-08 14:07:40', 'Podes recontruir el país? Este es la consultar 11!! vamos a ver la paginación!', '1', 0, 'e369853df766fa44e1ed0ff613f563bd', '2020-11-08 17:07:40', '2020-11-16 05:32:56'),
(35, 34, '2020-11-08 16:46:06', 'Anda la paginación y vamos a recontruir el país!', '1', 1, '1c383cd30b7c298ab50293adfecb7b18', '2020-11-08 19:46:06', '2020-11-16 05:32:56'),
(36, 34, '2020-11-08 16:46:29', 'Anda la paginación y vamos a recontruir el país!', '1', 1, '19ca14e7ea6328a42e0eb13d585e4c22', '2020-11-08 19:46:29', '2020-11-16 05:32:56'),
(37, 34, '2020-11-08 16:47:04', 'Respuesta 3', '1', 1, 'a5bfc9e07964f8dddeb95fc584cd965d', '2020-11-08 19:47:04', '2020-11-16 05:32:56'),
(38, 34, '2020-11-08 16:48:57', 'Respuesta 4', '1', 1, 'a5771bce93e200c36f7cd9dfd0e5deaa', '2020-11-08 19:48:57', '2020-11-16 05:32:56'),
(39, 34, '2020-11-08 16:49:17', 'Repuesta 5 con imagen!!', '1', 1, 'd67d8ab4f4c10bf22aa353e27879133c', '2020-11-08 19:49:17', '2020-11-16 05:32:56'),
(40, 34, '2020-11-08 17:08:49', 'Respuesta 5 con notificación al cliente', '1', 1, 'd645920e395fedad7bbbed0eca3fe2e0', '2020-11-08 20:08:49', '2020-11-16 05:32:56'),
(41, 34, '2020-11-08 17:10:18', 'Yo digo: Respuesta 6 con notificación al cliente.', '1', 1, '3416a75f4cea9109507cacd8e2f2aefc', '2020-11-08 20:10:18', '2020-11-16 05:32:56'),
(42, 34, '2020-11-08 17:11:01', 'respuesta 8', '1', 1, 'a1d0c6e83f027327d8461063f4ac58a6', '2020-11-08 20:11:01', '2020-11-16 05:32:56'),
(43, 34, '2020-11-08 21:17:45', 'Respuesta 9', '1', 1, '17e62166fc8586dfa4d1bc0e1742c08b', '2020-11-09 00:17:45', '2020-11-16 05:32:56'),
(44, 34, '2020-11-08 21:19:08', 'Respuesta 9', '1', 1, 'f7177163c833dff4b38fc8d2872f1ec6', '2020-11-09 00:19:08', '2020-11-16 05:32:56'),
(45, 34, '2020-11-08 21:20:38', 'Respuesta 9', '1', 1, '6c8349cc7260ae62e3b1396831a8398f', '2020-11-09 00:20:38', '2020-11-16 05:32:57'),
(46, 33, '2020-11-08 21:21:47', 'Hola! quintero! va la respuesta.', '1', 1, 'd9d4f495e875a2e075a1a4a6e1b9770f', '2020-11-09 00:21:47', '2020-11-14 07:31:36'),
(47, 33, '2020-11-08 21:24:14', 'Perdón me olvide de aclarar', '1', 1, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '2020-11-09 00:24:14', '2020-11-14 07:31:36'),
(48, 33, '2020-11-08 21:24:38', 'Perdón me olvide de aclarar', '1', 1, '642e92efb79421734881b53e1e1b18b6', '2020-11-09 00:24:38', '2020-11-14 07:31:36'),
(49, 32, '2020-11-08 21:45:44', 'Esta es una respueta de prueba! tiene que llegar', '1', 1, 'f457c545a9ded88f18ecee47145a72c0', '2020-11-09 00:45:44', '2020-11-14 06:53:26'),
(50, 31, '2020-11-08 21:51:39', 'Voy a ver como llega esta', '0', 1, 'c0c7c76d30bd3dcaefc96f40275bdc0a', '2020-11-09 00:51:39', '2020-11-14 06:53:26'),
(51, 31, '2020-11-08 21:52:43', 'otra mensaje de prueba', '0', 1, '2838023a778dfaecdc212708f721b788', '2020-11-09 00:52:43', '2020-11-14 06:53:26'),
(52, 31, '2020-11-08 22:38:50', 'Una prueba más', '0', 1, '9a1158154dfa42caddbd0694a4e9bdc8', '2020-11-09 01:38:50', '2020-11-14 06:53:26'),
(53, 31, '2020-11-08 22:56:12', 'Soy el cliente y voy a ver si llega la respuesta!', '0', 0, 'd82c8d1619ad8176d665453cfb2e55f0', '2020-11-09 01:56:12', '2020-11-14 06:53:26'),
(54, 31, '2020-11-08 22:58:25', 'Otra respuesta para ver si llega el mail', '0', 0, 'a684eceee76fc522773286a895bc8436', '2020-11-09 01:58:25', '2020-11-14 06:53:26'),
(55, 31, '2020-11-08 22:59:29', 'Otra respuesta para ver si llega el mail', '0', 0, 'b53b3a3d6ab90ce0268229151c9bde11', '2020-11-09 01:59:29', '2020-11-14 06:53:26'),
(56, 31, '2020-11-08 23:01:11', 'la respuesta me llego bien! gracias1', '0', 1, '9f61408e3afb633e50cdf1b20de6f466', '2020-11-09 02:01:11', '2020-11-14 06:53:26'),
(57, 31, '2020-11-08 23:06:18', 'va respuesta de cliente', '0', 0, '72b32a1f754ba1c09b3695e0cb6cde7f', '2020-11-09 02:06:18', '2020-11-14 06:53:26'),
(58, 31, '2020-11-08 23:15:19', 'prueba', '0', 0, '66f041e16a60928b05a7e228a89c3799', '2020-11-09 02:15:19', '2020-11-14 06:53:26'),
(59, 31, '2020-11-08 23:16:11', 'otra', '0', 0, '093f65e080a295f8076b1c5722a46aa2', '2020-11-09 02:16:11', '2020-11-14 06:53:26'),
(60, 31, '2020-11-08 23:17:10', 'una más!!', '0', 0, '072b030ba126b2f4b2374f342be9ed44', '2020-11-09 02:17:10', '2020-11-14 06:53:26'),
(61, 31, '2020-11-08 23:17:25', 'otra con archivo', '0', 0, '7f39f8317fbdb1988ef4c628eba02591', '2020-11-09 02:17:25', '2020-11-14 06:53:26'),
(62, 31, '2020-11-08 23:19:54', 'una más otra vez!', '0', 0, '44f683a84163b3523afe57c2e008bc8c', '2020-11-09 02:19:54', '2020-11-14 06:53:26'),
(63, 31, '2020-11-08 23:21:43', 'otra archivo para ver si lo logra!', '0', 0, '03afdbd66e7929b125f8597834fa83a4', '2020-11-09 02:21:43', '2020-11-14 06:53:26'),
(64, 31, '2020-11-08 23:22:58', 'Otra prueba con archivo!!', '0', 0, 'ea5d2f1c4608232e07d3aa3d998e5135', '2020-11-09 02:22:58', '2020-11-14 06:53:26'),
(65, 31, '2020-11-08 23:25:10', 'Ultima imagen y me quedo tranquilo!!', '0', 0, 'fc490ca45c00b1249bbe3554a4fdf6fb', '2020-11-09 02:25:10', '2020-11-14 06:53:26'),
(66, 30, '2020-11-09 17:37:57', 'Respueta!', '1', 1, '3295c76acbf4caaed33c36b1b5fc2cb1', '2020-11-09 20:37:57', '2020-11-14 06:53:26'),
(67, 30, '2020-11-09 17:38:33', 'Llego perfecto!', '1', 0, '735b90b4568125ed6c3f678819b6e058', '2020-11-09 20:38:33', '2020-11-14 06:53:26'),
(68, 18, '2020-11-11 23:28:07', 'Hola! respuesta', '1', 1, 'a3f390d88e4c41f2747bfa2f1b5f87db', '2020-11-12 02:28:07', '2020-11-14 06:56:37'),
(69, 18, '2020-11-11 23:29:03', 'Gracias por responder', '1', 0, '14bfa6bb14875e45bba028a21ed38046', '2020-11-12 02:29:03', '2020-11-14 06:56:37'),
(71, 16, '2020-11-12 09:23:29', 'Acá va la respuesta para ver si general el hash', '1', 1, 'e2c420d928d4bf8ce0ff2ec19b371514', '2020-11-12 12:23:29', '2020-11-16 05:31:45'),
(72, 16, '2020-11-12 09:27:21', 'Llego perfecto y se genero el hash, ahora voy a ver si se genera el hash en mi respuesta', '1', 0, '32bb90e8976aab5298d5da10fe66f21d', '2020-11-12 12:27:21', '2020-11-16 05:31:45'),
(73, 36, '2020-11-12 09:29:28', 'Consulta para ver si se genera el hash de mensaje cuando se crea.', '1', 0, 'd2ddea18f00665ce8623e36bd4e3c7c5', '2020-11-12 12:29:28', '2020-11-16 05:10:57'),
(74, 16, '2020-11-12 10:49:04', 'va otra respuesta', '1', 1, 'ad61ab143223efbc24c7d2583be69251', '2020-11-12 13:49:04', '2020-11-16 05:31:45'),
(75, 16, '2020-11-12 11:16:20', 'Respuesta para probar hash', '1', 1, 'd09bf41544a3365a46c9077ebb5e35c3', '2020-11-12 14:16:20', '2020-11-16 05:31:45'),
(76, 16, '2020-11-12 11:21:38', 'Respuesta hash 2', '1', 1, 'fbd7939d674997cdb4692d34de8633c4', '2020-11-12 14:21:38', '2020-11-16 05:31:45'),
(77, 16, '2020-11-12 11:30:23', 'hash 3', '1', 1, '28dd2c7955ce926456240b2ff0100bde', '2020-11-12 14:30:23', '2020-11-16 05:31:45'),
(78, 34, '2020-11-12 13:34:21', 'con url con hash!!', '1', 1, '35f4a8d465e6e1edc05f3d8ab658c551', '2020-11-12 16:34:21', '2020-11-16 05:32:57'),
(79, 34, '2020-11-12 13:36:30', 'llegan perfecto ahora los mensajes!!', '1', 0, 'd1fe173d08e959397adf34b1d77e88d7', '2020-11-12 16:36:30', '2020-11-16 05:32:57'),
(80, 28, '2020-11-12 14:12:26', 'Escribo una respuesta de prueba', '1', 1, 'f033ab37c30201f73f142449d037028d', '2020-11-12 17:12:26', '2020-11-14 06:53:26'),
(81, 28, '2020-11-12 14:20:59', 'Acá va otra respuesta!', '1', 1, '43ec517d68b6edd3015b3edc9a11367b', '2020-11-12 17:20:59', '2020-11-14 06:53:26'),
(82, 28, '2020-11-12 14:49:04', 'Respuesta probando avisos', '1', 0, '9778d5d219c5080b9a6a17bef029331c', '2020-11-12 17:49:04', '2020-11-14 06:53:26'),
(83, 28, '2020-11-12 14:52:29', 'prueba  sdasd asd', '1', 0, 'fe9fc289c3ff0af142b6d3bead98a923', '2020-11-12 17:52:29', '2020-11-14 06:53:26'),
(84, 19, '2020-11-12 23:16:53', 'Ahora va la respuesta para saber  como sale la hora', '1', 1, '68d30a9594728bc39aa24be94b319d21', '2020-11-13 02:16:53', '2020-11-14 06:53:26'),
(85, 19, '2020-11-13 17:51:59', 'hola', '1', 1, '3ef815416f775098fe977004015c6193', '2020-11-13 20:51:59', '2020-11-14 06:53:26'),
(86, 37, '2020-11-14 00:39:54', 'consulta!', '1', 0, '93db85ed909c13838ff95ccfa94cebd9', '2020-11-14 03:39:54', '2020-11-16 22:43:22'),
(87, 17, '2020-11-14 00:56:14', 'mensaje exitoso!', '1', 1, 'c7e1249ffc03eb9ded908c236bd1996d', '2020-11-14 03:56:14', '2020-11-14 06:56:28'),
(88, 16, '2020-11-15 23:20:34', 'va la prueba', '1', 1, '2a38a4a9316c49e5a833517c45d31070', '2020-11-16 02:20:34', '2020-11-16 05:31:45'),
(89, 34, '2020-11-15 23:22:12', 'prueba', '1', 1, '7647966b7343c29048673252e490f736', '2020-11-16 02:22:12', '2020-11-16 05:32:57'),
(90, 34, '2020-11-15 23:25:37', 'otra imagen', '1', 1, '8613985ec49eb8f757ae6439e879bb2a', '2020-11-16 02:25:37', '2020-11-16 05:32:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interactionsubjet`
--

CREATE TABLE `interactionsubjet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `interactionsubjet`
--

INSERT INTO `interactionsubjet` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Consulta general', NULL, NULL),
(2, 'Pedir presupuesto', NULL, NULL),
(5, 'Programar visita', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_09_11_144452_create_user_cfp_table', 2),
(6, '2019_09_11_144605_create_user_type_table', 2),
(7, '2019_09_11_150000_create_user_profile_table', 2),
(8, '2019_09_13_183410_add_type_id_to_users', 3),
(11, '2019_09_15_225333_add_last_name_to_users', 4),
(12, '2019_09_16_170746_add_cfp_id_to_users', 5),
(13, '2019_09_30_153407_add_avatar_to_users', 6),
(14, '2019_09_30_205808_delete_photo_to_user_profile', 7),
(15, '2019_10_02_204455_add_active_to_users', 8),
(17, '2019_10_18_125508_create_zonas_table', 9),
(18, '2019_10_18_130457_create_user_zonas_table', 10),
(19, '2019_10_23_193817_create_categoria_tipo_table', 11),
(20, '2019_10_23_195642_create_categoria_table', 12),
(24, '2020_02_12_135046_create_titulos_table', 13),
(25, '2020_02_18_194809_create_publicacion_table', 13),
(26, '2020_02_19_132956_create_publicacion_user_table', 14),
(28, '2019_10_18_130457_create_users_zonas_table', 15),
(30, '2020_03_24_184151_create_publicacion_image_table', 16),
(31, '2020_10_30_194846_add_active_to_user_type', 17),
(32, '2020_10_30_200918_add_active_to_user_cfp', 18),
(33, '2020_11_04_234355_create_interactionsubjet_table', 19),
(34, '2020_11_04_234443_create_interactionhead_table', 19),
(35, '2020_11_04_234906_create_interactionmessage_table', 20),
(36, '2020_11_05_033231_create_interactionimage_table', 21),
(37, '2020_11_10_023100_add_dni_to_users', 22),
(38, '2020_11_10_172219_add_read_to_interactionmessage', 23),
(39, '2020_11_12_112742_add_hash_to_users', 24),
(40, '2020_11_12_113218_add_hash_to_publicacion', 25),
(41, '2020_11_12_113633_add_hash_to_interactionmessage', 26),
(42, '2020_11_13_195114_create_publicacion_titulo_table', 27),
(43, '2020_11_16_172202_update_publicacion_user_table', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('paco@mail.com', '$2y$10$fgvvenUgj2SIWB0pis7xTu3wB7mz6DjkocYFXtrXQ2l4/JE/SSEiu', '2019-10-02 23:14:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `view` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `aprobado` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `description`, `titulo_id`, `categoria_id`, `view`, `aprobado`, `hash`, `active`, `created_at`, `updated_at`) VALUES
(45, 'Reparación de instalación, artefactos de iluminación, tlecas, enchufes. Detección de fugas y cortos, etc.', 32, 2, 60, 1, '6c8349cc7260ae62e3b1396831a8398f', 1, '2020-06-24 18:05:13', '2020-11-16 05:34:51'),
(46, 'Herrería de obra y artística', 38, 4, 2, 1, 'd9d4f495e875a2e075a1a4a6e1b9770f', 1, '2020-08-04 16:45:52', '2020-11-19 00:22:39'),
(47, 'peluquero', 27, 13, 101, 1, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', 1, '2020-10-27 21:31:52', '2020-11-18 22:16:20'),
(51, 'Hago muebles a medida. Reparro muebles de estilo,', 37, 1, 30, 0, '2838023a778dfaecdc212708f721b788', 1, '2020-10-30 05:12:37', '2020-11-18 20:31:11'),
(52, 'Reparo cañerias cloacales, desagues. agua fria y caliente. Instalación de sanitarios. Tanques de agua. Canillas, bachas. etc.', 39, 5, 1, 1, '9a1158154dfa42caddbd0694a4e9bdc8', 1, '2020-10-31 15:44:25', '2020-11-16 21:53:21'),
(54, 'Reparo computadoras de escriborio, notebook, netbook, tables. Se reemplaza hardware, se actualizan, se realiza backup. Todo lo que necestias para que tu computadora funcione bien', 72, 15, 0, 1, 'a684eceee76fc522773286a895bc8436', 1, '2020-11-11 23:55:08', '2020-11-17 17:57:43'),
(55, 'Redes infomática y reparación de computadoras', 18, 15, 0, 1, 'b53b3a3d6ab90ce0268229151c9bde11', 1, '2020-11-12 00:37:21', '2020-11-18 22:59:28'),
(56, 'Front end y maquetado de páginas web', 78, 14, 0, 1, '9f61408e3afb633e50cdf1b20de6f466', 1, '2020-11-12 00:40:53', '2020-11-18 20:25:20'),
(58, 'Maquillaje profesional', 5, 10, 0, 1, '66f041e16a60928b05a7e228a89c3799', 1, '2020-11-12 15:20:02', '2020-11-18 20:25:29'),
(60, 'Peluquero con experiencia!', 14, 13, 0, 1, '072b030ba126b2f4b2374f342be9ed44', 0, '2020-11-12 21:47:55', '2020-11-17 17:54:56'),
(65, 'cocina internacional', 26, 21, 1, 1, 'fc490ca45c00b1249bbe3554a4fdf6fb', 1, '2020-11-18 03:00:10', '2020-11-18 03:01:18'),
(67, 'comida', 25, 21, 0, 0, '735b90b4568125ed6c3f678819b6e058', 1, '2020-11-19 23:51:12', '2020-11-19 23:51:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_image`
--

CREATE TABLE `publicacion_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publicacion_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion_image`
--

INSERT INTO `publicacion_image` (`id`, `publicacion_id`, `name`, `extension`, `size`, `url`, `created_at`, `updated_at`) VALUES
(19, 45, NULL, 'png', 173615, '45/S8ETIubiLfwiv07kVM9MzzgSBrvHd69ktKlxVmSe.png', '2020-06-24 18:05:13', '2020-06-24 18:05:13'),
(27, 51, NULL, 'jpeg', 10430, '51/fc3hHdYWKS89MlB0AlUSmQgEKPVRbFVDYAb46wic.jpeg', '2020-10-30 05:12:37', '2020-10-30 05:12:37'),
(28, 51, NULL, 'jpeg', 30679, '51/f5j3ab7oRR5yd9DLiJmWx1apRmXWXZIpL2CJneGr.jpeg', '2020-10-30 05:12:37', '2020-10-30 05:12:37'),
(29, 52, NULL, 'gif', 24984, '52/0kegiZgW2Bg2ZeX0Xputrfoy2WTV842GW5KmDv96.gif', '2020-10-31 15:44:25', '2020-10-31 15:44:25'),
(32, 54, NULL, 'jpeg', 119336, '54/tNqxzHxcqUXTvR4thQZGMg99GWRMPnpkmfZt2nTB.jpeg', '2020-11-11 23:55:08', '2020-11-11 23:55:08'),
(33, 54, NULL, 'jpeg', 108760, '54/kwxSMZ3soLmXEfXN9eSXhjVmw9ysH9Yf2ubIAwyw.jpeg', '2020-11-11 23:55:08', '2020-11-11 23:55:08'),
(34, 54, NULL, 'jpeg', 169140, '54/bHonUpvasB0K0NNc1j8oCLPaBYCaxZujBgNfxD4E.jpeg', '2020-11-11 23:55:08', '2020-11-11 23:55:08'),
(35, 55, NULL, 'jpeg', 140220, '55/IzPkj46Ko4Iduu3bDdkMVEbEvBbrBNfZEWPzWibo.jpeg', '2020-11-12 00:37:21', '2020-11-12 00:37:21'),
(36, 56, NULL, 'jpeg', 59557, '56/aKHHfMn5Gw6KrNUtNAqyuoaArPpoArDRZuwUCoJe.jpeg', '2020-11-12 00:40:53', '2020-11-12 00:40:53'),
(37, 56, NULL, 'jpeg', 74686, '56/0d8IDecbnM4TjIvAavYL2OlNjVxC2qCSZFfzfxdA.jpeg', '2020-11-12 00:40:53', '2020-11-12 00:40:53'),
(38, 58, NULL, 'jpeg', 618031, '58/hwVEgorIKLzaCqFzCLOtKirhKU18Ln4w3ithiEq5.jpeg', '2020-11-12 15:20:02', '2020-11-12 15:20:02'),
(39, 58, NULL, 'jpeg', 990592, '58/Ewi1rM0Z8DFyfGxL3Yqdus2g0ncBL8t3g4NsBKux.jpeg', '2020-11-12 15:20:02', '2020-11-12 15:20:02'),
(41, 60, NULL, 'jpeg', 164687, '60/RLjZSjIiRBPeTWemV22dkr2zGZtG8EKHuT2KFXta.jpeg', '2020-11-12 21:47:55', '2020-11-12 21:47:55'),
(42, 52, NULL, 'jpeg', 81277, '52/QTySKdmzIbSYDxjHzW6voITY9vWQKN4YIkqHnt7C.jpeg', '2020-11-14 07:29:16', '2020-11-14 07:29:16'),
(48, 60, NULL, 'jpeg', 97912, '60/Thqi727C3cTBsJL4GtEH5IAZcouJuGTgcgYvLgHu.jpeg', '2020-11-16 05:04:45', '2020-11-16 05:04:45'),
(49, 60, NULL, 'jpeg', 110181, '60/FtQgx77q0UvAaVKBiv7104KW2oIMLXyruQj4a4xK.jpeg', '2020-11-16 05:04:45', '2020-11-16 05:04:45'),
(50, 65, NULL, 'png', 46779, '65/hokEPJPNAzPUODSi8pWgM5TMYFaijqpPHiQXbXSl.png', '2020-11-18 03:00:10', '2020-11-18 03:00:10'),
(52, 67, NULL, 'jpeg', 10181, '67/PUMkCWGDpf3E0JwvaaJzqRLXgAZtvXIaxMMYxcbF.jpeg', '2020-11-19 23:51:12', '2020-11-19 23:51:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_titulo`
--

CREATE TABLE `publicacion_titulo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publicacion_id` bigint(20) UNSIGNED NOT NULL,
  `titulo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion_titulo`
--

INSERT INTO `publicacion_titulo` (`id`, `publicacion_id`, `titulo_id`, `created_at`, `updated_at`) VALUES
(6, 51, 62, '2020-11-15 02:57:33', '2020-11-15 02:57:33'),
(7, 52, 15, '2020-11-16 22:02:37', '2020-11-16 22:02:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_user`
--

CREATE TABLE `publicacion_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `publicacion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion_user`
--

INSERT INTO `publicacion_user` (`id`, `publicacion_id`, `user_id`, `created_at`, `updated_at`) VALUES
(42, 45, 22, NULL, NULL),
(43, 46, 1, NULL, NULL),
(44, 47, 1, NULL, NULL),
(48, 51, 22, NULL, NULL),
(49, 52, 22, NULL, NULL),
(51, 54, 12, NULL, NULL),
(52, 55, 13, NULL, NULL),
(53, 56, 13, NULL, NULL),
(54, 58, 28, NULL, NULL),
(56, 60, 22, NULL, NULL),
(60, 65, 32, NULL, NULL),
(62, 67, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo`
--

CREATE TABLE `titulo` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `titulo`
--

INSERT INTO `titulo` (`id`, `name`, `description`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Diseño asistido por computadora I (Autocad)', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(2, 'Peluquería de damas', '', 13, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(3, 'Perfeccionamiento en peluquería', '', 13, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(4, 'Colorimetría', '', 13, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(5, 'Estética facial', '', 10, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(6, 'Estètica corporal', '', 9, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(7, 'Maquillaje social', '', 10, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(8, 'Tècnicas de drenaje linfático manual corporal	', '', 9, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(9, 'Especialista en tratamientos estèticos corporales', '', 9, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(10, 'Reparador de electrodomésticos', '', 8, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(11, 'Soldadura por arco eléctrico', '', 6, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(12, 'Panificación I', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(13, 'Ayudante de cocina I	', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(14, 'Asistente colorista de peluquería', '', 13, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(15, 'Tecnología de las instalaciones sanitarias', '', 5, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(16, 'Tecnología de las instalaciones a gas', '', 3, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(17, 'Auxiliar mecánico de bicicletas', '', 16, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(18, 'Reparador de computadoras personales	', '', 15, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(19, 'Panadero', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(20, 'Pastelero', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(21, 'Marroquinería I', '', 18, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(22, 'Marroquinería II', '', 18, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(23, 'Ayudante de peluquería', '', 13, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(24, 'Circuitos eléctricos y mediciones', '', 2, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(25, 'Cocina básica I', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(26, 'Cocinero', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(27, 'Corte de caballeros', '', 13, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(28, 'Decoración artesanal de tortas módulo I', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(29, 'Decoración artesanal de tortas módulo II', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(30, 'Depilación y manicuría', '', 9, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(31, 'Elaboración de pastelería', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(32, 'Electricista domiciliario', '', 2, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(33, 'Electricista en inmuebles', '', 2, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(34, 'Instalador y soporte de sistemas de información', '', 15, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(35, 'Introducción a la instalación y mantenimiento de sistemas en red', '', 15, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(36, 'Corte y confección', '', 17, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(37, 'Carpintero de banco', '', 1, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(38, 'Herreria de obra	', '', 4, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(39, 'Plomero reparador', '', 5, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(40, 'Electricista instalador	', '', 2, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(41, 'Gasista instalador de 2° y 3° categoría', '', 3, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(42, 'Mecánico instalador de sistemas compactos y divididos de aire acondicionado', '', 7, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(43, 'Mecánico reparador de sistemas compactos y divididos de aire acondicionado', '', 7, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(44, 'Edición de video digital (Premiere)', '', 19, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(45, 'Elaboración de productos multimediales I (Flash)', '', 19, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(46, 'Elaboración de productos multimediales II (After Effects - Flash)', '', 19, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(47, 'Operador de sonido I (para cine, radio y tv)', '', 20, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(48, 'Operador de sonido II (para cine, radio y tv)	', '', 20, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(49, 'Edición de audio digital I (mezcla y grabación para producción musical)', '', 20, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(50, 'Edición de audio digital II (mezcla y grabación para producción musical)', '', 20, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(51, 'Edición de audio digital I (Audition)', '', 20, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(52, 'Electricista industrial', '', 2, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(53, 'Maquillaje profesionalPeluquero ambos sexos', '', 10, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(54, 'Montador electricista domiciliario', '', 2, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(55, 'Montaje de instalaciones domiciliarias a gas', '', 3, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(56, 'Montaje de instalaciones eléctricas', '', 2, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(57, 'Peluquero ambos sexos', '', 13, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(58, 'Preparación básica de panadería', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(59, 'Preparación básica de pastelería', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(60, 'Realizador de tv on-line', '', 19, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(61, 'Reparación de artefactos a gas e instalación de sistemas de calefacción', '', 3, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(62, 'Carpintero maquinísta', '', 1, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(63, 'Reparador básico de heladeras familiares', '', 8, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(64, 'Repostero/a (Básico y Calificado)', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(65, 'Buffet frio/caliente', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(66, 'Cocina de pueblos originarios I', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(67, 'Cocina de pueblos originarios II', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(68, 'Ayudante de cocina II', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(69, 'Panificación II', '', 21, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(70, 'Diseño asistido por computadora II (Autocad)', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(71, 'Herrería artística', '', 4, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(72, 'Reparación de PC / Administración de redes', '', 15, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(73, 'Diseño gráfico asistido por computadora (Corel Draw)', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(74, 'Diseño gráfico e ilustración digital (Illustrator)', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(75, 'Herramientas informáticas para autoedición (InDesign)', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(76, 'Taller de introducción a la comunicación visual', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(77, 'Diseño de página web I (Dreamweaver)', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(78, 'Diseño de página web II (Dreamweaver)', '', 14, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(79, 'Realización de videos de eventos sociales', '', 19, '2020-02-19 16:02:45', '2020-02-19 16:02:45'),
(80, 'Indumentaria y elementos de crianza para el bebé', '', 17, '2020-02-19 16:02:45', '2020-02-19 16:02:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'apellido',
  `dni` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT '1',
  `cfp_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `dni`, `avatar`, `email`, `email_verified_at`, `password`, `hash`, `remember_token`, `created_at`, `updated_at`, `type_id`, `cfp_id`, `active`) VALUES
(1, 'Paco', 'Rodriguez', '25129862', '1/lgctE5VVqnZAXSZl2tVYpIHZQl3nzxbPow4VFScT.jpeg', 'paco@mail.com', NULL, '$2y$10$HPRfI6Uf/IOzhLNOIh11NesocqBYplyi1sfJFF0BPy4Qp244sjeki', 'c4ca4238a0b923820dcc509a6f75849b', 'sBSZER1fJknyn6InxGFL9t5l6ODV73aDaGs9JSd6F5fnWK15JDcV8D22h5WO', '2019-08-30 18:09:51', '2020-11-18 22:53:24', 1, 13, 1),
(3, 'Paco3', 'apellido', '22555666', '/img/team/perfil_default.jpg', 'paco3@mail.com', NULL, '$2y$10$tNWBD6FEIA1iF.GSEND4AuZtuVmIDMXkJOjpLYbL2nNp02/KBT1wS', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', NULL, '2019-09-06 20:36:08', '2020-11-18 22:53:12', 1, 13, 1),
(4, 'Paco4', 'apellido', '27999333', '/img/team/perfil_default.jpg', 'paco4@mail.com', NULL, '$2y$10$uY4lMY4vxAkQY3cV62K92ejV1VU12Zu3ufWFUVjdG61wkq12fU.im', 'a87ff679a2f3e71d9181a67b7542122c', NULL, '2019-09-06 20:41:24', '2020-11-14 06:52:47', 1, 13, 1),
(6, 'Paco6', 'apellido', '30444777', '/img/team/perfil_default.jpg', 'paco6@mail.com', NULL, '$2y$10$K5LfCdS.I0aNGPthPIgEcOZb3X4/Cpzw5ZFmPw7HLzhQX6.XbBo0C', '1679091c5a880faf6fb5e6087eb1b2dc', NULL, '2019-09-06 22:34:58', '2020-11-14 06:52:47', 1, 13, 1),
(7, 'paco7', 'apellido', '20111222', '/img/team/perfil_default.jpg', 'paco7@mail.com', NULL, '$2y$10$tviY4F05j5zNqZtLuj0s4uw.fyZBI0TEfcoOT.JBZUfclEkboFTEG', '8f14e45fceea167a5a36dedd4bea2543', NULL, '2019-09-10 05:40:31', '2020-11-16 21:52:43', 1, 13, 0),
(8, 'Diego', 'apellido', '20222333', '/img/team/perfil_default.jpg', 'drodriguez@mail.com', NULL, '$2y$10$pg55eDut/9eGoKk7QW7o/ukHNWm92BonQ/j511SUaZ2ujJWA95LLe', 'c9f0f895fb98ab9159f51fd0297e236d', NULL, '2019-09-16 20:20:49', '2020-11-14 06:52:47', 1, 13, 1),
(9, 'paco8', 'apellido', '20444555', '/img/team/perfil_default.jpg', 'paco8@mail.com', NULL, '$2y$10$P/4BJ9d2AXeKqsJeLpwNh.8Q7yXnDaImjzqx9wlZ7faF7kEFQ5iVK', '45c48cce2e2d7fbdea1afc51c7c6ad26', NULL, '2019-09-16 20:26:57', '2020-11-14 06:52:47', 1, 13, 1),
(10, 'paco9', 'profesional', '20333444', '/img/team/perfil_default.jpg', 'paco9@mail.com', NULL, '$2y$10$vJlUR8BtT8nOmNRU4x5.fenYBd6EsAqpF2ldh9Yi.Kf.G0Ia7fVM2', 'd3d9446802a44259755d38e6d163e820', NULL, '2019-09-16 20:28:44', '2020-11-14 06:52:47', 1, 13, 1),
(11, 'paco10', 'Gonzalez', '20555666', '/img/team/perfil_default.jpg', 'paco10@mail.com', NULL, '$2y$10$hY7XoA3FRyO3B6hqHb4Xj.4hciBgJkfufUJvYa2X/Myp7DL2HutGq', '6512bd43d9caa6e02c990b0a82652dca', NULL, '2019-09-16 21:15:00', '2020-11-14 06:52:47', 1, 13, 1),
(12, 'paco12', 'Martin', '20666777', '12/ZMaU6sajBzW11XuNgI6lwH0GNpd9GJwuTYYje1jv.jpeg', 'paco12@mail.com', NULL, '$2y$10$ZMzFU75EfrnLwum7p0f3JeKBMThh56b5pXVSN2MOvLDtXBwD/FSCq', 'c20ad4d76fe97759aa27a0c99bff6710', NULL, '2019-09-17 16:52:13', '2020-11-14 06:52:47', 1, 13, 1),
(13, 'Paco13', 'Profesional', '20777888', '13/T7utcPgkR39UWMXpxXbi2A0gi01WpKtCycLAVhrl.jpeg', 'paco13@mail.com', NULL, '$2y$10$aYQ9i4iW3Qy6ssRBKJnug.VDNjwBaqWXFveevJ6KZexzBJZuovTH2', 'c51ce410c124a10e0db5e4b97fc2af39', NULL, '2019-09-30 21:11:50', '2020-11-14 06:52:47', 1, 13, 1),
(14, 'paco14', 'apellido', '20888999', 'storage/avatares/eH485TeQtohXmbMifsfKMaSX7TVBVR29OEJYFqhK.png', 'paco14@mail.com', NULL, '$2y$10$veklgodwMT2dDwklMS4MeO9TeUDwOqfmNP7.paKTnMX3t2/F.974S', 'aab3238922bcc25a6f606eb525ffdc56', NULL, '2019-09-30 23:10:40', '2020-11-14 06:52:47', 1, 11, 1),
(15, 'paco15', 'profesional', '21000111', '/img/team/perfil_default.jpg', 'paco15@mail.com', NULL, '$2y$10$HROOBpzIAovzwy8IYRAVke8BEamAHfT2gBnVgUxZB8gF1Av/EmxKS', '9bf31c7ff062936a96d3c8bd1f8f2ff3', NULL, '2019-09-30 23:29:56', '2020-11-16 21:52:53', 1, 13, 0),
(16, 'paco16', 'apellido', '21111222', '/img/team/perfil_default.jpg', 'paco16@mail.com', NULL, '$2y$10$g9P5/j81/nbZVhIBtrOIVOLF1Trp3aiLC/UlS7pm45SHHk6v8ZAE.', 'c74d97b01eae257e44aa9d5bade97baf', NULL, '2019-09-30 23:37:33', '2020-11-14 06:52:47', 1, 12, 1),
(17, 'Paco17', 'Apellido', '21222333', '/img/team/perfil_default.jpg', 'paco17@mail.com', NULL, '$2y$10$J8blokla4hTYhW2MdQpUO.HmtktAOzqbm3nhcNTkeVX.CAQzABmgu', '70efdf2ec9b086079795c442636b55fb', NULL, '2019-10-02 20:27:50', '2020-11-14 06:52:47', 1, 13, 1),
(18, 'paco18', 'Rodriguez', '21333444', '/img/team/perfil_default.jpg', 'paco18@mail.com', NULL, '$2y$10$/SRKys95SpgF0cLYwiIWOelncOj0910CVKey.XGZVCkO/JUOhaaNS', '6f4922f45568161a8cdf4ad2299f6d23', NULL, '2019-10-02 23:09:54', '2020-11-14 06:52:47', 1, 14, 1),
(19, 'paco19', 'Rdoriguez', NULL, 'storage/avatares/ZYRdFswWl65HV1Rh9eQzUxczuTGrXPls1o9QhhXZ.png', 'paco19@mail.com', NULL, '$2y$10$7heeUqL9btqXqneyq6YqK.NrGVWrr52bgmDQcVgqxpUMp6UdT7Hzm', '1f0e3dad99908345f7439f8ffabdffc4', NULL, '2019-10-03 00:23:00', '2020-11-14 06:52:47', 1, 13, 1),
(20, 'paco20', 'Rodriguez', NULL, 'storage/avatares/c9XQ9UpmzQhcL5csl31Kxa1siq0MpkAEMUWVdsdF.png', 'paco20@mail.com', NULL, '$2y$10$afqwffR96FuOLp7mI1oCcO7AaW9VlLmdn0sK8BbWrWWkHaeIgir06', '98f13708210194c475687be6106a3b84', NULL, '2019-10-03 15:35:35', '2020-11-14 06:52:47', 1, 8, 1),
(21, 'Paco21', 'Rodriguez', NULL, 'avatares/X5IFQ3VFofR7q1514bDZwSa1A0peZOk99zReRWhZ.png', 'paco21@mail.com', NULL, '$2y$10$sO7yB9YKjRoWwiwsGUr4WOA.6KcFqayXubS2nWZv7GJ4eseFV4BJm', '3c59dc048e8850243be8079a5c74d079', NULL, '2019-10-03 15:45:23', '2020-11-14 06:52:47', 1, 13, 1),
(22, 'Alfredo', 'Cornejo', NULL, '22/zyJ9mMsLnHsALYqQEw6axj2p95viDDnLWKNIYLbB.jpeg', 'paco@sna.org.ar', NULL, '$2y$10$vU2stISKQFt6m0BBhJEKC.05FH1uabkEtVJwvlwyxkTP5.mec1M0C', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'ENDmgpw4wfB2peftd6Wab4HBpHZsfxhiMfX1bIoh0jEGEbMCprchLZEOarEU', '2020-02-20 00:22:14', '2020-11-18 23:01:24', 1, 13, 1),
(23, 'paco2', 'Paco23', NULL, 'storage/avatares/wvwUocuLyKKv7skoLienE5Lyr9L2HxaXg5AaoQel.png', 'paco23@mail.com', NULL, '$2y$10$tpwwAPhakKkExtcmWYJ7AuasKryPchGOU6yUOHaxfFCbvGQsfNShS', '37693cfc748049e45d87b8c7d8b9aacd', NULL, '2020-02-22 00:04:05', '2020-11-14 06:52:47', 1, 13, 1),
(27, 'Diego', 'Rodriguez', NULL, '27/9mXsuRosn6ORx9JqB7G1mWkyoBp0WG5YoQNzuONK.jpeg', 'cefeperes@cfp24.com.ar', NULL, '$2y$10$Ged88tj8j/Dsj1VQTsvpdOXbSo.UfuF1Ofv2nCgiG/xewhq9MV5MG', '02e74f10e0327ad868d138f2b4fdd6f0', NULL, '2020-11-10 05:38:10', '2020-11-14 06:52:47', 4, 13, 1),
(28, 'Valeria', 'Quinteros', '22444555', '28/Mq2Wxr8DO0TTfbukKRO5uDPPkjkwrlzj3onFDf9L.jpeg', 'cfp36@cfp24.com.ar', NULL, '$2y$10$pO2Se.nG28v0a2xBl6QL..xzKSSKt2z.pUXcrIHV4C98XfLiBAP6K', '33e75ff09dd601bbe69f351039152189', NULL, '2020-11-12 15:10:30', '2020-11-14 06:52:47', 1, 14, 1),
(29, 'Pepe', 'Argento', '22558899', '29/cOriD6N657WLYvM0surGoLKi0kQ2G5zxvGMujDY7.jpeg', 'pepe@mail.com', NULL, '$2y$10$jEY7J4GxT4EGRRVzZFEB/.kbWdSw9UE3VOY0mS6KXv1q1zoNjs9uS', '6ea9ab1baa0efb9e19094440c317e21b', NULL, '2020-11-15 02:43:02', '2020-11-15 02:43:02', 1, 13, 1),
(30, 'prueba', 'prueba', '22333444', '30/XH4xjdvSbhbTQovsKnkOtT0K5Bd3gTY2DSUestdz.jpeg', 'prueba@mail.com', NULL, '$2y$10$xEp5bOp/wiv6qNrh0C1MhOhrQfOhLHtxVIipT/V06bSoMsL3zQM1i', '34173cb38f07f89ddbebc2ac9128303f', NULL, '2020-11-17 17:01:39', '2020-11-17 17:01:39', 1, 13, 1),
(31, 'Administrador', 'General', '00000000', '31/4W5roh2ylxpwRElt0h98dvDQdRgg7mqdzSKpfTlq.png', 'admin@cfp24.com.ar', NULL, '$2y$10$lLvRPjXv0xYXLcqvbzbYbu7pCN5JdgR5zJmNHzYSlnytRIkhYsexi', 'c16a5320fa475530d9583c34fd356ef5', NULL, '2020-11-17 23:53:32', '2020-11-17 23:53:32', 5, 13, 1),
(32, 'prueba2', 'prueba', '00000000', '32/FXES2qEYFLE6GKkE90QfTFjUsRF76Y7P0f2V0Lzp.png', 'prueba2@mail.com', NULL, '$2y$10$b3Jdb9mAP0FfDBwTmM1gVO5Nns4QMGM4I8bpk8WnhBjCuCMxAn6q6', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', NULL, '2020-11-18 02:46:20', '2020-11-18 02:46:20', 1, 13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_zonas`
--

CREATE TABLE `users_zonas` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `zona_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_cfp`
--

CREATE TABLE `user_cfp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_cfp`
--

INSERT INTO `user_cfp` (`id`, `name`, `email`, `active`, `created_at`, `updated_at`) VALUES
(8, 'CFP N°01', 'cefeperes01@cefeperes.com.ar', 1, '2019-09-13 20:19:03', '2019-09-13 20:19:03'),
(9, 'CFP N°04', 'cefeperes04@cefeperes.com.ar', 1, '2019-09-13 20:19:03', '2019-09-13 20:19:03'),
(10, 'CFP N°06', 'cefeperes06@cefeperes.com.ar', 1, '2019-09-13 20:19:03', '2019-09-13 20:19:03'),
(11, 'CFP N°07', 'cefeperes07@cefeperes.com.ar', 1, '2019-09-13 20:19:03', '2019-09-13 20:19:03'),
(12, 'CFP N°09', 'cefeperes09@cefeperes.com.ar', 1, '2019-09-13 20:19:03', '2019-09-13 20:19:03'),
(13, 'CFP N°24', 'cefeperes@cfp24.com.ar', 1, '2019-09-13 20:19:03', '2019-09-13 20:19:03'),
(14, 'CFP N°36', 'cefeperes36@cefeperes.com.ar', 1, '2019-09-13 20:19:03', '2019-09-13 20:19:03'),
(15, 'No corresponde', 'no-relay@mail.com\'', 0, '2019-10-02 03:00:00', '2019-10-02 03:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_profile`
--

CREATE TABLE `user_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `mobile`, `phone`, `twitter`, `facebook`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(4, 1, '1154799438', '4455667788', 'twitter_paco', 'face_paco', 'paco_instagram', 'paco_linkedin', '2019-09-18 21:10:26', '2020-02-19 19:29:27'),
(5, 9, '1155778899', '48335566', 'T_PACO8', 'f_PACO8', 'I_paco8', NULL, '2019-09-19 15:47:58', '2019-09-19 15:47:58'),
(6, 4, '1154799438', '45687878', 'twitter_paco4', 'facebook_paco4', 'instagram_paco4', 'linkedin_paco4', '2019-09-30 18:22:27', '2019-09-30 18:22:27'),
(8, 15, '1144557788', '44557788', 't_paco15', 'f_paco15', 'I_paco15', 'Lpaco15', '2019-10-01 01:47:13', '2019-10-01 01:47:13'),
(9, 17, '1144557788', '44557788', 'twitter', 'face_paco', 'I_paco17', 'Lpaco17', '2019-10-02 20:29:38', '2019-10-02 20:53:42'),
(10, 18, '1122334455', NULL, NULL, NULL, NULL, NULL, '2019-10-02 23:10:43', '2019-10-02 23:10:43'),
(11, 19, '1154799438', NULL, NULL, NULL, NULL, NULL, '2019-10-03 00:23:31', '2019-10-03 00:23:31'),
(12, 21, '1154799438', NULL, NULL, NULL, NULL, NULL, '2019-10-03 16:01:27', '2019-10-03 16:01:27'),
(13, 22, '1154799438', '45226644', 'TW_Paco', 'https://www.facebook.com/fc_paco', NULL, NULL, '2020-02-21 23:54:26', '2020-11-11 20:08:51'),
(14, 22, '1154799438', NULL, 'TW_Paco', 'https://www.facebook.com/FC_PAco', NULL, NULL, '2020-02-22 00:00:25', '2020-02-22 00:00:25'),
(15, 23, '1154799438', NULL, 'TW_Paco', NULL, NULL, NULL, '2020-02-22 00:10:00', '2020-02-22 00:10:00'),
(16, 25, '1154799438', NULL, NULL, NULL, NULL, NULL, '2020-11-04 21:33:43', '2020-11-04 21:33:43'),
(17, 11, '1144557788', '45226644', NULL, NULL, NULL, NULL, '2020-11-11 20:26:50', '2020-11-11 20:26:50'),
(18, 12, '11557788', '45667788', NULL, NULL, NULL, NULL, '2020-11-11 22:22:15', '2020-11-12 00:29:25'),
(19, 13, '11668877', '49014157', NULL, NULL, NULL, NULL, '2020-11-12 00:35:08', '2020-11-12 00:35:08'),
(20, 28, '1166778899', '49014157', NULL, NULL, NULL, NULL, '2020-11-12 15:11:26', '2020-11-12 15:11:26'),
(21, 29, '1154799438', '4558877', NULL, NULL, NULL, NULL, '2020-11-15 02:43:19', '2020-11-15 02:43:19'),
(22, 30, '115666777', NULL, NULL, NULL, NULL, NULL, '2020-11-17 17:01:56', '2020-11-17 17:01:56'),
(23, 32, '1155447788', NULL, NULL, NULL, NULL, NULL, '2020-11-18 02:56:03', '2020-11-18 02:56:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_type`
--

CREATE TABLE `user_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_type`
--

INSERT INTO `user_type` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Profesional', 1, '2019-09-13 20:42:58', '2019-09-13 20:42:58'),
(2, 'Cliente', 0, '2019-09-13 20:42:58', '2019-09-13 20:42:58'),
(3, 'Docente', 0, '2019-09-13 20:42:58', '2019-09-13 20:42:58'),
(4, 'Referente', 1, '2019-09-13 20:42:58', '2019-09-13 20:42:58'),
(5, 'Administrador', 0, '2020-11-17 03:00:00', '2020-11-17 03:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_zonas`
--

CREATE TABLE `user_zonas` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `zonas_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_zonas`
--

INSERT INTO `user_zonas` (`user_id`, `zonas_id`) VALUES
(23, 1),
(23, 2),
(23, 10),
(23, 11),
(23, 15),
(1, 10),
(1, 11),
(1, 13),
(1, 14),
(1, 16),
(25, 26),
(25, 28),
(25, 29),
(25, 31),
(25, 32),
(25, 34),
(25, 35),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(11, 15),
(11, 16),
(11, 17),
(11, 18),
(11, 19),
(11, 20),
(11, 21),
(11, 22),
(11, 23),
(11, 24),
(11, 25),
(11, 26),
(11, 27),
(11, 28),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(11, 33),
(11, 34),
(11, 35),
(11, 36),
(11, 37),
(11, 38),
(11, 39),
(11, 40),
(11, 41),
(11, 42),
(11, 43),
(11, 44),
(11, 45),
(11, 46),
(11, 47),
(11, 48),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 14),
(12, 15),
(12, 16),
(12, 17),
(12, 18),
(12, 19),
(12, 20),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(12, 25),
(12, 26),
(12, 27),
(12, 28),
(12, 29),
(12, 30),
(12, 31),
(12, 32),
(12, 33),
(12, 34),
(12, 35),
(12, 36),
(12, 37),
(12, 38),
(12, 39),
(12, 40),
(12, 41),
(12, 42),
(12, 43),
(12, 44),
(12, 45),
(12, 46),
(12, 47),
(12, 48),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32),
(13, 33),
(13, 34),
(13, 35),
(13, 36),
(13, 37),
(13, 38),
(13, 39),
(13, 40),
(13, 41),
(13, 42),
(13, 43),
(13, 44),
(13, 45),
(13, 46),
(13, 47),
(13, 48),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32),
(13, 33),
(13, 34),
(13, 35),
(13, 36),
(13, 37),
(13, 38),
(13, 39),
(13, 40),
(13, 41),
(13, 42),
(13, 43),
(13, 44),
(13, 45),
(13, 46),
(13, 47),
(13, 48),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32),
(13, 33),
(13, 34),
(13, 35),
(13, 36),
(13, 37),
(13, 38),
(13, 39),
(13, 40),
(13, 41),
(13, 42),
(13, 43),
(13, 44),
(13, 45),
(13, 46),
(13, 47),
(13, 48),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32),
(13, 33),
(13, 34),
(13, 35),
(13, 36),
(13, 37),
(13, 38),
(13, 39),
(13, 40),
(13, 41),
(13, 42),
(13, 43),
(13, 44),
(13, 45),
(13, 46),
(13, 47),
(13, 48),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(28, 17),
(28, 18),
(28, 19),
(28, 20),
(28, 21),
(28, 22),
(28, 23),
(28, 24),
(28, 25),
(28, 26),
(28, 27),
(28, 28),
(28, 29),
(28, 30),
(28, 31),
(28, 32),
(28, 33),
(28, 34),
(28, 35),
(28, 36),
(28, 37),
(28, 38),
(28, 39),
(28, 40),
(28, 41),
(28, 42),
(28, 43),
(28, 44),
(28, 45),
(28, 46),
(28, 47),
(28, 48),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(22, 11),
(22, 12),
(22, 13),
(22, 14),
(22, 15),
(22, 16),
(22, 17),
(22, 18),
(22, 19),
(22, 20),
(22, 21),
(22, 22),
(22, 23),
(22, 24),
(22, 25),
(22, 26),
(22, 27),
(22, 28),
(22, 29),
(22, 30),
(22, 31),
(22, 32),
(22, 33),
(22, 34),
(22, 35),
(22, 36),
(22, 37),
(22, 38),
(22, 39),
(22, 40),
(22, 41),
(22, 42),
(22, 43),
(22, 44),
(22, 45),
(22, 46),
(22, 47),
(22, 48),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(30, 13),
(30, 14),
(30, 15),
(30, 16),
(30, 17),
(30, 18),
(30, 19),
(30, 20),
(30, 21),
(30, 22),
(30, 23),
(30, 24),
(30, 25),
(30, 26),
(30, 27),
(30, 28),
(30, 29),
(30, 30),
(30, 31),
(30, 32),
(30, 33),
(30, 34),
(30, 35),
(30, 36),
(30, 37),
(30, 38),
(30, 39),
(30, 40),
(30, 41),
(30, 42),
(30, 43),
(30, 44),
(30, 45),
(30, 46),
(30, 47),
(30, 48),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 9),
(32, 10),
(32, 11),
(32, 12),
(32, 13),
(32, 14),
(32, 15),
(32, 16),
(32, 17),
(32, 18),
(32, 19),
(32, 20),
(32, 21),
(32, 22),
(32, 23),
(32, 24),
(32, 25),
(32, 26),
(32, 27),
(32, 28),
(32, 29),
(32, 30),
(32, 31),
(32, 32),
(32, 33),
(32, 34),
(32, 35),
(32, 36),
(32, 37),
(32, 38),
(32, 39),
(32, 40),
(32, 41),
(32, 42),
(32, 43),
(32, 44),
(32, 45),
(32, 46),
(32, 47),
(32, 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Agronomía', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(2, 'Almagro', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(3, 'Balvanera', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(4, 'Barracas', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(5, 'Belgrano', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(6, 'Boedo', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(7, 'Caballito', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(8, 'Chacarita', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(9, 'Coghlan', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(10, 'Colegiales', '2019-10-18 16:44:17', '2019-10-18 16:44:17'),
(11, 'Constitución', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(12, 'Flores', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(13, 'Floresta', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(14, 'La Boca', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(15, 'La Paternal', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(16, 'Liniers', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(17, 'Mataderos', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(18, 'Monte Castro', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(19, 'Monserrat', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(20, 'Nueva Pompeya', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(21, 'Núñez', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(22, 'Palermo', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(23, 'Parque Avellaneda', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(24, 'Parque Chacabuco', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(25, 'Parque Chas', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(26, 'Parque Patricios', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(27, 'Puerto Madero', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(28, 'Recoleta', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(29, 'Retiro', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(30, 'Saavedra', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(31, 'San Cristóbal', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(32, 'San Nicolás', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(33, 'San Telmo', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(34, 'Vélez Sársfield', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(35, 'Versalles', '2019-10-18 16:44:18', '2019-10-18 16:44:18'),
(36, 'Villa Crespo', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(37, 'Villa del Parque', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(38, 'Villa Devoto', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(39, 'Villa General Mitre', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(40, 'Villa Lugano', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(41, 'Villa Luro', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(42, 'Villa Ortúzar', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(43, 'Villa Pueyrredón', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(44, 'Villa Real', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(45, 'Villa Riachuelo', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(46, 'Villa Santa Rita', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(47, 'Villa Soldati', '2019-10-18 16:44:19', '2019-10-18 16:44:19'),
(48, 'Villa Urquiza', '2019-10-18 16:44:19', '2019-10-18 16:44:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_categoria_tipo_id_foreign` (`categoria_tipo_id`);

--
-- Indices de la tabla `categoria_tipo`
--
ALTER TABLE `categoria_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `interactionhead`
--
ALTER TABLE `interactionhead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interactionhead_publicacion_id_foreign` (`publicacion_id`),
  ADD KEY `interactionhead_subjet_id_foreign` (`subjet_id`);

--
-- Indices de la tabla `interactionimage`
--
ALTER TABLE `interactionimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interactionimage_message_id_foreign` (`message_id`);

--
-- Indices de la tabla `interactionmessage`
--
ALTER TABLE `interactionmessage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interactionmessage_head_id_foreign` (`head_id`);

--
-- Indices de la tabla `interactionsubjet`
--
ALTER TABLE `interactionsubjet`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicacion_titulo_id_foreign` (`titulo_id`),
  ADD KEY `publicacion_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `publicacion_image`
--
ALTER TABLE `publicacion_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicacion_image_publicacion_id_foreign` (`publicacion_id`);

--
-- Indices de la tabla `publicacion_titulo`
--
ALTER TABLE `publicacion_titulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicacion_titulo_publicacion_id_foreign` (`publicacion_id`),
  ADD KEY `publicacion_titulo_titulo_id_foreign` (`titulo_id`);

--
-- Indices de la tabla `publicacion_user`
--
ALTER TABLE `publicacion_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicacion_user_publicacion_id_foreign` (`publicacion_id`),
  ADD KEY `publicacion_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `titulo`
--
ALTER TABLE `titulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titulo_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `users_cfp_id_foreign` (`cfp_id`),
  ADD KEY `users_type_id_foreign` (`type_id`);

--
-- Indices de la tabla `users_zonas`
--
ALTER TABLE `users_zonas`
  ADD KEY `users_zonas_user_id_foreign` (`user_id`),
  ADD KEY `users_zonas_zona_id_foreign` (`zona_id`);

--
-- Indices de la tabla `user_cfp`
--
ALTER TABLE `user_cfp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_zonas`
--
ALTER TABLE `user_zonas`
  ADD KEY `users_zonas_user_id_foreign` (`user_id`),
  ADD KEY `users_zonas_zona_id_foreign` (`zonas_id`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `categoria_tipo`
--
ALTER TABLE `categoria_tipo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `interactionhead`
--
ALTER TABLE `interactionhead`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `interactionimage`
--
ALTER TABLE `interactionimage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `interactionmessage`
--
ALTER TABLE `interactionmessage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `interactionsubjet`
--
ALTER TABLE `interactionsubjet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `publicacion_image`
--
ALTER TABLE `publicacion_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `publicacion_titulo`
--
ALTER TABLE `publicacion_titulo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `publicacion_user`
--
ALTER TABLE `publicacion_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `titulo`
--
ALTER TABLE `titulo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `user_cfp`
--
ALTER TABLE `user_cfp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_categoria_tipo_id_foreign` FOREIGN KEY (`categoria_tipo_id`) REFERENCES `categoria_tipo` (`id`);

--
-- Filtros para la tabla `interactionhead`
--
ALTER TABLE `interactionhead`
  ADD CONSTRAINT `interactionhead_publicacion_id_foreign` FOREIGN KEY (`publicacion_id`) REFERENCES `publicacion` (`id`),
  ADD CONSTRAINT `interactionhead_subjet_id_foreign` FOREIGN KEY (`subjet_id`) REFERENCES `interactionsubjet` (`id`);

--
-- Filtros para la tabla `interactionimage`
--
ALTER TABLE `interactionimage`
  ADD CONSTRAINT `interactionimage_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `interactionmessage` (`id`);

--
-- Filtros para la tabla `interactionmessage`
--
ALTER TABLE `interactionmessage`
  ADD CONSTRAINT `interactionmessage_head_id_foreign` FOREIGN KEY (`head_id`) REFERENCES `interactionhead` (`id`);

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `publicacion_titulo_id_foreign` FOREIGN KEY (`titulo_id`) REFERENCES `titulo` (`id`);

--
-- Filtros para la tabla `publicacion_image`
--
ALTER TABLE `publicacion_image`
  ADD CONSTRAINT `publicacion_image_publicacion_id_foreign` FOREIGN KEY (`publicacion_id`) REFERENCES `publicacion` (`id`);

--
-- Filtros para la tabla `publicacion_titulo`
--
ALTER TABLE `publicacion_titulo`
  ADD CONSTRAINT `publicacion_titulo_publicacion_id_foreign` FOREIGN KEY (`publicacion_id`) REFERENCES `publicacion` (`id`),
  ADD CONSTRAINT `publicacion_titulo_titulo_id_foreign` FOREIGN KEY (`titulo_id`) REFERENCES `titulo` (`id`);

--
-- Filtros para la tabla `publicacion_user`
--
ALTER TABLE `publicacion_user`
  ADD CONSTRAINT `publicacion_user_publicacion_id_foreign` FOREIGN KEY (`publicacion_id`) REFERENCES `publicacion` (`id`),
  ADD CONSTRAINT `publicacion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `titulo`
--
ALTER TABLE `titulo`
  ADD CONSTRAINT `titulo_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_cfp_id_foreign` FOREIGN KEY (`cfp_id`) REFERENCES `user_cfp` (`id`),
  ADD CONSTRAINT `users_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `user_type` (`id`);

--
-- Filtros para la tabla `users_zonas`
--
ALTER TABLE `users_zonas`
  ADD CONSTRAINT `users_zonas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_zonas_zona_id_foreign` FOREIGN KEY (`zona_id`) REFERENCES `zonas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
