-- Find the top 3 most active users based on the number of photos they have posted. Display the username and the count of photos for each of these users
SELECT 
users.id as user_id,
users.username as user_name, 
count(photos.id) AS no_of_photos_posted
FROM users JOIN photos
ON users.id = photos.user_id
GROUP BY users.id
ORDER BY no_of_photos_posted DESC
LIMIT 3;