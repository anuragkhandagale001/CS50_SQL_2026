SELECT first_name, last_name, height AS "Player Height" FROM players
WHERE birth_state = 'CA'
ORDER BY height DESC
LIMIT 10;
