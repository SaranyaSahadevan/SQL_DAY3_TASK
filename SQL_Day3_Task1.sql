/* To display name of students and their parents */
SELECT
    concat(student.first_name, student.last_name) AS student_name,
    concat(parent.first_name, parent.last_name)   AS parent_name
FROM
         teacher_1.student
    INNER JOIN teacher_1.parent ON student.parent_id = parent.parent_id;