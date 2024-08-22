-- GROUP BY
-- 결과 집합을 특정 열의 값에 따라 그룹화 하는데 사용함.
-- HAVING 을 함께 사용할 수 있음. - 그룹에 대한 조건 적용

SELECT
	category_code
    FROM tbl_menu
     GROUP BY category_code;
    
    -- COUNT() 함수 활용
    SELECT
		category_code,
        count(*) -- 전부 
        FROM tbl_menu
        GROUP BY category_code;

-- SUM() 함수 활용 가격의 합
SELECT 
	category_code,
    SUM(menu_price)
    FROM tbl_menu
     GROUP BY category_code;
    
    -- AVG()함수 활용 평균값구하기 
    SELECT 
    category_code,
    AVG(menu_price)
    FROM tbl_menu
    GROUP BY category_code;
    
    
    -- 2개 이상의 그룹 생성 두개가 같은것만 그룹화시키겠다.
    SELECT
    menu_price,
    menu_name,
    category_code
    FROM tbl_menu
    GROUP BY
    menu_name,
    menu_price,
    category_code; -- 가격이랑 카테고리가 같은 애들만 묶어준다??
    
    -- HAVING 
    SELECT
    menu_price,
    category_code
    FROM tbl_menu
    GROUP BY
		 menu_price,
		 category_code
        HAVING category_code >=5 AND category_code <= 8;
        -- HAVING 과 WHERE의 차이 해빙은 그룹바이 와함께 함수를 사용가능 시점의 차이
        