select 
name, pop_max, ST_AsText(geom) as geometry
from
ne_50m_populated_places
WHERE ST_Intersects(
    geom,
    ST_MakeEnvelope(-125.0, 24.0, -66.5, 49.0, 4326))
order by pop_max desc
limit 10;