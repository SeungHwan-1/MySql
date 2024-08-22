-- WHERE 
-- 특정 조건에 맞는 데이터만 선택
-- (예시 현재 판매하고있는 음식 이런식으로)


SELECT  -- 3번 실행 보여주는곳 그리고 ORDER_BY
	menu_name,
    menu_price,
    orderable_status
    FROM tbl_menu -- 1번 실행
    WHERE orderable_status = 'Y'; -- 2번 실행 
    
    SELECT
		menu_name,
        menu_price,
        orderable_status
        FROM tbl_menu
      WHERE   menu_price = 13000;
		-- menu_price != 13000;
      
      -- 대소비교 연산자와 함께 사용
      SELECT
      menu_code,
      menu_name,
      menu_price
      FROM tbl_menu
      WHERE menu_price > 20000;
      
      -- AND 연산자 활용
      
      SELECT
		menu_name,
        menu_price,
        category_code,
        orderable_status
        FROM tbl_menu
        WHERE 
			orderable_status = 'Y' AND
            category_code = 10;
            
            SELECT
            menu_code,
            menu_name,
            category_code,
            orderable_status
            FROM tbl_menu
            WHERE 
            menu_price > 5000 AND
            category_code = 10;
            
             -- OR 연산자 활용
            SELECT
     menu_name,
     menu_price,
     category_code,
     orderable_status
     FROM tbl_menu
     WHERE 
     orderable_status = 'Y' OR
     category_code = 4
     ORDER BY 
     category_code;
     
     -- and가 or보다 우선순위가 높다
     
             SELECT
	 menu_code,
     menu_name,
     menu_price,
     category_code,
     orderable_status
     FROM tbl_menu
     WHERE 
     category_code =4 OR
	 menu_price = 9000 AND 
     menu_code > 10;
     
     -- BETWEEN 연산자 활용
              SELECT
     menu_name,
     menu_price,
     category_code
     FROM tbl_menu
     WHERE 
		menu_price BETWEEN 10000 AND 22000
        ORDER BY 
			menu_price;
            
            -- like 연산자 활용alter
	SELECT
     menu_name,
     menu_price
     FROM tbl_menu
      WHERE  menu_name LIKE '%마늘%' -- 퍼센트 사이에있으면 객체 사이에 퍼센트사이에있을때
      -- 출력 앞에꺼가없으면 퍼센트 맨앞에 앞에껏만 있으면 마지막이 퍼센트속에
      ORDER BY menu_name;
      
      
      
      
      -- IN 연산자 활용 (부정가능)
      
      SELECT 
      menu_name,
      category_code
      FROM tbl_menu
      WHERE category_code IN (4,5,6) -- IN 앞에 NOT붙이면됨
      ORDER BY 
		category_code;
        
        -- is null 연산자 활용
        SELECT
        category_code,
        category_name,
        ref_category_code
        FROM tbl_category
        WHERE ref_category_code IS NULL; -- 제일 상위 카테고리ㅏ는 위에 코드가 널이기때문에 그거 출력할때
        