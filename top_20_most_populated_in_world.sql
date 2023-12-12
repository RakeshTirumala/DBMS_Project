select 
name, pop_max,ST_AsText(geom) as geometry
from ne_50m_populated_places
order by pop_max desc
limit 20;