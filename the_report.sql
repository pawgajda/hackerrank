SELECT
    CASE 
        WHEN Grades.Grade >= 8 THEN Students.Name
        ELSE NULL
    END as name,
    Grades.Grade,
    Students.Marks
FROM Students
JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grades.Grade DESC,
    CASE
        WHEN Grades.Grade >= 8 THEN Students.Name
        ELSE NULL
    END ASC,
    CASE
        WHEN Grades.Grade < 8 THEN Students.Marks
        ELSE NULL
    END ASC;
