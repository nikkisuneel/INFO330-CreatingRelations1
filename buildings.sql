CREATE TABLE buildings (
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE,
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

INSERT INTO buildings (name, shortname) VALUES ('Mary Gates Hall', 'MGH');
INSERT INTO buildings (name, shortname) VALUES ('Johnson Hall', 'JHN');
INSERT INTO buildings (name, shortname) VALUES ('Guggenheim Hall', 'GWN');
INSERT INTO buildings (name, shortname) VALUES ('Johnson Hall', 'JHN');

CREATE TABLE rooms (
  id INTEGER PRIMARY KEY,
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
);

INSERT INTO rooms VALUES (400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40);
INSERT INTO rooms VALUES (500, (SELECT id FROM buildings WHERE name="Johnson Hall"), 50);
INSERT INTO rooms VALUES (700, (SELECT id FROM buildings WHERE name="Guggenheim Hall"), 70);
INSERT INTO rooms VALUES (600, (SELECT id FROM buildings WHERE name="Johnson Hall"), 60);
INSERT INTO rooms VALUES (400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40);
INSERT INTO rooms VALUES (400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40);

