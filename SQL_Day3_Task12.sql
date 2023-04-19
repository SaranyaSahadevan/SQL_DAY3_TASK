/* To display Which teachers were hired in last 5 years */

SELECT
    concat(teacher.first_name,
           concat(' ', teacher.last_name)) AS name,
    date_of_joining
FROM
    teacher_1.teacher
WHERE
    date_of_joining > sysdate - 5 * 365;