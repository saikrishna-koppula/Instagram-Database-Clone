-- For each user, calculate their rank in terms of the number of comments they have made on each photo. Display username, photo_id, comment_count, and rank

SELECT * FROM (
	SELECT 
	u.username,
	c.photo_id,
	count(c.id) as comment_count,
	ROW_NUMBER() OVER(PARTITION BY photo_id ORDER BY count(c.id) DESC) as user_rank
	FROM users u JOIN comments c
		ON u.id = c.user_id
	GROUP BY u.username,c.photo_id
	ORDER BY photo_id, user_rank
) T
WHERE user_rank = 1;