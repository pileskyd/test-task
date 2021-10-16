SELECT name, ST_AsText(the_geom) AS the_geom
FROM addr.roads 
ORDER BY length DESC
LIMIT 2 OFFSET 1;