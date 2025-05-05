-- emirates_airline_popularity

--Output: month, year, rounded_journeys_millions
--Goal: Discover the top 5 months with the highest Emirates Airline journeys.
SELECT 
  MONTH, 
  YEAR, 
  ROUND(SUM(JOURNEYS_MILLIONS), 2) AS rounded_journeys_millions
FROM TFL.JOURNEYS
WHERE 
  JOURNEY_TYPE = 'Emirates Airline' 
  AND JOURNEY_TYPE IS NOT NULL 
  AND JOURNEYS_MILLIONS IS NOT NULL 
GROUP BY MONTH, YEAR
ORDER BY 
  rounded_journeys_millions DESC,
  YEAR ASC
LIMIT 5;