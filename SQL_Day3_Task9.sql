/* To display email domains (everything after @)?. */

    SELECT
    SUBSTR(teacher.work_email, INSTR(teacher.work_email, '@') + 1) 
FROM
    teacher_1.teacher
UNION
SELECT
   SUBSTR(email, INSTR(email, '@') + 1) 
FROM
    teacher_1.student
UNION
SELECT
   SUBSTR(email, INSTR(email, '@') + 1) 
FROM
    teacher_1.parent;