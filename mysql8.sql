
-- SUBQUERIES
-- 다른 쿼리에서 실행되는 쿼리이다. 
-- 일반적인 쿼리가 메인쿼리 쿼리문 안에 쿼리를 작성 이것도 이해못함

SELECT
	menu_code,
    menu_name,
    category_code,
    orderable_status
    FROM tbl_menu
    WHERE
    category_code = (
		SELECT
			category_code
            FROM tbl_menu
            WHERE menu_name = "민트미역국"
            -- 민트미역국의 코드를 가진것들을 출력,
            );
            
            -- 서브쿼리를 활용한 메인 쿼리 이해 못함
            SELECT
            MAX(count),
            FROM 
            (SELECT 			-- FROM절에 쓰려면 별칭을 지어줘야함  
				COUNT(*) AS 'COUNT'
                FROM
                tbl_menu
                GROUP BY category_code) AS countmenu;
                
			SELECT 
                menu_code,
                menu_name,
                menu_price,
                category_code,
                orderable_status
                FROM tbl_menu a
                WHERE
					menu_price > (
                    SELECT
                    AVG(menu_price)
                    FROM tbl_menu
                    WHERE category_code = a.category_code
                    );
    