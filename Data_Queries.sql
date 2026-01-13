
-- County-Level Greenhouse Gas Emissions Analysis

-- 1. Per-capita greenhouse gas emissions by county
-- Converts emissions from text to numeric, avoids division by zero,
-- and orders counties by highest emissions per person.
SELECT
    county_state_name,
    population,
    CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)
        / NULLIF(CAST(population AS DOUBLE), 0) AS emissions_per_person
FROM emmisions.default.emissions_data
ORDER BY emissions_per_person DESC;

-- 2. Geographic coordinates with emissions
-- Used for geospatial mapping and visualization.
SELECT
    latitude,
    longitude,
    `GHG emissions mtons CO2e` AS emissions
FROM emmisions.default.emissions_data;

-- 3. Total greenhouse gas emissions by state
-- Aggregates county-level emissions to the state level.
SELECT
    state_abbr,
    SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS total_emissions
FROM emmisions.default.emissions_data
GROUP BY state_abbr
ORDER BY total_emissions DESC;

-- 4. Top 10 counties by total emissions
-- Identifies the highest-emitting counties.
SELECT
    county_state_name,
    population,
    CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) AS total_emissions
FROM emmisions.default.emissions_data
ORDER BY total_emissions DESC
LIMIT 10;
