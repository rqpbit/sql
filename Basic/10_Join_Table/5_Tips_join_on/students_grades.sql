SELECT
    CASE
        WHEN B.GRADE >7 THEN A.NAME
        ELSE 'NULL'
    END,
    B.GRADE,
    A.MARKS
FROM STUDENTS A
JOIN GRADES B

ON A.MARKS >= B.MIN_MARK AND A.MARKS <= B.MAX_MARK
--  A=23 >= 20 AND A=23 <= 29

ON A.MARKS BETWEEN B.MIN_MARK and B.MAX_MARK
-- A=23 BETWEEN 20 AND 29


ORDER BY 
    B.GRADE DESC,
    A.NAME ASC
;


-- Students (table for main/input)
-- https://s3.amazonaws.com/hr-challenge-images/12891/1443818093-b79f376ec1-3.png

-- Grades (table for range of ranking)
-- https://s3.amazonaws.com/hr-challenge-images/12891/1443818137-69b76d805c-2.png