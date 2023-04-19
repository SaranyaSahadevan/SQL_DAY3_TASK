/* To display which student doesn’t have any courses. */
SELECT
    student_id
FROM
    teacher_1.student_course
WHERE
    student_id NOT IN (
        SELECT
            student_id
        FROM
            teacher_1.student_course
    );