-- Find the photos that have received more likes than the average number of likes per photo. Display photo_id and like_count
SELECT * FROM(
	SELECT 
	photo_id,
	count(user_id) as likes,
	ROUND(AVG(count(user_id)) OVER()) as avg_likes 
	from likes GROUP BY photo_id
) T
WHERE likes>avg_likes;