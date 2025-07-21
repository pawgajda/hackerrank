SELECT h.hacker_id,
    h.name,
    COUNT(c.challenge_id) AS challenge_count
FROM Hackers AS h
JOIN Challenges AS c
    ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING challenge_count = (
    SELECT MAX(ct.challenge_count)
    FROM (
        SELECT COUNT(challenge_id) AS challenge_count
        FROM Challenges
        GROUP BY hacker_id
    ) AS ct
) OR challenge_count IN (
    SELECT ct.challenge_count
    FROM (
        SELECT COUNT(challenge_id) AS challenge_count
        FROM Challenges
        GROUP BY hacker_id
    ) AS ct
    GROUP BY ct.challenge_count
    HAVING COUNT(ct.challenge_count) = 1
)
ORDER BY challenge_count DESC, h.hacker_id;
