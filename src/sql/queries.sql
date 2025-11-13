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
--SELECT * FROM species;
--SELECT * FROM climate;
--SELECT * FROM observations;


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
SELECT *
FROM regions
LIMIT 3;

-- MISSION 8
-- Your query here;
