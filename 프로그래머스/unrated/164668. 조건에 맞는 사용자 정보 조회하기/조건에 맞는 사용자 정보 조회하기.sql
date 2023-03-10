-- 코드를 입력하세요
SELECT USED_GOODS_BOARD.WRITER_ID AS USER_ID,
    USED_GOODS_USER.NICKNAME,
    SUM(USED_GOODS_BOARD.PRICE) AS TOTAL_SALES 
FROM USED_GOODS_BOARD JOIN USED_GOODS_USER
ON USED_GOODS_BOARD.WRITER_ID = USED_GOODS_USER.USER_ID
WHERE STATUS LIKE 'DONE'
GROUP BY USER_ID HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES ASC