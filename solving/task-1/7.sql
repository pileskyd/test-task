CREATE TABLE addr.roads
(
   id serial NOT NULL PRIMARY KEY,
   the_geom geometry(LINESTRING,3857) NOT NULL,
   length integer NOT NULL,
   name character varying(255) NOT NULL UNIQUE
);

COMMENT ON TABLE addr.roads IS 'Города';
COMMENT ON COLUMN addr.roads.name IS 'Город1 - Город2';
COMMENT ON COLUMN addr.roads.length IS 'Длина дороги в метрах';