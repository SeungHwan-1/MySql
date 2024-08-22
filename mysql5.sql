-- LIMIT
-- 결과 집합에서 반환할 행의 수를 제한할 수 있다. 
-- 페이지 넘기는 기술같은거에싸용됨

SELECT
menu_name,
menu_code,
menu_price
FROM tbl_menu
ORDER BY 
menu_price DESC, -- 내림차순
menu_name ASC -- 오름차순
 LIMIT 5;
 
 
 SELECT
menu_name,
menu_code,
menu_price
FROM tbl_menu
ORDER BY 
menu_price DESC, -- 내림차순
menu_name ASC -- 오름차순
 LIMIT 1,4; -- 첫번째꺼 빼고 그뒤로 4개 출력
 