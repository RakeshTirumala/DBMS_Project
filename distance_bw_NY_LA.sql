SELECT
  a1.name,
  a2.name,
  ST_Distance(
    ST_Transform(a1.geom, 32610),
    ST_Transform(a2.geom, 32610)
  ) / 1609.344 as distance_miles
FROM 
  ne_50m_populated_places a1,
  ne_50m_populated_places a2
WHERE
  a1.name = 'New York' AND a2.name = 'Los Angeles'
order by distance_miles asc
limit 1
;