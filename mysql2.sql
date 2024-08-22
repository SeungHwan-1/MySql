-- ORDER BY
-- SELECT 문과 함께 사용하며, 결과 집합을 특정 열이나 열들의 
-- 값에 따라 정렬하는데 사용한다.alter
-- use menudb;
SELECT 
	menu_code,
    menu_name,
    menu_price
    FROM tbl_menu
    ORDER BY -- 
   -- menu_price ASC; -- ASC 는 오름 차순 정렬
    menu_price DESC; -- DESC는 내림차순정렬
    
    
    SELECT
		menu_code,
        menu_name,
        menu_price
        FROM tbl_menu
        ORDER BY 
        menu_price DESC,
        menu_name ASC;
        
        -- 연산 결과로 결과 집합 정렬
	SELECT 
    menu_code,
    menu_name,
    menu_price,
    (menu_code * menu_price) AS multi -- AS뒤에 이름정해주는것
    FROM
    tbl_menu
    ORDER BY
    menu_code * menu_price DESC;