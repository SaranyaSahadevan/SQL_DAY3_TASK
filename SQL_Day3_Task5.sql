/* To display average indivudal student grade across all courses. */
SELECT
    round(AVG(test_grade)) AS average_grades,
    student_id
FROM
    teacher_1.student_grade
GROUP BY
    student_id
ORDER BY
    student_id;