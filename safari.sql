
DROP TABLE animal;
DROP TABLE assignment;
DROP TABLE enclosure;
DROP TABLE staff;


CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMainenance BOOLEAN 
);

CREATE TABLE assignment(
    id SERIAL PRIMARY KEY,
    staffid INT REFERENCES staff(id),
    enclosureid INT REFERENCES enclosure(id),
    day VARCHAR (255)
);

CREATE TABLE animal(
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosureid INT REFERENCES enclosure(id)
);

--Create Staff

INSERT INTO staff (name, employeeNumber) VALUES ('Zsolt', 345);
INSERT INTO staff (name, employeeNumber) VALUES ('Anna', 346);
INSERT INTO staff (name, employeeNumber) VALUES ('Eoan', 347);
INSERT INTO staff (name, employeeNumber) VALUES ('Richard', 348);
INSERT INTO staff (name, employeeNumber) VALUES ('Ed', 349);
INSERT INTO staff (name, employeeNumber) VALUES ('Colin', 350);

-- Create enclosure

INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Bird enclosure', 30, false);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Elephant Enclosure', 7, false);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Tiger enclosure', 4, true);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Lion enclosure', 6, false);
INSERT INTO enclosure (name, capacity, closedForMainenance) VALUES ('Meerkat enclosure', 100, true);

-- Create assignment

INSERT INTO assignment (staffid, enclosureid, day) VALUES (1, 1, 'Monday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (1, 1, 'Tuesday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (2, 2, 'Tuesday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (3, 2, 'Wednesday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (4, 3, 'Thursday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (4, 1, 'Thursday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (5, 3, 'Friday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (6, 4, 'Saturday');
INSERT INTO assignment (staffid, enclosureid, day) VALUES (6, 5, 'Sunday');

--create animal

INSERT INTO animal (name, type, age, enclosureid) VALUES ('Billy', 'Parrot', 12, 1);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Bob', 'Parrot', 3, 1);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Chris', 'Parrot', 6, 1);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Ann', 'Elephant', 11, 2);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Poppy', 'Elephant', 11, 2);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Tony', 'Tiger', 8, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Dave', 'Tiger', 3, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Patrick', 'Lion', 17, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Phil', 'Lion', 3, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Annabelle', 'Lion', 8, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Bobbie', 'Lion', 5, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Peter', 'Meerkat', 5, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Chrissy', 'Meerkat', 5, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Phil', 'Meerkat', 5, 3);
INSERT INTO animal (name, type, age, enclosureid) VALUES ('Olivia', 'Meerkat', 5, 3);