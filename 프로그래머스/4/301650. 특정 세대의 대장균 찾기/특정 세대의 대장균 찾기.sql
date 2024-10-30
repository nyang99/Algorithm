-- 코드를 작성해주세요
WITH RECURSIVE GEN AS (
SELECT ID, PARENT_ID, 1 AS GENERATION
FROM ECOLI_DATA
WHERE PARENT_ID IS NULL
UNION ALL
SELECT C.ID, C.PARENT_ID, P.GENERATION + 1 AS GENERATION
FROM ECOLI_DATA AS C JOIN GEN AS P ON C.PARENT_ID = P.ID)

SELECT ID 
FROM GEN
WHERE GENERATION = 3
ORDER BY 1;