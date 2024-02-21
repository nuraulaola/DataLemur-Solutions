SELECT user_id 
FROM emails
INNER JOIN texts on emails.email_id = texts.email_id
WHERE texts.signup_action = 'Confirmed'
AND AGE(action_date, signup_date) = '1 day'::interval;
