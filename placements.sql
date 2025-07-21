SELECT s.Name
FROM Students AS s
JOIN Friends AS f ON s.ID = f.ID
JOIN Packages AS p ON s.ID = p.ID
WHERE (
    SELECT Salary FROM Packages WHERE ID = f.Friend_ID
) > p.Salary
ORDER BY (
    SELECT Salary FROM Packages WHERE ID = f.Friend_ID
);
