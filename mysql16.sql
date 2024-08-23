-- SQL 형변환
        -- 명시적 형변환과 암시적 형변환이 있다.
        -- 명시적 형변환
        -- cAST 
        -- CONVERT
        -- 둘다 됨
        SELECT AVG(menu_price) FROM tbl_menu;
        SELECT CAST(AVG(menu_price) AS SIGNED INTEGER) AS "평균 메뉴 가격"
        FROM tbl_menu;
        
       
       
       SELECT
			CONVERT(AVG(menu_price), SIGNED INTEGER) AS "평균메뉴 가격"
            FROM tbl_menu;
            
            -- 가능한 데이터 형식
            -- BINARY,CHAR,DATE,DATETIME,DECIMAL,JSON,TIME,INTEGER
            
            SELECT
            CAST("2023$5$30" AS DATE),
            CAST("2023/5/30" AS DATE),
            CAST("2023%5%30" AS DATE),
            CAST("2023@5@30" AS DATE);
            
            -- 메뉴 가ㅕㄱ 구하기alter
            SELECT 
            CONCAT(CAST(menu_price AS CHAR(5)), "원")
            FROM
            tbl_menu;
            
            -- 카테고리별로 메뉴 가격의 합계를 구해서
            -- ( 카테고리 코드~~원) 으로 표시해주세요alter
            
            
            SELECT
            category_code,
            CONCAT(SUM(menu_price ), "원") AS "가격 합계"
            FROM tbl_menu
            GROUP BY -- 그룹바이하면 다묶임
			category_code;
            
            -- 암시적 형변환
            -- 자동으로 내부에서 이루어지는 형변환
            SELECT '1'+'2'; -- 각 문자가 정수로 변환됨.
            select concat(menu_price, "원") FROM tbl_menu;
            SELECT 3 >  "TEXT"; -- 문자는 0으로 변환
            SELECT 4 > "4ds"; -- 문자옆앞에 맨앞에 문자있으면 정수로 반환