/* To display all teacher, student, parent names, surnames, emails (work email for teachers)*/
SELECT
    concat(teacher.first_name,
           concat(' ', teacher.last_name)),
    teacher.work_email
FROM
    teacher_1.teacher
UNION
SELECT
    concat(student.first_name,
           concat(' ', student.last_name)),
    student.email
FROM
    teacher_1.student
UNION
SELECT
    concat(parent.first_name,
           concat(' ', parent.last_name)),
    parent.email
FROM
    teacher_1.parent;