SELECT PARENT.ID, COALESCE(COUNT(CHILD.PARENT_ID),0) AS CHILD_COUNT
FROM ECOLI_DATA AS PARENT 
LEFT JOIN ECOLI_DATA AS CHILD
ON PARENT.ID = CHILD.PARENT_ID
GROUP BY PARENT.ID
ORDER BY PARENT.ID;