CREATE TABLE courses (
  code TEXT(40) PRIMARY KEY,
  description TEXT(400),
  start DATE NOT NULL,
  end DATE NOT NULL,
  CHECK (length(code) >= 7),
  CHECK (end > start)
);

