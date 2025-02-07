SELECT 
    Third.ID AS ID
FROM 
    ECOLI_DATA AS First
INNER JOIN 
    ECOLI_DATA AS Second
ON 
    First.ID = Second.PARENT_ID
INNER JOIN 
    ECOLI_DATA AS Third
ON 
    Second.ID = Third.PARENT_ID
WHERE 
    First.PARENT_ID IS NULL -- 1세대의 부모가 없는 조건
ORDER BY 
    Third.ID;