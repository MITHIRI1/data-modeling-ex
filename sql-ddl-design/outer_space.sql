DROP DATABASE IF EXISTS outer_space_revised;

CREATE DATABASE outer_space_revised;

\c outer_space_revised


CREATE TABLE orbital_centre
(
 id SERIAL PRIMARY KEY,
 name TEXT NOT NULL,
 galaxy TEXT
);

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around INTEGER REFERENCES orbital_centre
);

CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  planet_id INTEGER REFERENCES planets
);



INSERT INTO orbital_centre
(name, galaxy)
VALUES
('The Sun', 'Milky Way'),
('Proxima Centauri', 'Milky Way'),
('Gliese 876', 'Milky Way');


INSERT INTO planets
  (name, orbital_period_in_years, orbits_around)
VALUES
  ('Earth', 1.00, 1),
  ('Mars', 1.88, 1),
  ('Venus', 0.62, 1),
  ('Neptune', 164.8, 1),
  ('Proxima Centauri b', 0.03, 2),
  ('Gliese 876 b', 0.23, 3);


INSERT INTO moons
(name, planet_id)
VALUES
('The Moon', 1),
('Phobos', 2),
('Deimos', 2),
('Naiad', 4),
('Despina', 4),
('Galatea', 4),
('Larissa', 4),
('S/2004 N 1', 4),
('Proteus', 4),
('Triton', 4),
('Nereid', 4),
('Halimede', 4),
('Sao', 4),
('Laomedeia', 4),
('Psamathe', 4),
('Neso', 4);