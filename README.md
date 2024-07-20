# Instagram-Database-Clone
This database is a set of basic tables that could be used to form the Instagram application and its functionality.

I created it to practice various forms of analytical queries in SQL. Below are some of the analytical questions I could answer using this database using the advanced concepts of SQL. I have taken some advanced concepts in SQL and started framing my own questions that would require me to use the advanced concepts. This pattern of thinking helped me put my thoughts more into business use cases rather than just into finding a technical solution to the problem.

Below, I have given the question I created and also the concept of SQL that is required to solve that question.

1. **Window Function** - Find the top 3 most active users based on the number of photos they have posted. Display the username and the count of photos for each of these users.
2. **Window Function with Partition** - For each user, calculate their rank in terms of the number of comments they have made on each photo. Display username, photo_id, comment_count, and rank.
3. **Self Join** - Find pairs of users who follow each other. Display the follower_username and followee_username.
4. **Cross Join** - Find the number of likes for each photo on each day. Display photo_id, like_date, and like_count
5. **Sub Queries & Aggregations** - Find the photos that have received more likes than the average number of likes per photo. Display photo_id and like_count
6. **Common Table Expressions (CTEs)** - Using CTEs, find the top 5 tags based on the number of photos associated with them. Display tag_name and photo_count
7. **Advanced Joins and Aggregations** - Find the most recent comment made by each user. Display username, comment_text, and comment_date
8. For each user, find the top 2 most liked photos they have posted. Display username, photo_id, like_count, and rank
9. **Recursive CTE for Hierarchical Data** - Find the hierarchical follow relationships up to 3 levels deep. Display follower, followee, level.
10. Find the average number of likes per photo for each user and the overall average number of likes per photo. Display username, user_avg_likes, and overall_avg_likes.
11. Identify users who have liked every photo posted by another user. Display liker_username and likee_username.
12. Find photos that have never been commented on by the user who posted them. Display photo_id and poster_username.
13. Calculate the average number of comments per photo for each user, and find users who have an above-average number of comments per photo compared to the overall average. Display username and user_avg_comments.
