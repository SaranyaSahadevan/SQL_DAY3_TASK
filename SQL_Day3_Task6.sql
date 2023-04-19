/* To display amount of lectures in each course */
SELECT
    course_id,
    COUNT(lecture_date) AS number_of_lectures
FROM
    teacher_1.course_schedule
GROUP BY
    course_id;