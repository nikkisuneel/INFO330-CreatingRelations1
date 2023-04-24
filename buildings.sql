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
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  FOREIGN KEY(buildingid) REFERENCES buildings(id)
);

INSERT INTO rooms (number, buildingid, seating) VALUES (400, 2, 40);
INSERT INTO rooms (number, buildingid, seating) VALUES (500, 2, 50);
INSERT INTO rooms (number, buildingid, seating) VALUES (700, 2, 70);
INSERT INTO rooms (number, buildingid, seating) VALUES (600, 2, 60);
INSERT INTO rooms (number, buildingid, seating) VALUES (400, 2, 40);
INSERT INTO rooms (number, buildingid, seating) VALUES (400, 1, 40);
