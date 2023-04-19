/* To display teachers name, surname combined in one column, calculate teacher age,
display teacher's initials. */
SELECT
    concat(first_name,
           concat(' ', last_name))                                AS name,
    EXTRACT(YEAR FROM sysdate) - EXTRACT(YEAR FROM date_of_birth) AS age,
    concat(substr(first_name, 1, 1),
           substr(last_name, 1, 1))                               AS intiials
FROM
    teacher_1.teacher;