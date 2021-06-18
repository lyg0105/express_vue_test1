-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        10.5.9-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- nodejs_sample1 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `nodejs_sample1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `nodejs_sample1`;

-- 테이블 nodejs_sample1.board_list 구조 내보내기
CREATE TABLE IF NOT EXISTS `board_list` (
  `board_ymd` varchar(8) CHARACTER SET utf8 NOT NULL COMMENT '년월일',
  `board_seq` int(10) unsigned NOT NULL COMMENT '순번',
  `board_title` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '제목',
  `board_content` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '내용',
  `board_create_date` datetime DEFAULT NULL COMMENT '작성일',
  `board_update_date` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`board_ymd`,`board_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='게시판';

-- 테이블 데이터 nodejs_sample1.board_list:~0 rows (대략적) 내보내기
DELETE FROM `board_list`;
/*!40000 ALTER TABLE `board_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_list` ENABLE KEYS */;

-- 테이블 nodejs_sample1.test_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `test_user` (
  `user_seq` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '순번',
  `user_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '이름',
  `user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '아이디',
  `user_pw` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '암호',
  `user_create_date` datetime DEFAULT NULL,
  `user_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='유저';

-- 테이블 데이터 nodejs_sample1.test_user:~2 rows (대략적) 내보내기
DELETE FROM `test_user`;
/*!40000 ALTER TABLE `test_user` DISABLE KEYS */;
INSERT INTO `test_user` (`user_seq`, `user_name`, `user_id`, `user_pw`, `user_create_date`, `user_update_date`) VALUES
	(1, '용용', 'lyg', '1', '2021-05-25 15:23:08', '2021-05-25 15:23:09'),
	(8, '111', '222', '333', NULL, NULL);
/*!40000 ALTER TABLE `test_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
