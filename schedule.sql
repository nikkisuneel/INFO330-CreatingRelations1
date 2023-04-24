CREATE TABLE schedule (
    id INTEGER PRIMARY KEY,
    coursecode TEXT NOT NULL REFERENCES courses (coursecode),
    roomid INTEGER NOT NULL REFERENCES room (id),
    timeslotid INTEGER NOT NULL REFERENCES timeslots (id),
    UNIQUE (
        roomid,
        timeslotid
    )
);
