-- StayWell Assignment 8 | Owners who own two-bedroom properties
-- Three equivalent approaches. The join version is made DISTINCT to avoid duplicate owners.

-- A: IN subquery (original approach)
SELECT *
FROM OWNER
WHERE OWNER_NUM IN (
    SELECT OWNER_NUM FROM PROPERTY WHERE BDRMS = 2
);

-- B: INNER JOIN (replaces misleading LEFT JOIN + WHERE; avoids duplicates)
SELECT DISTINCT
    O.OWNER_NUM, O.LAST_NAME, O.FIRST_NAME,
    O.ADDRESS, O.CITY, O.STATE, O.ZIP_CODE
FROM OWNER O
INNER JOIN PROPERTY P ON O.OWNER_NUM = P.OWNER_NUM
WHERE P.BDRMS = 2;

-- C: EXISTS (original approach)
SELECT *
FROM OWNER O
WHERE EXISTS (
    SELECT 1
    FROM PROPERTY P
    WHERE P.BDRMS = 2
      AND O.OWNER_NUM = P.OWNER_NUM
);
