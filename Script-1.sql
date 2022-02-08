SELECT destination,
passanger, -- Hello
time as 'The Time'
FROM dataset_1 
WHERE temperature = '80'
AND passanger = 'Alone'
OR destination = 'Home'
ORDER by time ASC 
LIMIT 80;

SELECT destination, time, 
AVG(temperature), 
SUM(temperature), 
COUNT(temperature),
COUNT(DISTINCT temperature)
FROM dataset_1 d
WHERE time <> '10PM'
GROUP BY destination, time
ORDER BY time;

SELECT *
FROM dataset_1 d 
UNION ALL
SELECT *
FROM table_to_union;

SELECT DISTINCT destination
FROM dataset_1 d;

SELECT DISTINCT destination
FROM 
(
SELECT *
FROM dataset_1 d 
UNION ALL
SELECT *
FROM table_to_union);
SELECT *
FROM table_to_union;

SELECT *
FROM table_to_join ttj;

SELECT destination, d.time, ttj.part_of_day
FROM dataset_1 d 
LEFT JOIN table_to_join ttj 
ON d.time = ttj.time;

SELECT DISTINCT temperature
FROM dataset_1 d 
WHERE temperature BETWEEN 29 AND 75;

SELECT occupation
FROM dataset_1 d 
WHERE occupation IN ('sales & Related', 'Management');
SELECT 
destination,
weather,
AVG(temperature) OVER (PARTITION BY weather) AS 'avg_temp_by'
FROM dataset_1 d;

SELECT 
destination,
weather,
RANK () OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1 d;


SELECT 
destination,
weather,
RANK () OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1 d;



SELECT 
destination,
weather,
DENSE_RANK () OVER (PARTITION BY weather ORDER BY destination) AS 'avg_temp_by_weather'
FROM dataset_1 d;











