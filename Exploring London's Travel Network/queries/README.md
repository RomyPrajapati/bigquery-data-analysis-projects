# 🚇 London Transport for London (TfL) Journey Analysis – BigQuery SQL Project

London — or as the Romans called it, *Londinium* — is home to over 8.5 million residents and more than 300 spoken languages. The city's intricate public transport system, managed by **Transport for London (TfL)** since 2000, connects every corner of the city, from the iconic Underground to river ferries and the Emirates Airline cable car.

This project uses SQL and Google BigQuery to explore TfL journey data and uncover insights into public transport usage over time.

---

## 📊 Dataset Overview

**Table:** `TFL.JOURNEYS`

| Column              | Description                                         | Data Type  |
|---------------------|-----------------------------------------------------|------------|
| `MONTH`             | Month of data (1 = January)                         | INTEGER    |
| `YEAR`              | Year of data                                        | INTEGER    |
| `DAYS`              | Number of days in the month                         | INTEGER    |
| `REPORT_DATE`       | Date of report                                      | DATE       |
| `JOURNEY_TYPE`      | Method of transport used (e.g., Bus, Tube, etc.)   | VARCHAR    |
| `JOURNEYS_MILLIONS` | Total journeys made in millions                     | FLOAT      |

---

## 🧠 Project Questions

### 1️⃣ Most Popular Transport Types  
**Output:** `journey_type`, `total_journeys_millions`  
**Goal:** Identify the most-used transport modes by total volume.  
```sql
-- most_popular_transport_types
SELECT 
  JOURNEY_TYPE, 
  SUM(JOURNEYS_MILLIONS) AS total_journeys_millions
FROM TFL.JOURNEYS
GROUP BY JOURNEY_TYPE
ORDER BY total_journeys_millions DESC;
