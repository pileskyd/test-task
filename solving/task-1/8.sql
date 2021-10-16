/**
 * Задание 8.
 * Храним геоданные в проецкии Меркатора (3857),
 * но вводим и выводим в человекочитаемой широте-долготе (4326)
 */
INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Владивосток - Москва', ST_Transform(ST_GeometryFromText('LINESTRING(131.88567 43.11513, 37.61684 55.75081)', 4326), 3857), 6418000);

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Владивосток - Артём', ST_Transform(ST_GeometryFromText('LINESTRING(131.88567 43.11513, 132.180339 43.353047)', 4326), 3857), 30000);

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Владивосток - Уссурийск', ST_Transform(ST_GeometryFromText('LINESTRING(131.88567 43.11513, 131.952122 43.797247)', 4326), 3857), 73000);

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Владивосток - Воронеж', ST_Transform(ST_GeometryFromText('LINESTRING(131.88567 43.11513, 39.200269 51.660786)', 4326), 3857), 6563000);

-- 

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Москва - Артём', ST_Transform(ST_GeometryFromText('LINESTRING(37.61684 55.75081, 132.180339 43.353047)', 4326), 3857), 6414000);

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Москва - Уссурийск', ST_Transform(ST_GeometryFromText('LINESTRING(37.61684 55.75081, 131.952122 43.797247)', 4326), 3857), 6362000);

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Москва - Воронеж', ST_Transform(ST_GeometryFromText('LINESTRING(37.61684 55.75081, 39.200269 51.660786)', 4326), 3857), 467000);

-- 

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Артём - Уссурийск', ST_Transform(ST_GeometryFromText('LINESTRING(132.180339 43.353047, 131.952122 43.797247)', 4326), 3857), 52000);

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Артём - Воронеж', ST_Transform(ST_GeometryFromText('LINESTRING(132.180339 43.353047, 39.200269 51.660786)', 4326), 3857), 6562000);

-- 

INSERT INTO addr.roads (name, the_geom, length)
  VALUES ('Уссурийск - Воронеж', ST_Transform(ST_GeometryFromText('LINESTRING(131.952122 43.797247, 39.200269 51.660786)', 4326), 3857), 6518000);