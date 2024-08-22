-- DISTINCT
-- 중복된 값을 제거하는데 사용된다, 컬럼에 있는 컬럼값들의 종류를 쉽게 파악할 수 있따.

-- 단일 컴럼 중복제거
SELECT
	DISTINCT category_code,
    menu_name
    FROM tbl_menu
    ORDER BY category_code;
    
    -- 다중 컬럼 중복제거
    SELECT DISTINCT
	category_code, -- and 같은느낌 두개완전히 같은거 제거
    orderable_status
    FROM tbl_menu;

