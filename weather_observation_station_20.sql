/*
MySQL Sytnax, Calculating Mean:
*/
SET @rowindex := -1;

SELECT ROUND(AVG(SUBQUERY.LAT_N), 4) AS Median
FROM (
    SELECT @rowindex:=@rowindex + 1 AS rowindex,
        LAT_N
    FROM STATION
    ORDER BY LAT_N
) AS SUBQUERY
WHERE SUBQUERY.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));
