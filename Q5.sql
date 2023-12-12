SELECT
ST_Area(geom::geography)* 3.861e-7 AS area_in_sq_miles,
geom
FROM ne_50m_urban_areas
WHERE ST_Intersects(
    geom,
    ST_MakeEnvelope(-125.0, 24.0, -66.5, 49.0, 4326))
order by area_in_sq_miles desc
limit 10;