
DROP SCHEMA IF EXISTS addr CASCADE;
CREATE SCHEMA addr;
COMMENT ON SCHEMA addr IS 'Учебная схема';


CREATE TABLE addr.cities
(
   id serial NOT NULL PRIMARY KEY,
   name character varying(255) NOT NULL UNIQUE,
   the_geom geometry(Point,3857) NOT NULL
);
COMMENT ON TABLE addr.cities IS 'Города';
COMMENT ON COLUMN addr.cities.name IS 'Наименование';

/**
 * Храним геоданные в проецкии Меркатора (3857),
 * но вводим и выводим в человекочитаемой широте-долготе (4326)
 */
INSERT INTO addr.cities (name, the_geom)
  VALUES ('Владивосток', ST_Transform(ST_GeometryFromText('POINT(131.88567 43.11513)', 4326), 3857));
INSERT INTO addr.cities (name, the_geom)
  VALUES ('Москва', ST_Transform(ST_GeometryFromText('POINT(37.61684 55.75081)', 4326), 3857));

