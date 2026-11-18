-- KimTay Pet Supplies | Inventory filtering
-- Course assignment query, formatted for presentation.
SELECT ITEM_ID
FROM ITEM
WHERE PRICE > 100
  AND ON_HAND < 10;
