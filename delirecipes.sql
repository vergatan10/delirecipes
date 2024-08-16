-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for delirecipesbwa
CREATE DATABASE IF NOT EXISTS `delirecipesbwa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `delirecipesbwa`;

-- Dumping structure for table delirecipesbwa.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.cache: ~0 rows (approximately)
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1722540100),
	('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1722540100;', 1722540100),
	('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1722537175),
	('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1722537175;', 1722537175);

-- Dumping structure for table delirecipesbwa.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.cache_locks: ~0 rows (approximately)

-- Dumping structure for table delirecipesbwa.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.categories: ~0 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Bakery', 'bakery', '01J47KTNCPSM10MMTXPY4ETV09.png', NULL, '2024-08-01 11:39:23', '2024-08-01 11:39:23'),
	(2, 'Healthy', 'healthy', '01J47KYC4HNG353MRZ6ETG87S5.png', NULL, '2024-08-01 11:41:25', '2024-08-01 11:41:25'),
	(3, 'Sweet', 'sweet', '01J47KYPBWF97BX0CDY49K38Q5.png', NULL, '2024-08-01 11:41:35', '2024-08-01 11:41:35'),
	(4, 'Steam', 'steam', '01J47KZ0XXPGD410QZJDMGXZRE.png', NULL, '2024-08-01 11:41:46', '2024-08-01 11:41:46'),
	(5, 'Grill', 'grill', '01J47KZ9ZGA1MN1WN8XBXAKPC4.png', NULL, '2024-08-01 11:41:55', '2024-08-01 11:41:55');

-- Dumping structure for table delirecipesbwa.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table delirecipesbwa.ingredients
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.ingredients: ~0 rows (approximately)
INSERT INTO `ingredients` (`id`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Chillies', '01J47M8PFH85MVXHV20S2R1WP1.jpg', NULL, '2024-08-01 11:47:03', '2024-08-01 11:47:03'),
	(2, 'Big Meats', '01J47M9KC3DZZ31JHGY1DVX2FA.jpg', NULL, '2024-08-01 11:47:32', '2024-08-01 11:47:49'),
	(3, 'Raw Eggs', '01J47MBTA2RN0KR554SQJT9XZ1.jpg', NULL, '2024-08-01 11:48:45', '2024-08-01 11:48:45'),
	(4, 'Pineapple', '01J47MCB6C5EWYNH7WV1BPSNA9.jpg', NULL, '2024-08-01 11:49:02', '2024-08-01 11:49:02');

-- Dumping structure for table delirecipesbwa.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.jobs: ~0 rows (approximately)

-- Dumping structure for table delirecipesbwa.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.job_batches: ~0 rows (approximately)

-- Dumping structure for table delirecipesbwa.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_07_31_145658_create_categories_table', 2),
	(5, '2024_07_31_145755_create_ingredients_table', 2),
	(6, '2024_07_31_145805_create_recipe_authors_table', 2),
	(7, '2024_07_31_145817_create_recipes_table', 2),
	(8, '2024_07_31_145830_create_recipe_ingredients_table', 2),
	(9, '2024_07_31_145840_create_recipe_photos_table', 2),
	(10, '2024_07_31_145851_create_recipe_tutorials_table', 2),
	(11, '2024_08_01_193642_create_personal_access_tokens_table', 3);

-- Dumping structure for table delirecipesbwa.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table delirecipesbwa.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table delirecipesbwa.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `recipe_author_id` bigint unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipes_slug_unique` (`slug`),
  KEY `recipes_category_id_foreign` (`category_id`),
  KEY `recipes_recipe_author_id_foreign` (`recipe_author_id`),
  CONSTRAINT `recipes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipes_recipe_author_id_foreign` FOREIGN KEY (`recipe_author_id`) REFERENCES `recipe_authors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.recipes: ~0 rows (approximately)
INSERT INTO `recipes` (`id`, `name`, `thumbnail`, `url_file`, `url_video`, `about`, `category_id`, `recipe_author_id`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Burger Tebal Makin Hot', '01J47P6H0ZBD2BPSRAP2HX52FA.jpg', '01J47P6H18RB9S4MBPBXMCXHCZ.pdf', 'jR-hMkERlM8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 1, 'burger-tebal-makin-hot', NULL, '2024-08-01 12:20:49', '2024-08-01 12:20:49');

-- Dumping structure for table delirecipesbwa.recipe_authors
CREATE TABLE IF NOT EXISTS `recipe_authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.recipe_authors: ~0 rows (approximately)
INSERT INTO `recipe_authors` (`id`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Verga', '01J47MHJ6GPH2412MV4BBV9R3S.jpeg', NULL, '2024-08-01 11:51:53', '2024-08-01 11:51:53'),
	(2, 'Zeys', '01J47MHWGFD0S3SK2TK8H0SN29.png', NULL, '2024-08-01 11:52:04', '2024-08-01 11:52:04');

-- Dumping structure for table delirecipesbwa.recipe_ingredients
CREATE TABLE IF NOT EXISTS `recipe_ingredients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint unsigned NOT NULL,
  `ingredient_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_ingredients_recipe_id_foreign` (`recipe_id`),
  KEY `recipe_ingredients_ingredient_id_foreign` (`ingredient_id`),
  CONSTRAINT `recipe_ingredients_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipe_ingredients_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.recipe_ingredients: ~0 rows (approximately)
INSERT INTO `recipe_ingredients` (`id`, `recipe_id`, `ingredient_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, NULL, '2024-08-01 12:20:49', '2024-08-01 12:20:49'),
	(2, 1, 3, NULL, '2024-08-01 12:20:49', '2024-08-01 12:20:49'),
	(3, 1, 2, NULL, '2024-08-01 12:20:49', '2024-08-01 12:20:49');

-- Dumping structure for table delirecipesbwa.recipe_photos
CREATE TABLE IF NOT EXISTS `recipe_photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_photos_recipe_id_foreign` (`recipe_id`),
  CONSTRAINT `recipe_photos_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.recipe_photos: ~0 rows (approximately)
INSERT INTO `recipe_photos` (`id`, `photo`, `recipe_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '01J47P6H13QP65YVJBHXTNKEY8.jpg', 1, NULL, '2024-08-01 12:20:49', '2024-08-01 12:20:49'),
	(2, '01J47P6H16VFKXNJD4XPTJX7DR.jpg', 1, NULL, '2024-08-01 12:20:49', '2024-08-01 12:20:49');

-- Dumping structure for table delirecipesbwa.recipe_tutorials
CREATE TABLE IF NOT EXISTS `recipe_tutorials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_tutorials_recipe_id_foreign` (`recipe_id`),
  CONSTRAINT `recipe_tutorials_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.recipe_tutorials: ~0 rows (approximately)
INSERT INTO `recipe_tutorials` (`id`, `name`, `recipe_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Siapkan telur rebus bla bla balaksdkakdaskdsakd', 1, NULL, '2024-08-01 12:22:19', '2024-08-01 12:22:19'),
	(2, 'nah langkah dua gatau dah, bebas dibakar kek, apa kek', 1, NULL, '2024-08-01 12:22:30', '2024-08-01 12:22:30'),
	(3, 'ini juga gatau, bodoamat dah', 1, NULL, '2024-08-01 12:22:37', '2024-08-01 12:22:37'),
	(4, 'finishing guys', 1, NULL, '2024-08-01 12:22:41', '2024-08-01 12:22:41'),
	(5, 'makannn', 1, NULL, '2024-08-01 12:22:44', '2024-08-01 12:22:44');

-- Dumping structure for table delirecipesbwa.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('PeyuHBvtNE02HjJd81Z3BvvZfpKjiDZdNkpouxSY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNU9mMUI1c2pad0NnYlFYQjRaM2JyWWlkN0pOaTZTOWFaRE82dmMxYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkYzhzN2hNQ0RUVk0zLlNZdHFha1ZKZXUuZFAwTWdNT3FJaS5zMnpSQ2Z6dzRZMWRqeGFXTUsiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1722541132);

-- Dumping structure for table delirecipesbwa.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table delirecipesbwa.users: ~0 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Team Delicook', 'verga@gmail.com', NULL, '$2y$12$c8s7hMCDTVM3.SYtqakVJeu.dP0MgMOqIi.s2zRCfzw4Y1djxaWMK', NULL, '2024-08-01 11:31:10', '2024-08-01 11:31:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
