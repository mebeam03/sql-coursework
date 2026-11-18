-- KimTay Pet Supplies | Customer filtering with a subquery
-- Course assignment query, formatted for presentation.
SELECT CUST_ID, FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE POSTAL IN (
    SELECT POSTAL
    FROM SALES_REP
)
AND REP_ID = '05';
