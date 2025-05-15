-- 创建用户
CREATE USER IF NOT EXISTS 'app_user'@'%' IDENTIFIED BY 'app_password';

-- 授权用户访问所有数据库
GRANT ALL PRIVILEGES ON *.* TO 'app_user'@'%' WITH GRANT OPTION;

-- 刷新权限
FLUSH PRIVILEGES;

-- 创建数据库（如果你希望统一放在一个库中）
CREATE DATABASE IF NOT EXISTS myapp DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 切换到该数据库
USE myapp;

-- 创建用户表
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_users_phone` (`phone`),
  KEY `idx_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 插入数据
INSERT INTO `users` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `phone`, `password`) VALUES 
(5, '2025-03-15 18:54:46.453', '2025-03-15 18:54:46.453', NULL, 'STwKpCtNSn', '13056937890', '$2a$10$4nNCx8aFk24saFJ6.el9WeSLNViu.gGbV68FNpVv.maC6ypReRkrG'),
(6, '2025-03-15 20:05:37.622', '2025-03-15 20:05:37.622', NULL, 'dQcykmzJDM', '13248684099', '$2a$10.CkQ54HuGY7drHcj.xZtcaiP4GSYLIFrvNmRsVK');
