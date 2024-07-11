-- Find the hierarchical follow relationships up to 3 levels deep. Display follower, followee, level.
WITH CTE AS(
WITH RECURSIVE follow_hierarchy AS (
    SELECT f.follower_id, f.followee_id, 1 AS level
    FROM follows f
    WHERE f.follower_id IN (1)
    UNION ALL
    SELECT fh.follower_id, f.followee_id, fh.level + 1
    FROM follow_hierarchy fh
    JOIN follows f ON fh.followee_id = f.follower_id
    WHERE fh.level < 10
)
SELECT u1.username AS follower, u2.id as followee_id, u2.username AS followee, fh.level
FROM follow_hierarchy fh
JOIN users u1 ON fh.follower_id = u1.id
JOIN users u2 ON fh.followee_id = u2.id
ORDER BY u1.id, fh.level, u2.id)
SELECT follower, followee,followee_id, min(level) FROM CTE
WHERE follower <> followee
GROUP BY follower, followee,followee_id;

-- Further optimized
WITH RECURSIVE follow_hierarchy AS (
    SELECT f.follower_id, f.followee_id, 1 AS level
    FROM follows f
    WHERE f.follower_id IN (1)
    UNION ALL
    SELECT fh.follower_id, f.followee_id, fh.level + 1
    FROM follow_hierarchy fh
    JOIN follows f ON fh.followee_id = f.follower_id
    WHERE fh.level < 10
)
SELECT u1.username AS follower, u2.id AS followee_id, u2.username AS followee, MIN(fh.level) AS level
FROM follow_hierarchy fh
JOIN users u1 ON fh.follower_id = u1.id
JOIN users u2 ON fh.followee_id = u2.id
WHERE u1.username <> u2.username
GROUP BY u1.username, u2.id, u2.username
ORDER BY u1.username, level, u2.id;