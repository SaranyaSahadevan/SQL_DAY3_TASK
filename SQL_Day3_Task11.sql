/* To display students that have any failed courses (average grade less than 4) */
SELECT
    concat(student.first_name,
           concat(' ', student.last_name)) AS name,
    grade.test_grade
FROM
         teacher_1.student student
    INNER JOIN teacher_1.student_grade grade ON student.student_id = grade.student_id
WHERE
    test_grade < 4;