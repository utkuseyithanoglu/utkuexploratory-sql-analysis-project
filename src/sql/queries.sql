-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

--SELECT * FROM regions;
-- regions    id             name    country
--SELECT * FROM species;
-- species / id       scientific_name               common_name       genus        family      order_name
--SELECT * FROM climate;
-- id, region_id, avg_temperature, precipitation
--SELECT * FROM observations;
-- id  species_id  region_id     observer observation_date   latitude  longitude  count

-- MISSION 1
-- Your query here;
SELECT * 
FROM observations 
LIMIT 10;

-- MISSION 2
--Which region identifiers (region_id) appear in the data?
-- Your query here;
SELECT distinct region_id
FROM observations ;

-- MISSION 3
--How many distinct species (species_id) have been observed?
--Combine COUNT with DISTINCT to avoid counting duplicates.
-- Your query here;
SELECT count(DISTINCT species_id)
FROM observations;

-- MISSION 4
--How many observations are there for the region with region_id = 2?
--Apply a condition with WHERE.
-- Your query here;
SELECT *
FROM observations
WHERE region_id = 2;


-- MISSION 5
--How many observations were recorded on 1998-08-08?
--Filter by exact date using equality.
-- Your query here;
SELECT *
FROM observations
WHERE observation_date = 1998-08-08;

-- MISSION 6
--Which region_id has the most observations?
--Group by region and count how many times each appears.
-- Your query here;
SELECT region_id,regions.name,COUNT(region_id) as a
FROM observations
LEFT JOIN regions
ON observations.region_id = regions.id
Group by region_id
ORDER BY a DESC
LIMIT 1;

-- MISSION 7
-- Your query here;
--What are the 5 most frequent species_id?
--Group, order by descending count, and limit the result
SELECT species.common_name,species.id,COUNT(observations.id) AS "frequent"
FROM species
JOIN observations
ON species.id =observations.species_id
Group BY (species.common_name)
ORDER BY frequent DESC
LIMIT 5;

-- MISSION 8
--Which species (species_id) have fewer than 5 records?
--Group by species and use HAVING to apply a condition.
-- Your query here;
SELECT species.id,species.common_name,COUNT(observations.species_id) AS "counts"
FROM species
JOIN observations
ON species.id =observations.species_id
Group BY (species.id)
HAVING counts <= 5;
-- Which observers (observer) recorded the most observations?
--Group by observer name and count the records.
SELECT observations.observer,observations.count
FROM observations
GROUP BY (observations.count)
ORDER BY  observations.count DESC
LIMIT 1;
--