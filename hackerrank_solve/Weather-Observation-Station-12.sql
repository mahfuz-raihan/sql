/*
Enter your query here.
*/
SELECT DISTINCT CITY FROM STATION
WHERE NOT (REGEXP_LIKE(CITY, '^[aeiou]') or REGEXP_LIKE(CITY, '[aeiou]$'));
