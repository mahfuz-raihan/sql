/*
Enter your query here.
*/
SELECT DISTINCT CITY FROM STATION
WHERE REGEXP_LIKE(CITY, '^[aeiou]') and REGEXP_LIKE(CITY, '[aeiou]$');
