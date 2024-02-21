SELECT tweet_count as tweet_bucket, COUNT(user_id) as users_num
FROM (
    SELECT user_id, COUNT(*) as tweet_count
    FROM tweets
    WHERE EXTRACT(YEAR FROM tweet_date) = 2022
    GROUP BY user_id
) AS UserTweetCounts
GROUP BY tweet_count
ORDER BY tweet_count;
