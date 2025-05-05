### 1️⃣ Unique Shared Users per Garage  
**Output:** `garage_id`, `num_unique_users`  
**Purpose:** Identify garages with high usage of shared charging stations.  
```sql
-- unique_users_per_garage
SELECT 
  garage_id,
  COUNT(DISTINCT user_id) AS num_unique_users
FROM VEHICLES.CHARGING_SESSIONS
WHERE user_type = 'Shared'
GROUP BY garage_id
ORDER BY num_unique_users DESC;