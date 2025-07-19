SELECT ROUND(
    SQRT(
        POW(a - b, 2) + POW(c - d, 2)
    ), 4)
FROM (
    SELECT MIN(LAT_N) as a,
        MAX(LAT_N) as b,
        MIN(LONG_W) as c,
        MAX(LONG_W) as d
    FROM STATION
) AS SUBQUERY;
