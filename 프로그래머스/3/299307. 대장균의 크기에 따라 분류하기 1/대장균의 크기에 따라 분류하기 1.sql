SELECT ID, (CASE
           WHEN SIZE_OF_COLONY <= 100 THEN 'LOW'
           WHEN 1000 < SIZE_OF_COLONY THEN 'HIGH'
           ELSE 'MEDIUM'
           END) AS SIZE
FROM ECOLI_DATA 
ORDER BY ID;