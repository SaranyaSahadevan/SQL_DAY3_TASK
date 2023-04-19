/* To display which student doesn't have any grades?. */
SELECT
    student_id
FROM
    teacher_1.student_grade
WHERE
    student_id NOT IN (
        SELECT
            student_id
        FROM
            teacher_1.student_grade
    );