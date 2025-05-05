
**Output:** `journey_type`, `total_journeys_millions`  
**Goal:** Identify the most-used transport modes by total volume.  
-- most_popular_transport_types
SELECT 
  JOURNEY_TYPE, 
  SUM(JOURNEYS_MILLIONS) AS total_journeys_millions
FROM TFL.JOURNEYS
GROUP BY JOURNEY_TYPE
ORDER BY total_journeys_millions DESC;