-- Find pairs of users who follow each other. Display the follower_username and followee_username.
SELECT 
u1.username AS follower_username, 
u2.username AS followee_username
FROM follows f1 JOIN follows f2 
	ON f1.follower_id = f2.followee_id AND f1.followee_id = f2.follower_id
JOIN users u1 ON f1.follower_id = u1.id
JOIN users u2 ON f1.followee_id = u2.id
-- WHERE u1.username < u2.username. # This is used if you want the combinations to be uniques. But I don't need the combinations unique here.
ORDER BY u1.username, u2.username; 