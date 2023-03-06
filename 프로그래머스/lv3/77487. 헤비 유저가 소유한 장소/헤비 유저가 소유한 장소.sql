-- 코드를 입력하세요
SELECT P.ID, P.NAME, P.HOST_ID
FROM PLACES P
JOIN 
(SELECT HOST_ID, COUNT(*) AS CNT
FROM PLACES
GROUP BY HOST_ID
HAVING CNT>=2) P2
ON P.HOST_ID = P2.HOST_ID
ORDER BY P.ID;