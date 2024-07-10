# Instagram-Database-Clone
This database is a clone of the basic tables from Instagram.

I created it to practice various forms of analytical queries in SQL. Below are some of the analytical questions I was able to answer using this database using the advanced concepts of SQL.

1. Find the top 3 most active users based on the number of photos they have posted. Display the username and the count of photos for each of these users.
2. For each user, calculate their rank in terms of the number of comments they have made on each photo. Display username, photo_id, comment_count, and rank.
3. Find pairs of users who follow each other. Display the follower_username and followee_username.
4. Find the number of likes for each photo on each day. Display photo_id, like_date, and like_count
5. Find the photos that have received more likes than the average number of likes per photo. Display photo_id and like_count
6. Using CTEs, find the top 5 tags based on the number of photos associated with them. Display tag_name and photo_count
7. Find the most recent comment made by each user. Display username, comment_text, and comment_date
8. For each user, find the top 2 most liked photos they have posted. Display username, photo_id, like_count, and rank
9. Find the hierarchical follow relationships up to 3 levels deep. Display follower, followee, level.
10. Find the average number of likes per photo for each user and the overall average number of likes per photo. Display username, user_avg_likes, and overall_avg_likes.
11. Identify users who have liked every photo posted by another user. Display liker_username and likee_username.
12. Find photos that have never been commented on by the user who posted them. Display photo_id and poster_username.
13. Calculate the average number of comments per photo for each user, and find users who have an above-average number of comments per photo compared to the overall average. Display username and user_avg_comments.
