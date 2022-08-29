-- Is there a syntax error
SELECT
    Hackers.hacker_id,
    Hackers.name,
    sum(Challenges.challenge_id)
FROM
    Hackers AS H,
    Challenges AS C
    JOIN Hackers ON Challenges.hacker_id = Hackers.hacker_id
GROUP BY
    C.hacker_id AS "challengesstudent";