CREATE DATABASE cine;

USE cine;

CREATE Table peliculas
(
  id             INT AUTO_INCREMENT PRIMARY KEY,
  titulo         VARCHAR(200)  NOT NULL,
  duracionmin    SMALLINT NOT NULL,
  clasificacion  ENUM('APT','+14','+18') NOT NULL DEFAULT 'APT',
  alanzamiento   CHAR(4) NOT NULL
)ENGINE = INNODB;

INSERT INTO peliculas (titulo, duracionmin, clasificacion, alanzamiento)
  VALUES
  ('The Matrix', 136, 'APT', '1999'),
  ('Inception', 148, 'APT', '2010'),
  ('Titanic', 195, 'APT', '1997'),
  ('The Godfather', 175, 'APT', '1972'),
  ('Toy Story', 81, 'APT', '1995-');

  SELECT * FROM peliculas; 