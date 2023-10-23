-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2023 pada 11.24
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nutrition_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('--HockNbL6BY5jtzDnzAOWD0ZmX4URgh', '2023-08-14 06:16:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:16:56', '2023-08-13 06:16:56'),
('-tRn5ML6qhlKoyV7NgPRZlliDoGOlbm9', '2023-08-14 06:45:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:45:14', '2023-08-13 06:45:14'),
('0OIG93xmiErVwVPpbgeDnYiOKGUwvREn', '2023-08-14 19:52:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 19:52:58', '2023-08-13 19:52:58'),
('1aQLhajqW-R7H2C-YZf3otfjLTFME23l', '2023-08-14 06:35:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:35:06', '2023-08-13 06:35:06'),
('2ogvXmNg8oDZY9nzQJDfgjy6ybGY639z', '2023-08-14 09:37:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 09:37:29', '2023-08-13 09:37:29'),
('33ZfRgMUjZrqQC0WLHVheQYQOW7bTSYA', '2023-08-14 10:34:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:34:52', '2023-08-13 10:34:52'),
('3a-5CwPBMnleJx1OwlIK4_vIDrB5UJ_8', '2023-08-15 02:05:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:05:13', '2023-08-14 02:05:13'),
('3c-RggvqSaycG_e9vBoDIBCaPWWrQOqo', '2023-08-14 11:36:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:36:47', '2023-08-13 11:36:47'),
('3kZlQP5ESppHGiFDDiFnIOelq8j_s8wg', '2023-08-14 05:38:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 05:38:21', '2023-08-13 05:38:21'),
('3YYB5-8yKE6D_VtV5O81yykuqZ35TIkH', '2023-08-14 20:35:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 20:35:41', '2023-08-13 20:35:41'),
('3_D7T4i4RrT6v2DHPnUQ50alt8BOYNa0', '2023-08-15 02:28:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:28:31', '2023-08-14 02:28:31'),
('4cdhSgYULJ17KraZq650LJLygFWkmpMt', '2023-08-15 02:16:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:16:01', '2023-08-14 02:16:01'),
('4nBCzdVvleP1IM7JoIUF9FPhqcfKV0Ew', '2023-08-15 02:05:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:05:40', '2023-08-14 02:05:40'),
('4RWOgv8bCj-sw0_XsEtEhFyanjS_ZHsh', '2023-08-14 09:37:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 09:37:17', '2023-08-13 09:37:17'),
('6h57hftww0bD1EDqwlFkZItKskoXewii', '2023-08-14 20:34:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 20:34:23', '2023-08-13 20:34:23'),
('7bdINmQJx3g9yE1WdK-xXhELTrVuEG_d', '2023-08-15 02:14:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:14:36', '2023-08-14 02:14:36'),
('8INqweysUBzTOAQcg_0V-UQSA-pf9Jq-', '2023-08-14 06:27:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:27:47', '2023-08-13 06:27:47'),
('98i6BnHo8DXrvlF0PbHKkzjfvhyh8B8s', '2023-08-14 06:27:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:27:31', '2023-08-13 06:27:31'),
('9EiZ7Ev_ndGJ6pOlPZ3Rw9iUU9U2dcIR', '2023-08-14 06:20:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:20:08', '2023-08-13 06:20:08'),
('9NbivJU8XfDMBMFm7D3Ue27hA_KnCHEY', '2023-08-15 02:17:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:17:18', '2023-08-14 02:17:18'),
('9uks54pylwabT62IHql2JgddXxwTeNC4', '2023-08-14 11:26:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:26:35', '2023-08-13 11:26:35'),
('AQbigWsTsITGvD0QB_MTZDxC_PFqd3Tp', '2023-08-14 10:36:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:36:23', '2023-08-13 10:36:23'),
('AV2DxBR1gzOUAGc6_DCd26sjec6WxMeu', '2023-08-15 02:02:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:02:37', '2023-08-14 02:02:37'),
('aXzrcPKhZaLSeS9JQ9TJzfSsaNrTz0_A', '2023-08-14 06:18:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:18:39', '2023-08-13 06:18:39'),
('AX_SaAtdZQoyAC56U7YaEZravfI5rghy', '2023-08-14 10:46:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:46:35', '2023-08-13 10:46:35'),
('ayBlFeL1KlJv9rXzcNcIBAsGD3rFIjWJ', '2023-08-15 02:21:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:21:07', '2023-08-14 02:21:07'),
('biXIjnRchqO3yg3aMQUH-vVQ9C0Vhtqz', '2023-08-14 10:28:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:28:26', '2023-08-13 10:28:26'),
('BpIlEcT6zf7RB4GCrPEX3EU7sNWC2AI8', '2023-08-15 02:19:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:19:47', '2023-08-14 02:19:47'),
('bso9_umhqhNjBW_QyG8yFRLRDrwV4cIv', '2023-08-15 02:06:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:06:36', '2023-08-14 02:06:36'),
('bxXAbanlr1c-OUpUdZ4GNkeGvJ-gpVQZ', '2023-08-15 02:06:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:06:58', '2023-08-14 02:06:58'),
('C-rpHoiInAZXwsG34DEV0WPhtCPY1VJP', '2023-08-14 10:36:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:36:59', '2023-08-13 10:36:59'),
('C2kMoNOWMHz29ytZypjBCi-H1GkUQMsf', '2023-08-14 06:38:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:38:23', '2023-08-13 06:38:23'),
('c3Q4O6GgT6nP2Z9ibErOnlNpUOfqeUYN', '2023-08-15 02:18:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:18:41', '2023-08-14 02:18:41'),
('D5oFCVgtjYGuVy-vLVbSHt9co7xegggg', '2023-08-14 10:30:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:30:32', '2023-08-13 10:30:32'),
('dbvpgyE_GNtZwB5stTfPqj-AcvMS9Ox9', '2023-08-15 02:11:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:11:55', '2023-08-14 02:11:55'),
('dlaZHVw9-WeRd7hVGmzMCWkXOcqQE5lv', '2023-08-14 06:44:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:44:25', '2023-08-13 06:44:25'),
('Dm6xent0s9c_tEWvTQOaWgFz_dCfM4Ow', '2023-08-14 20:36:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 20:36:16', '2023-08-13 20:36:16'),
('DNx2WE5uaN4wPiM3pYdXd31H0g4hzgwp', '2023-08-14 10:46:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:46:07', '2023-08-13 10:46:07'),
('DUTF_ej57cGtRpGrGLLHR42d0vHLuGFI', '2023-08-14 11:26:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:26:09', '2023-08-13 11:26:09'),
('EeB9sDSgMZVLyGiHUuhxNNhTn6qN9ZIy', '2023-08-14 08:52:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 08:52:12', '2023-08-13 08:52:12'),
('eLXAyQAXV-E7o7kKTUwzd97xSEc4U13r', '2023-08-14 11:41:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:41:07', '2023-08-13 11:41:07'),
('F3P--543bYtrMiNmihsjuuMYMy1IluNx', '2023-08-15 02:13:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:13:55', '2023-08-14 02:13:55'),
('f3SrQ019dOU0648Nqta0SEiYlk-P0rvu', '2023-08-14 06:24:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:24:57', '2023-08-13 06:24:57'),
('FHy_kCsCWEEVaGwVGOUyLceOH6p5PoYc', '2023-08-15 02:28:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:28:38', '2023-08-14 02:28:38'),
('gGRBsXoj9XKFzji48EOYuC63kNrKK3l0', '2023-08-14 06:35:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:35:41', '2023-08-13 06:35:41'),
('Gi162kFyHTPmjB5bEDfS3kHZtH5vs1ya', '2023-08-14 09:23:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 09:23:59', '2023-08-13 09:23:59'),
('gQtfC2aQ7RkCf1CTlijs-lilI9xJwW69', '2023-08-14 10:29:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:29:59', '2023-08-13 10:29:59'),
('GTnfwBA9b_HQ2rAmR2Z22c7tjGAaJTsn', '2023-08-15 02:21:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:21:04', '2023-08-14 02:21:04'),
('gvBuR67a03wdcg8OOcu6SWSFR9hq6LWh', '2023-08-14 10:28:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:28:52', '2023-08-13 10:28:52'),
('hepzpA5G0WLJNrgTfUykq01V8IeH3XRB', '2023-08-14 06:17:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:17:46', '2023-08-13 06:17:46'),
('hfzZgMl8S_zcLnxVsgScHcE5pLwg1xKx', '2023-08-14 09:29:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 09:29:06', '2023-08-13 09:29:06'),
('I8p8dWhAT3CvwJ3bKzSKMd5t3lzMcRls', '2023-08-14 10:35:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:35:53', '2023-08-13 10:35:53'),
('IeyfoUPO6DIRsaBh74dcWyYxgcyGJ8ib', '2023-08-14 18:32:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 18:32:38', '2023-08-13 18:32:38'),
('IG3uf8Z8YSbJS_jM0Cg5g0AKDJOGcgRf', '2023-08-14 05:50:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 05:50:28', '2023-08-13 05:50:28'),
('IIJwwOUoX8vwvV5ACZaErqfXjXB57yXF', '2023-08-14 11:25:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:25:24', '2023-08-13 11:25:24'),
('IKQ3FqXBxqaB29GY9umwvpkbOiU0lKLs', '2023-08-15 02:21:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:21:12', '2023-08-14 02:21:12'),
('jdOyvq2OErQtX1rk561GN9FEJnYuvP0X', '2023-08-14 08:41:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 08:41:36', '2023-08-13 08:41:36'),
('Jg6Lo03nEby3odvQ0kra3R_shKhrzYi1', '2023-08-15 01:59:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 01:59:19', '2023-08-14 01:59:19'),
('JHyheDl-q9XUmlh_ZIJhlG1ApNqrdSr0', '2023-08-15 02:07:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:07:33', '2023-08-14 02:07:33'),
('jpMeX8BmggtGAugoPgtqmb_GRrSXXMFy', '2023-08-14 18:32:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 18:32:04', '2023-08-13 18:32:04'),
('JU4uEkRtab5z4wpPXyWbGH6jlTGCFOjt', '2023-08-14 05:10:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 05:10:42', '2023-08-13 05:10:42'),
('JZzutIR-27uCRaaOYFWBbsqsX00-ZV8O', '2023-08-15 01:58:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 01:58:56', '2023-08-14 01:58:56'),
('k5K4lkrARz1CWkGyvw8hITRHf-snL3C7', '2023-08-14 11:26:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:26:25', '2023-08-13 11:26:25'),
('K7OZ8pxx9xa1axHEUnHJBwo415DvXrGN', '2023-08-14 20:35:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 20:35:31', '2023-08-13 20:35:31'),
('KENTRaXHSijmv0lOwXah-2wNmekil36x', '2023-08-15 02:13:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:13:01', '2023-08-14 02:13:01'),
('KHyicVnCz-OSfWFPIDMR22AR5ZXhODcf', '2023-08-14 10:22:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:22:45', '2023-08-13 10:22:45'),
('kvJE4BdxnEva1JdWlXl6TtLmQo2lR4CC', '2023-08-15 02:17:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:17:45', '2023-08-14 02:17:45'),
('lb1JSoPXw22OubfX29NGMxEwlLsw0WI5', '2023-08-15 02:21:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:21:08', '2023-08-14 02:21:08'),
('LFYaAuiNQCC7g-bDrJXrVZ6iZHol6etn', '2023-08-14 09:36:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 09:36:47', '2023-08-13 09:36:47'),
('LRi6mlm-MWOYvRiyf5LCq-5TZRfcWnli', '2023-08-14 10:31:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:31:49', '2023-08-13 10:31:49'),
('mgSAmuZEmsSqQI8Np4r8Qe59HO5iVmqs', '2023-08-15 02:12:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:12:22', '2023-08-14 02:12:22'),
('mmnxRzLROmhvwhg28APytUu4V-IVmJ15', '2023-08-15 02:21:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:21:05', '2023-08-14 02:21:05'),
('NIV6kVgXcIrhca7B2tcc9Opyu6drmGiT', '2023-08-14 06:27:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:27:10', '2023-08-13 06:27:10'),
('oVqQJ0m0VcmGknEaXRolqtkxz_Cw9k-c', '2023-08-14 09:14:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 09:14:55', '2023-08-13 09:14:55'),
('P2mjWVNqmhRS5Pc9ap27z6hqztxjMdip', '2023-08-14 06:38:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:38:14', '2023-08-13 06:38:14'),
('p7A3Lp4HUB6DjkmS1WAihSy-oA108Y7Q', '2023-08-15 02:06:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:06:07', '2023-08-14 02:06:07'),
('qH0AHmHOnpiq1gkkSvHDk2E5sQbBQRXw', '2023-08-14 10:31:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:31:09', '2023-08-13 10:31:09'),
('QHOQe_lDBhUllEh9GZEKJv8qIhPdxnNy', '2023-08-14 10:47:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:47:07', '2023-08-13 10:47:07'),
('QjG1RidtVHLAtB3sn_PuzOohsjxfpBMp', '2023-08-14 11:20:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:20:00', '2023-08-13 11:20:00'),
('QtNopXPqB-rh6JqJzWH-7AJxllnSiL_p', '2023-08-14 06:18:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:18:34', '2023-08-13 06:18:34'),
('rAv8uelEuOXzHQaRy2O3_9118NKkWQa7', '2023-08-15 02:18:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:18:14', '2023-08-14 02:18:14'),
('rb4NXxpkKaP9RWZDzW3p5O86hRnon_Hi', '2023-08-14 11:41:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:41:49', '2023-08-13 11:41:49'),
('rgdpLqVueTfUsjnjArq9qexotBfmMdh6', '2023-08-14 10:35:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:35:23', '2023-08-13 10:35:23'),
('rp2KlRj-Y_y3wAOvhk0zD62_Pwc7AIfq', '2023-08-15 02:04:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:04:35', '2023-08-14 02:04:35'),
('rqjNvSSm4sX9VC9p44ioY3wkqxZVZoA1', '2023-08-14 23:32:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 23:32:30', '2023-08-13 23:32:30'),
('RuwJSVT6Cut0QZtUNqyJgiXb8yGIXntV', '2023-08-14 10:45:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:45:38', '2023-08-13 10:45:38'),
('sDAP0zU8WcIeuurE9QhU1uKFmDdQlRjp', '2023-08-14 06:20:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:20:28', '2023-08-13 06:20:28'),
('Sp3xBQM6FDnJFlC-FuONk-mUmMgEYh91', '2023-08-15 02:15:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:15:34', '2023-08-14 02:15:34'),
('sSTF368AUak5atkFaWh9Fnlvf966yDg8', '2023-08-14 18:31:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 18:31:59', '2023-08-13 18:31:59'),
('szENia657rQsjNokODElOV5PNaKCj5-h', '2023-08-15 02:16:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:16:48', '2023-08-14 02:16:48'),
('T-xsFKVoc7I-LlYl2TaZ_RSAjb5ZGfsZ', '2023-08-14 11:30:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 11:30:10', '2023-08-13 11:30:10'),
('T9YBL6GfdKwDGD2AkiLG-bK77835UH-h', '2023-08-14 06:24:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:24:16', '2023-08-13 06:24:16'),
('TizmCeAfYY9gmf8KyIMrohlG0zlnN6sc', '2023-08-14 06:06:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:06:28', '2023-08-13 06:06:28'),
('Um816J7XPNihvJB4JSiB7XfJk9XXj2M4', '2023-08-15 02:21:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:21:10', '2023-08-14 02:21:10'),
('v23z4eOXLcrUMLPrwADbCtuL4L7IMrjp', '2023-08-14 08:41:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 08:41:37', '2023-08-13 08:41:37'),
('vAakRu9CfHXxQlhoeiv7GLbwuOjqTrNA', '2023-08-14 10:32:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:32:50', '2023-08-13 10:32:50'),
('w85bi8qQnlQ231GxjE_jRjBDLb2kv_zR', '2023-08-14 06:38:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:38:53', '2023-08-13 06:38:53'),
('wCITBMi7fKUZZsLy_HF6wxXwLvwpeQ_z', '2023-08-14 18:38:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 18:38:53', '2023-08-13 18:38:53'),
('WhSK4PEP7VZBXR0Cev5JdZP1AZxNd0c6', '2023-08-14 06:26:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:26:41', '2023-08-13 06:26:41'),
('x4nQAju590Jw_5s2-oBzuVVySfZjrc36', '2023-08-14 10:28:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:28:43', '2023-08-13 10:28:43'),
('XN6_UGgW7BRaQCf8ILJWk0Nb0-tMOSoS', '2023-08-15 02:21:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:21:01', '2023-08-14 02:21:01'),
('yo8heyBoiEwQqWYW4kDjVa-7kJawB-0V', '2023-08-14 06:35:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 06:35:21', '2023-08-13 06:35:21'),
('yylBqfqzdkK34UBIta3b-JLn2fdsOU3s', '2023-08-14 10:29:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:29:26', '2023-08-13 10:29:26'),
('Z2O-zg1qAQ2mEhnsUAkD1rPovvCa66l_', '2023-08-14 05:50:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 05:50:26', '2023-08-13 05:50:26'),
('Z6WaqrrNuwNmMKw95E721N6yMeKCfxIt', '2023-08-14 10:32:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-13 10:32:18', '2023-08-13 10:32:18'),
('ZzVMGBQuzpLzDcCpCupAvhW0H4nYiQ16', '2023-08-15 02:13:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-14 02:13:23', '2023-08-14 02:13:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `testDate` datetime NOT NULL,
  `k` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `classification` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tests`
--

INSERT INTO `tests` (`id`, `uuid`, `testDate`, `k`, `name`, `age`, `weight`, `height`, `classification`, `userId`, `createdAt`, `updatedAt`) VALUES
(5, '226dc24d-b2e9-4bdf-b4f2-61f2a727bd56', '2023-07-04 00:00:00', 9, 'MUH YUSUF BAIZHAN', 14, 10.2, 70, 'Normal', 1, '2023-08-13 08:52:12', '2023-08-13 10:28:52'),
(7, 'c7677830-2ed8-4d5b-8d00-959f8be7e72a', '2023-07-11 00:00:00', 9, 'ZIE HYUN WIOLITA', 14, 9.9, 74, 'Normal', 7, '2023-08-13 10:28:26', '2023-08-13 10:28:26'),
(8, '5bb0f5a5-3c01-4194-9d77-8bd45bd01a89', '2023-07-13 00:00:00', 9, 'SAGARA ALMEER', 17, 13.1, 81, 'Gemuk', 7, '2023-08-13 10:29:26', '2023-08-13 10:29:26'),
(9, 'b84624ae-57e2-4806-bf48-e93b01a7cabd', '2023-07-13 00:00:00', 9, 'HAFIDZAH SHAKILLAH', 13, 10.9, 72, 'Normal', 7, '2023-08-13 10:29:59', '2023-08-13 10:29:59'),
(10, '693c8f2e-d03e-4467-baf0-106f355ec65e', '2023-07-21 00:00:00', 9, 'ELVANO DWIKI RAFARDHAN', 11, 9.4, 71, 'Normal', 7, '2023-08-13 10:30:32', '2023-08-13 10:30:32'),
(11, '6335a163-62fc-488c-b16b-da7ed76db89b', '2023-07-21 00:00:00', 9, 'ILMAN NADHIF S', 13, 9.5, 73, 'Normal', 7, '2023-08-13 10:31:09', '2023-08-13 10:31:09'),
(12, 'a705cad9-b469-462b-b28d-69daab80ef93', '2023-07-22 00:00:00', 9, 'MALENDRA', 9, 8.8, 70, 'Normal', 7, '2023-08-13 10:31:49', '2023-08-13 10:31:49'),
(13, '5efd6458-93f3-416d-9cc7-14e2487ed004', '2023-07-22 00:00:00', 9, 'SHAFA NASYAUGI W', 9, 9, 68, 'Normal', 7, '2023-08-13 10:32:18', '2023-08-13 10:32:18'),
(14, '7b18a401-c315-41a0-b608-2bc34a43fd9e', '2023-07-24 00:00:00', 9, 'KHADIJAH AISYAH N', 9, 8.9, 70, 'Normal', 7, '2023-08-13 10:32:50', '2023-08-13 10:32:50'),
(15, 'f95a5e17-d40d-42a0-8ea5-765f5735fde6', '2023-07-24 00:00:00', 9, 'YUMNA', 18, 9.7, 81, 'Normal', 7, '2023-08-13 10:34:52', '2023-08-14 01:59:19'),
(16, '833816ab-056d-432b-8a21-92819bd14539', '2023-07-25 00:00:00', 9, 'M AMMAR SYARIF', 30, 9.5, 80, 'Normal', 7, '2023-08-13 10:35:23', '2023-08-13 10:35:23'),
(17, 'be9601bd-397b-4ea0-b709-e4b7a33c819d', '2023-07-26 00:00:00', 9, 'M ARKAN', 8, 11.2, 81, 'Normal', 7, '2023-08-13 10:35:53', '2023-08-13 10:35:53'),
(18, 'e5ef251e-88ef-45e4-b509-0ef44f405ef8', '2023-07-27 00:00:00', 9, 'MARCEL EZRA JULIO', 8, 8.2, 64, 'Normal', 7, '2023-08-13 10:36:23', '2023-08-13 10:36:23'),
(19, 'ae9651b4-7f1c-4289-83de-40c4879ed053', '2023-07-28 00:00:00', 9, 'M KHALIF ARSAKA', 7, 8.2, 64, 'Normal', 7, '2023-08-13 10:36:59', '2023-08-13 10:36:59'),
(20, 'e82270b2-44ad-4a10-8a45-0f51e394693c', '2023-08-01 00:00:00', 9, 'FIRHAN GHAVA ATALLAH', 7, 8.3, 64, 'Normal', 7, '2023-08-13 10:45:38', '2023-08-13 10:45:38'),
(21, '019bd7b1-a9b2-4541-808d-38296d6448d9', '2023-08-01 00:00:00', 9, 'ILMA PRIKHANSA', 6, 8, 65, 'Normal', 7, '2023-08-13 10:46:07', '2023-08-13 10:46:07'),
(22, 'ebb78b54-7daf-47e4-8984-c02ed7a78e7e', '2023-08-02 00:00:00', 9, 'KHANZA ARISHA BELVANIA', 6, 6.7, 63.5, 'Normal', 7, '2023-08-13 10:46:35', '2023-08-14 02:02:38'),
(23, '20494ab4-ee83-45b1-81d4-99177ca3e1e2', '2023-08-03 00:00:00', 9, 'SHANUM', 18, 9.1, 62, 'Normal', 7, '2023-08-13 10:47:08', '2023-08-13 18:38:53'),
(35, 'd52cdfcc-8e52-4302-98e6-8a9763dbfb04', '2023-08-14 00:00:00', 9, 'DAYANA ALIF PRAWINDRA', 6, 7.5, 65, 'Normal', 1, '2023-08-14 02:12:22', '2023-08-14 02:12:22'),
(36, '83004bc3-3108-4846-adc9-2d5f457f10a2', '2023-08-14 00:00:00', 9, 'REANDRO ZORA P', 22, 9.3, 82, 'Normal', 1, '2023-08-14 02:13:01', '2023-08-14 02:13:01'),
(37, '470686d3-30ac-470b-b42d-f724a91e13b5', '2023-08-14 00:00:00', 9, 'KEISHA RARA ARZIO', 3, 6, 56, 'Normal', 1, '2023-08-14 02:13:23', '2023-08-14 02:13:23'),
(38, 'f04557df-42c0-4289-8177-99f781cb6a52', '2023-08-14 00:00:00', 9, 'RACHEL KAMILA SAKHI', 3, 5, 58, 'Normal', 1, '2023-08-14 02:13:55', '2023-08-14 02:13:55'),
(39, '7071e385-0816-4c6a-84ea-ec3b1cb19788', '2023-08-14 00:00:00', 9, 'ASKIA PUTRI D', 6, 3.7, 52, 'Normal', 1, '2023-08-14 02:14:36', '2023-08-14 02:14:36'),
(40, '42bbf6e2-0bdb-4fb3-8d67-89d8f2f5882d', '2023-08-14 00:00:00', 9, 'FAREL', 19, 11.3, 88, 'Gemuk', 1, '2023-08-14 02:15:34', '2023-08-14 02:15:34'),
(41, '5de809ef-b54c-4293-b748-3931035a142a', '2023-08-14 00:00:00', 9, 'STARLA JELITA S.V', 9, 9, 70, 'Normal', 1, '2023-08-14 02:16:01', '2023-08-14 02:16:01'),
(42, '74af50ba-387a-483d-bb2c-4572370fc9a3', '2023-08-14 00:00:00', 9, 'SOFIRA SHEZA BOHERA', 7, 7.4, 67, 'Normal', 1, '2023-08-14 02:16:48', '2023-08-14 02:16:48'),
(43, '1af7e1e5-a8f5-47da-bb23-8a539266e591', '2023-08-14 00:00:00', 9, 'MUH ALIF ALFARIZQI', 3, 6.6, 53, 'Normal', 1, '2023-08-14 02:17:18', '2023-08-14 02:17:18'),
(44, '5dc0e2b6-4a6d-4c10-a6bb-3dee112821e4', '2023-08-14 00:00:00', 9, 'ANNISA MIKEYLA RAYA', 2, 4.8, 53, 'Normal', 1, '2023-08-14 02:17:45', '2023-08-14 02:17:45'),
(45, 'c3ace4ab-d865-4237-9723-9b3b4480ea15', '2023-08-14 00:00:00', 9, 'CATUR CAHYO NUGAHA', 1, 4.5, 53, 'Normal', 1, '2023-08-14 02:18:14', '2023-08-14 02:18:14'),
(46, 'b29b4aa1-3155-4761-b6e8-627ccc3a1441', '2023-08-14 00:00:00', 9, 'ARSY ZEA MECCA A', 1, 4, 53, 'Normal', 1, '2023-08-14 02:18:41', '2023-08-14 02:18:41'),
(47, '3cf0c4f1-cc92-42d6-b943-b99ad0c50b3c', '2023-08-14 00:00:00', 9, 'YEHEZKIEL SEAN', 5, 10.2, 80, 'Normal', 1, '2023-08-14 02:19:47', '2023-08-14 02:19:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toddlers`
--

CREATE TABLE `toddlers` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `classification` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toddlers`
--

INSERT INTO `toddlers` (`id`, `uuid`, `name`, `age`, `weight`, `height`, `classification`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '0c93dcce-fd33-46c3-98c4-15625c50abec', 'AHMAD ZAFRAN S', 56, 8.3, 103, 'Sangat Kurus', 1, '2023-06-24 15:33:11', '2023-06-24 15:37:56'),
(2, '8865fbfd-9a81-428b-9b33-e4c5af302bf2', 'ADZKIYA DEWI AZMI', 46, 16.1, 98.5, 'Normal', 1, '2023-06-24 15:34:19', '2023-06-24 15:38:04'),
(89, '6f73fdae-56bc-4719-8322-a1f31e36f0c2', 'KAYANA', 56, 17.7, 101, 'Normal', 1, '2023-07-05 22:56:26', '2023-07-05 22:56:26'),
(90, '6c462acc-4a18-4bde-ba5e-744ea5fc2721', 'HAFIDZ FADILAH', 56, 15.3, 111, 'Kurus', 1, '2023-07-05 22:57:00', '2023-07-05 22:57:00'),
(91, '79e15eb5-c622-4709-9cb3-218af936161b', 'KEZIA MIKAILA P.W', 55, 17.7, 104, 'Normal', 1, '2023-07-05 22:57:31', '2023-07-05 22:57:31'),
(93, '2fe5bb65-a1bc-4e5a-881b-759b433be05a', 'TALISA', 55, 12.7, 95, 'Normal', 1, '2023-07-05 22:58:24', '2023-07-05 22:58:24'),
(94, 'd6112eec-2234-4402-a133-e84be97be69e', 'MUH.AL-FATIH', 54, 17, 100, 'Normal', 1, '2023-07-05 22:58:48', '2023-07-05 22:58:48'),
(95, 'a8ac92d5-f44d-40fd-aab5-10a087a7f8d6', 'CHAIRUNNISA', 54, 16.8, 99, 'Normal', 1, '2023-07-05 22:59:16', '2023-07-05 22:59:51'),
(96, 'ac47db3e-18fd-4a25-9eda-25cf019197a1', 'FANIA CLARISA', 54, 23, 104, 'Gemuk', 1, '2023-07-05 22:59:40', '2023-07-05 22:59:40'),
(97, '96be881f-c46e-456a-94aa-ae3cfdafcc4b', 'AZAHRA RODYA', 53, 15.6, 100, 'Normal', 1, '2023-07-05 23:03:29', '2023-07-05 23:03:29'),
(99, 'e4bf9c76-aff1-43d1-8b6c-e3d51c1476b4', 'PRADIPTA AZZAM MAHARDHIKA', 53, 17, 98, 'Normal', 1, '2023-07-05 23:04:22', '2023-07-05 23:04:22'),
(100, 'd6156a0b-229a-4490-a99c-27cba8cf0748', 'M. RANGGA', 58, 16.7, 107, 'Normal', 1, '2023-07-05 23:04:49', '2023-07-05 23:04:49'),
(101, 'cb9b572d-cd6d-4348-8e7e-cfbbbcf38c3b', 'VIONA YUWANNANTA', 53, 17, 104, 'Normal', 1, '2023-07-05 23:05:18', '2023-07-05 23:05:18'),
(102, '60a529c0-a4ef-4e26-8dc8-b60f493f30cc', 'AKHTAR SHAFIN', 56, 16, 101, 'Normal', 1, '2023-07-05 23:07:01', '2023-07-05 23:07:01'),
(104, '0f0092b2-56e8-4242-930b-246d685d2b4a', 'HASNAH', 56, 15.3, 99, 'Normal', 1, '2023-07-05 23:08:10', '2023-07-05 23:08:10'),
(105, 'd9d17586-6b56-487b-a945-2aad9c4398c9', 'AINUN MARWAH', 54, 15.2, 99, 'Normal', 1, '2023-07-05 23:08:37', '2023-07-05 23:08:37'),
(106, '88758686-698e-4328-9591-1bd4bbeccdd9', 'RAKA', 55, 17.9, 102, 'Normal', 1, '2023-07-05 23:09:07', '2023-07-05 23:09:07'),
(107, '4a87645d-f564-4040-8d8f-6f0e3d5f38d5', 'NISA', 54, 16.8, 99, 'Normal', 1, '2023-07-05 23:36:08', '2023-07-05 23:36:08'),
(108, '93129ccb-9beb-49cf-953e-04ea64d0471c', 'SURYA MARSTYA HANIF', 53, 17, 112, 'Normal', 1, '2023-07-05 23:36:35', '2023-07-05 23:36:35'),
(109, '9f228d3e-6290-4a57-9206-398a47856264', 'ZAENAP JURO INARA', 53, 14, 92, 'Normal', 1, '2023-07-05 23:36:59', '2023-07-13 22:39:20'),
(111, 'f9b5aabe-e4f2-44fa-9d73-c2de12c20afa', 'ALVIANSYAH ORION ADIJAYA', 50, 14, 96, 'Normal', 1, '2023-07-05 23:37:46', '2023-07-05 23:37:46'),
(113, 'e89a1ae4-85df-4a44-a966-f6f96673d565', 'ARKA NANTA', 49, 14.3, 94, 'Normal', 1, '2023-07-06 00:13:33', '2023-07-06 00:13:33'),
(114, 'd5cf1497-16b5-4719-a309-55e526ac00b3', 'RAYYAN SETYAWAN', 37, 14.8, 103, 'Normal', 1, '2023-07-06 00:14:20', '2023-07-06 00:14:20'),
(115, 'cb0fb14e-c6e8-4258-9c10-de6b288b59dc', 'A GAVIN ZYARIF', 48, 14.6, 102, 'Normal', 1, '2023-07-06 00:15:01', '2023-07-06 00:15:01'),
(116, 'a87ce25d-6b5d-46ab-9ebd-b35f814e4d53', 'M QOIRUL ', 48, 14.7, 91, 'Normal', 1, '2023-07-06 00:15:28', '2023-07-06 00:15:28'),
(117, '89a6d022-367f-47a1-80bc-0c630234da02', 'SISILIA CITRA NINGTYAS', 48, 12.1, 103, 'Sangat Kurus', 1, '2023-07-06 00:51:51', '2023-07-06 00:51:51'),
(118, '285abef3-60e9-4f6f-8eca-35933b5f1abd', 'NADIVA', 47, 14.2, 91, 'Normal', 1, '2023-07-06 00:52:22', '2023-07-06 00:52:22'),
(119, '6d3825b9-a261-4261-89e8-0c9a6aab4dc6', 'ATTHAR MAUZA', 47, 14.3, 94, 'Normal', 1, '2023-07-06 00:52:49', '2023-07-06 00:52:49'),
(121, '29313b74-ad32-42e0-a95e-536e7db3632b', 'M AMRAAN ASSEGAF', 46, 16.9, 98, 'Normal', 1, '2023-07-06 00:53:39', '2023-07-06 00:53:39'),
(122, '720438fe-dc6b-4f57-ba94-5472bd14c22b', 'ADEEFA AILEN A', 45, 15, 94, 'Normal', 1, '2023-07-06 00:53:58', '2023-07-06 00:53:58'),
(123, '2ce9fbe8-1139-4055-b14e-a5a08f84144e', 'M AFFAN', 43, 15, 97, 'Normal', 1, '2023-07-06 00:54:22', '2023-07-06 00:54:22'),
(124, '650a71ae-19ba-429b-90d5-3b00a03c6252', 'GENTA', 49, 16.4, 100, 'Normal', 1, '2023-07-06 00:54:47', '2023-07-06 00:54:47'),
(125, 'd26be0e4-114e-49d8-8da5-0328146bfd00', 'JOAQUIN E S', 37, 16.9, 102, 'Normal', 1, '2023-07-06 00:55:09', '2023-07-06 00:55:09'),
(126, 'd96b3cc3-4f4b-46c4-abd8-b3879516f876', 'FATHAN DANIAN DANINDRA', 43, 11.2, 85, 'Normal', 1, '2023-07-06 00:55:32', '2023-07-06 00:55:32'),
(127, '530f30c1-c05f-4ae7-a854-83b97d9303e4', 'M FATIH EL FANO', 45, 13.4, 99, 'Normal', 1, '2023-07-06 00:55:55', '2023-07-06 00:55:55'),
(128, '0299c9c2-db4f-4538-be23-6397febcbc03', 'ARJUNA DANY YAL ALFARISQI', 43, 16, 95, 'Normal', 1, '2023-07-06 00:56:15', '2023-07-06 00:56:15'),
(129, '9c6c69e6-682e-43c5-8463-52edf49ae3dc', 'M RAFIF', 42, 15.5, 99, 'Normal', 1, '2023-07-06 00:56:53', '2023-07-06 00:56:53'),
(130, 'b617cd22-698c-44ff-830e-649d19f716fd', 'CHAREL', 42, 14.4, 99, 'Normal', 1, '2023-07-06 00:57:22', '2023-07-06 00:57:22'),
(131, '5e5a0c25-412f-4857-b8df-ae2786e03281', 'ALMEERA QUEENBY LEONA', 41, 13.5, 96, 'Normal', 1, '2023-07-06 00:57:54', '2023-07-06 00:57:54'),
(133, '3be29176-f72e-4493-bc85-5fb4723cdd2b', 'LAURA DWINANDA ORLIN', 41, 12.5, 90, 'Normal', 1, '2023-07-06 00:58:39', '2023-07-06 00:58:39'),
(134, 'dc55ab7b-357d-4dd9-9681-13073bc87d6b', 'M WILDAN F', 40, 12.1, 90, 'Normal', 1, '2023-07-06 00:59:04', '2023-07-06 00:59:04'),
(135, '7135ad2d-e17f-46c7-8ed8-3603eea06a05', 'KENZIE DELLY HAIDAR PRATAMA', 35, 12.3, 75, 'Gemuk', 1, '2023-07-06 00:59:28', '2023-07-06 00:59:28'),
(136, 'e988b0f7-0107-46a5-abdb-5dc42c836ff1', 'GHIFARI SYAFI MLIZZAKI', 36, 13.2, 83, 'Gemuk', 1, '2023-07-06 00:59:55', '2023-07-06 00:59:55'),
(137, '09acdbc3-0a72-4672-a344-4c6bcd2b1566', 'SHERYL', 38, 16.5, 86, 'Gemuk', 1, '2023-07-06 01:00:27', '2023-07-13 22:47:16'),
(138, '97733de0-aaab-4435-b16a-2ec91098a984', 'KANAYA ALMIRA PUTRI', 38, 14.8, 89, 'Gemuk', 1, '2023-07-06 01:00:52', '2023-07-13 22:46:12'),
(139, 'da164102-5009-4fcc-abb0-d09631c313ec', 'FAYZELVAN ABIPUTRA', 33, 13.7, 88, 'Normal', 1, '2023-07-06 01:01:15', '2023-07-06 01:01:15'),
(142, '8c8d9566-1ca1-40e5-abc9-f0835db3e160', 'ANNISA SULISTYOWATI', 33, 12.9, 89, 'Normal', 1, '2023-07-06 01:02:27', '2023-07-13 23:00:00'),
(143, '88c946ca-c73c-419b-af64-fb650384d468', 'YOVIE ABAD', 29, 13, 90, 'Normal', 1, '2023-07-06 01:02:49', '2023-07-13 23:00:53'),
(144, 'ac00310c-6ef7-4fc2-bb27-67ae4755f54c', 'AINAN ARKANA WIJAYA', 29, 14.8, 98, 'Normal', 1, '2023-07-06 01:03:23', '2023-07-13 23:01:32'),
(145, '151ec9a4-e01c-4572-8e9a-a45bffd30194', 'ABIZAR', 29, 12.5, 86, 'Normal', 1, '2023-07-06 01:03:48', '2023-07-13 23:02:16'),
(146, '1ecc58df-c2c9-4455-91a1-b1a30ca3eb8a', 'PRADTYA RISKA RAHARDIAN', 28, 14.3, 86, 'Gemuk', 1, '2023-07-06 01:04:17', '2023-07-13 23:03:00'),
(147, '2135f4c9-acc8-4383-8fd6-82489b998593', 'KHAIRA PUTRI NAZELLA', 28, 12.9, 86, 'Normal', 1, '2023-07-06 01:04:40', '2023-07-13 23:04:36'),
(168, 'cd2f5107-97ae-442a-88fa-a1e3d323e2c4', 'APRILIA REGIMA', 28, 13.1, 84, 'Normal', 1, '2023-07-13 23:05:57', '2023-07-13 23:05:57'),
(169, 'ba7738ff-7ef0-4934-89d6-6856368e865f', 'MUH GIBRAN SAFARAS', 27, 15.3, 90, 'Gemuk', 1, '2023-07-13 23:06:40', '2023-07-13 23:06:40'),
(170, '35c00221-e6f2-4c18-85f6-f6d2eaa48a28', 'ALIANA JENARA', 26, 0, 83, 'Normal', 1, '2023-07-13 23:07:03', '2023-07-13 23:07:03'),
(171, '9a6a8023-23aa-4690-92b3-9029282c781b', 'ELVANO RAVADAN', 25, 13.3, 89, 'Normal', 1, '2023-07-13 23:07:33', '2023-07-13 23:07:33'),
(172, 'dab5db62-9411-433f-8d01-60cea62e2525', 'ARYA WIJAYA', 24, 13, 87, 'Normal', 1, '2023-07-13 23:08:02', '2023-07-13 23:08:02'),
(173, 'a0260ce2-1e2a-4a5d-bd9a-a098982022e0', 'AELITA', 20, 9.7, 78, 'Normal', 1, '2023-07-13 23:08:30', '2023-07-13 23:08:30'),
(174, 'ade76ced-39cb-4167-b2a4-44ad5090c66e', 'AISY ASHIMA SHINUM', 23, 9.7, 82, 'Normal', 1, '2023-07-13 23:08:57', '2023-07-13 23:08:57'),
(175, 'a9bd5cc2-6bfc-4046-b68d-a0e0502af590', 'ENDRA P H', 23, 104, 77, 'Normal', 1, '2023-07-13 23:09:26', '2023-07-13 23:09:26'),
(176, 'ec3c8e55-dfe4-4f8c-a2dc-a62918a8b632', 'GILANG DANCER', 20, 14.5, 84, 'Gemuk', 1, '2023-07-13 23:09:54', '2023-07-13 23:09:54'),
(177, 'c26637f9-32af-40d6-9b92-921472cbd496', 'ARKANA DESANDER', 20, 10.2, 78, 'Normal', 1, '2023-07-13 23:10:21', '2023-07-13 23:10:21'),
(178, '1842f017-2f88-4b57-b561-d87c7dba9553', 'RADITYA BIMA', 20, 13.2, 79, 'Gemuk', 1, '2023-07-13 23:10:49', '2023-07-13 23:10:49'),
(179, 'daaab0de-1d20-44ff-b3d9-6c19601680e2', 'SAFIQHA NUR INDAH', 19, 10.5, 73, 'Gemuk', 1, '2023-07-13 23:11:16', '2023-07-13 23:11:16'),
(180, 'b788a2fd-3577-45c3-9ea8-b8f968068961', 'NAHDIRA HUMAIRA AL RAHMAN', 19, 9.5, 74, 'Normal', 1, '2023-07-13 23:11:46', '2023-07-13 23:11:46'),
(181, '1e2395c9-308e-418b-96ca-aabbbcd45bd2', 'RAFKA FEBIAN', 18, 14.1, 84, 'Gemuk', 1, '2023-07-13 23:12:20', '2023-07-13 23:12:20'),
(182, 'fe986964-924a-496e-8818-fc3dc6fb937f', 'ANIKAYLA HARUM AMANDA', 24, 12, 87, 'Normal', 1, '2023-07-13 23:12:52', '2023-07-13 23:12:52'),
(183, 'cef8ffcf-da01-42b0-a129-603c00afa55e', 'TANZEELA JOHARA QUINSA', 23, 10, 91, 'Kurus', 1, '2023-07-13 23:13:15', '2023-07-13 23:13:15'),
(184, '1cce9744-9bdc-4349-82fd-a0aa4c9e2d9b', 'SHAKEEL', 40, 14, 98, 'Normal', 1, '2023-07-13 23:14:06', '2023-07-13 23:14:06'),
(185, '645b44f0-566c-4527-a88b-9f1d1763feb8', 'LIORA', 20, 10.7, 77, 'Normal', 1, '2023-07-13 23:14:34', '2023-07-13 23:14:34'),
(186, 'b11fce60-d562-4b20-a747-0b5f5cb3b1d0', 'AZURA SEPTAVIOLA M', 18, 11, 76, 'Gemuk', 1, '2023-07-13 23:15:03', '2023-07-13 23:15:03'),
(187, '193ba62a-4f6f-4f61-8973-e57b137499b2', 'GANINDRA ELGIO', 17, 9, 76, 'Normal', 1, '2023-07-13 23:15:32', '2023-07-13 23:15:32'),
(188, '536f3639-ad17-4c4e-9bb1-9157f48bf6ec', 'DEANISHA', 19, 12, 77, 'Gemuk', 1, '2023-07-13 23:15:52', '2023-07-13 23:15:52'),
(189, '82bfe54a-96b1-41d0-b03b-ce9b0ee096fb', 'AUDRIAN', 19, 11.4, 78, 'Normal', 1, '2023-07-13 23:16:19', '2023-07-13 23:16:19'),
(190, '905e34d0-32a8-44a5-8c2a-d092eafae624', 'M IRSYAD AME', 16, 10.2, 74, 'Normal', 1, '2023-07-13 23:16:40', '2023-07-17 02:53:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '8d9d334d-d520-4015-9ec3-be688a1f8996', 'Junia', 'junia@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$NwRykJdJUr1X7PwojSqvOQ$K0lUtN/W4yh3lvU1xR3GwKKaXK7Jp39UDWrG9z7kxQs', 'admin', '2023-06-18 23:47:59', '2023-06-18 23:47:59'),
(2, 'dae0d804-7da8-431f-b785-6efbc0358538', 'Nysa', 'nysa@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$81Wn2ZagLG8NKTHkaVikQA$euRtNBij2nhIuvC1mO7ZoCfH28Hl0hEaviihD7bG+Xc', 'user', '2023-06-18 23:48:07', '2023-06-18 23:48:07'),
(6, 'f4aa908f-8ae6-4b9d-b940-81b7187d02cb', 'ana', 'ana@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$rFfO0iy6VP0KiyHaxI973A$1gVm88QU9LDrziZ33RF5vhOJ1uAYjvIHxDGgFnItg2Q', 'user', '2023-07-17 02:52:56', '2023-07-17 02:52:56'),
(7, '4298632f-e9f1-4f94-9ff4-dc4def3876be', 'Admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$SZvzf3rOMdfV0GCZWo2Hnw$KOzMm552wY1uKJVLIkAieJ0SLDoOeJxrgPojG/toBNE', 'admin', '2023-08-13 09:14:55', '2023-08-13 09:14:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `toddlers`
--
ALTER TABLE `toddlers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `toddlers`
--
ALTER TABLE `toddlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `toddlers`
--
ALTER TABLE `toddlers`
  ADD CONSTRAINT `toddlers_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
