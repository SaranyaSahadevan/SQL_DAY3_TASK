/* To display which parent has more than 1 kid. */
SELECT
    concat(parent.first_name,
           concat(' ', parent.last_name)) AS parent_name
FROM
    teacher_1.parent
WHERE
    parent_id IN (
        SELECT
            parent_id
        FROM
            teacher_1.student
        GROUP BY
            parent_id
        HAVING
            COUNT(parent_id) > 1
    );