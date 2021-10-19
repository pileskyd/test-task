INSERT INTO
  addr.roads (name, the_geom, length)
SELECT
  concat_ws(' - ', A."name", B."name") "name",
  st_makeline(A.the_geom, B.the_geom) the_geom,
  st_length(st_makeline(A.the_geom, B.the_geom)) length
FROM
  addr.cities A,
  addr.cities B
WHERE
  A.id <> B.id
  AND A.id < B.id;