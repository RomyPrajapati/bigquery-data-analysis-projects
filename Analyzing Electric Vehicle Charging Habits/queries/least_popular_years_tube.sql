
--Output: year, journey_type, total_journeys_millions
---Goal: Identify the 5 lowest years by volume for Underground & DLR combined.

-- least_popular_years_tube
SELECT 
  YEAR, 
  JOURNEY_TYPE, 
  SUM(JOURNEYS_MILLIONS) AS total_journeys_millions
FROM TFL.JOURNEYS
WHERE JOURNEY_TYPE = 'Underground & DLR'
GROUP BY YEAR, JOURNEY_TYPE
ORDER BY total_journeys_millions ASC
LIMIT 5;
