-- Find the most recent comment made by each user. Display username, comment_text, and comment_date
SELECT u.username, c.comment_text, c.created_at AS comment_date
FROM users u
JOIN comments c ON u.id = c.user_id
WHERE c.created_at = (
    SELECT MAX(c2.created_at)
    FROM comments c2
    WHERE c2.user_id = c.user_id
); 
/* 	
	This is correct but if the comment date is same, then it returns all the comments for that user. 
	since we used now as the time when we entered data into the table using a single query,
	all the times for comment date are same. So now what I am gonna do is, limit to one comment per user based on the comment text.
*/	

SELECT 
    username,
    comment_text,
    comment_date
FROM (
    SELECT 
        u.username,
        c.comment_text,
        c.created_at AS comment_date,
        ROW_NUMBER() OVER (PARTITION BY u.id ORDER BY c.created_at DESC) AS rn
    FROM 
        users u
	JOIN 
        comments c ON u.id = c.user_id
) ranked_comments
WHERE 
    rn = 1;