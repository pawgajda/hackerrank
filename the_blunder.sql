/*
SELECT CEILING(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM EMPLOYEES;
*/

SELECT CEILING(
    AVG(Salary) - AVG(
        CAST(
            REPLACE(
                CAST(
                    Salary AS CHAR
                ), '0', ''
            ) AS UNSIGNED
        )
    )
)
FROM EMPLOYEES;
