/* To display list of active student ids where study class is 10. */
SELECT
    concat(first_name,
           concat(' ', last_name))                                AS name,
    EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM date_of_birth) AS age
FROM
    teacher_1.student;