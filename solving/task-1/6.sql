INSERT INTO addr.cities (name, the_geom)
  VALUES ('Артём', ST_Transform(ST_GeometryFromText('POINT(132.180339 43.353047)', 4326), 3857));
  
INSERT INTO addr.cities (name, the_geom)
  VALUES ('Уссурийск', ST_Transform(ST_GeometryFromText('POINT(131.952122 43.797247)', 4326), 3857));
  
INSERT INTO addr.cities (name, the_geom)
  VALUES ('Воронеж', ST_Transform(ST_GeometryFromText('POINT(39.200269 51.660786)', 4326), 3857));