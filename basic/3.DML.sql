-- INSERT
insert into author(id, name, pwd, role) values(2, "kim", 123123, "123");


-- SELECTE


-- UPDATE


-- DELEATE


-- 이름 중복제거하고 조회
SELECT DISTINCT name FROM author;

-- order by
SELECT * FROM author ORDER BY name

-- order by 멀티 : 먼저 쓴 컬럼 우선 정렬. (디폴트 asc)
SELECT * FROM author ORDER BY name, email

-- Limit number = 결과값의 개수를 정함
SELECT * FROM author ORDER BY id DESC LIMIT 2

-- alias 


-- alias 생략 
