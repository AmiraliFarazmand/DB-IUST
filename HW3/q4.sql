-- ...
-- students (student_id, name)
-- friends (student_id, friend_id)
-- db_grades (student_id, grade)
-- ...
-- 
-----------------------------------------------------------
-- الف
SELECT name, COUNT(*) AS c
FROM students s JOIN friends f ON s.student_id = f.student_id
GROUP BY s.student_id
ORDER BY c DESC;
-----------------------------------------------------------
-- ب
SELECT s.* 
FROM students s JOIN db_grades d_s1 ON d_s1.student_id = s.student_id
WHERE EXISTS (
    SELECT * 
    FROM friends f JOIN db_grades d_s2 ON f.friend_id = d_s2.student_id 
    WHERE f.student_id = s.student_id AND d_s2.grade >= 10)  AND d_s1.grade < 10;
-----------------------------------------------------------
-- پ
SELECT s.*
FROM students s
WHERE NOT EXISTS (
    SELECT * 
    FROM friends f JOIN db_grades d ON f.friend_id = d.student_id 
    WHERE f.student_id = s.student_id AND d.grade >= 10);
-----------------------------------------------------------
-- ت
SELECT s.* 
FROM students s JOIN db_grades d1 ON d1.student_id = s.student_id
WHERE EXISTS (
    SELECT * 
    FROM friends AS f1 JOIN db_grades AS d2 ON f1.friend_id = d2.student_id 
    WHERE f1.student_id = s.student_id AND d2.grade > d1.grade) 
    AND EXISTS (
        SELECT * 
        FROM friends AS f2 JOIN db_grades AS d3 ON f2.friend_id = d3.student_id 
        WHERE f2.student_id = s.student_id AND d3.grade < d1.grade);
-----------------------------------------------------------







