--데이터베이스 생성
CREATE DATABASE board;

--데이터베이스 선택
USE board;

--테이블 신규 생성
CREATE TABLE author;

-- author 테이블 신규 생성
CREATE TABLE author(id INT, name VARCHAR(255), 
                    email VARCHAR(255), 
                    pwd VARCHAR(255), 
                    test1 VARCHAR(255), 
                    PRIMARY KEY (id)
                    );


--테이블 목록 조회
SHOW TABLES;

--테이블 컬럼 조회
DESCRIBE author;

-- post 테이블 신규 생성
CREATE TABLE posts(id INT PRIMARY KEY, 
                   title VARCHAR(255),
                   content VARCHAR(255),
                   author_id INT,
                   FOREIGN KEY(author_id) REFERENCES author(id)
                   )

-- 테이블 컬럼 상세 조회
SHOW FULL COLUMNS FROM author;

--- 테이블 생성문 조회
SHOW CREATE TABLE posts;
-- 'CREATE TABLE `posts` (
--   `id` int(11) NOT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `contents` varchar(3000) DEFAULT NULL,
--   `author_id` int(11) DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   KEY `author_id` (`author_id`),
--   CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci'



-- 테이블 제약 조건 조회
SELECT * 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'posts'

-- 테이블 index 조회
SHOW INDEX FROM posts;


-- DDL 
-- CREATE
-- ALTER 컬럼추가, 
ALTER TABLE author ADD column role VARCHAR(50)


-- 필드타입변경
ALTER TABLE author modify column NAME varchar(100) NOT NULL



-- 컬럼 이름변경
ALTER TABLE posts change column content contents varchar(50) NOT NULL



-- 컬럼 삭제
ALTER TABLE author modify column NAME varchar(100) NOT NULL