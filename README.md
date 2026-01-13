# County-Level Greenhouse Gas Emissions Analysis

This project explores **greenhouse gas (GHG) emissions at the U.S. county level**, combining emissions data with population, geographic, energy consumption, and transportation indicators to better understand spatial and per-capita emission patterns.

---

## Project Purpose

The goal of this analysis is to:

- Identify counties with the **highest total greenhouse gas emissions**
- Compare **per-capita emissions** across counties
- Aggregate emissions to the **state level** for comparison
- Enable **geospatial visualization** using latitude and longitude data
- Support data-driven insights into environmental and population-scale impacts

---

## Dataset Description

Each record represents a **county or county-equivalent**.

### Core Data Fields

| Field | Description |
|------|------------|
| County name | County and state identifier |
| State abbreviation | Two-letter U.S. state code |
| Population | Total county population |
| Greenhouse gas emissions | Total emissions measured in metric tons of CO₂ equivalent |
| Latitude / Longitude | Geographic coordinates for mapping |
| Energy consumption | Electricity and fuel usage metrics |
| Transportation activity | Vehicle miles traveled |
| Employment | Total employment within the county |

---

## Key Metrics Analyzed

### Total Emissions
- Measures the **absolute amount** of greenhouse gases emitted by each county
- Useful for identifying major urban or industrial emission centers

### Emissions Per Capita
- Normalizes emissions by population
- Highlights counties with **disproportionately high emissions per resident**

### State-Level Emissions
- Aggregates county data to assess total emissions by state
- Enables cross-state comparisons

### Geographic Distribution
- Uses latitude and longitude to support mapping and spatial analysis
- Facilitates visualization of regional emission patterns

---

## Data Quality & Processing Notes

- Emissions values were originally stored as text and required conversion to numeric format
- Population values of zero were handled carefully to avoid invalid calculations
- Some counties may contain missing or suppressed values due to data availability

---

## Insights & Use Cases

This dataset can be used to:

- Identify **emissions hotspots**
- Compare rural vs. urban emission intensity
- Support environmental policy research
- Power dashboards and GIS-based visualizations
- Serve as a foundation for climate impact studies

---

## Potential Extensions

- Per-capita emissions by state
- Correlation analysis between emissions and:
  - Energy consumption
  - Vehicle miles traveled
  - Employment levels
- Integration with visualization tools such as:
  - Tableau
  - Power BI
  - Python (GeoPandas, Folium)

---

