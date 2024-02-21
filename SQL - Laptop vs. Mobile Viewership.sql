SELECT 
  COUNT(CASE WHEN device_type = 'laptop' THEN user_id END) as laptop_views,
  COUNT(CASE WHEN device_type IN ('tablet', 'phone') THEN user_id END) as mobile_views
FROM viewership
WHERE device_type IN ('tablet', 'phone', 'laptop');
