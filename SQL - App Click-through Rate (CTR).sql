SELECT 
    app_id,
    ROUND(
        CASE 
            WHEN COUNT(CASE WHEN event_type = 'impression' THEN app_id END) > 0
            THEN 100.0 * COUNT(CASE WHEN event_type = 'click' THEN app_id END) / COUNT(CASE WHEN event_type = 'impression' THEN app_id END)
            ELSE 0
        END,
        2 
    ) AS ctr
FROM 
    events
WHERE 
    event_type IN ('click', 'impression')
    AND EXTRACT(YEAR FROM timestamp) = 2022
GROUP BY 
    app_id;
