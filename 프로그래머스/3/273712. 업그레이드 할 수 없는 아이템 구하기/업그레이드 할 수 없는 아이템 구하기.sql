SELECT I.ITEM_ID, I.ITEM_NAME, I.RARITY
FROM ITEM_INFO I
LEFT JOIN ITEM_TREE T ON I.ITEM_ID = T.PARENT_ITEM_ID
WHERE PARENT_ITEM_ID IS NULL
ORDER BY ITEM_ID DESC;