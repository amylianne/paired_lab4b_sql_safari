# Lab - create an SQL database and write queries 
-- -- MVP 
--SELECT * FROM animal WHERE enclosureid = 1;
--SELECT * FROM staff LEFT JOIN assignment ON staff.id = assignment.staffid WHERE assignment.enclosureid = 1;

-- -- EXTENSION 1 
-- The names of staff working in enclosures which are closed for maintenance

-- SELECT staff.name, staff.id AS staffNumber, assignment.staffid, enclosure.name AS animalEnclosure, closedForMainenance 
-- FROM staff LEFT JOIN assignment ON staff.id = assignment.staffid
-- LEFT JOIN enclosure 
-- ON assignment.enclosureid = enclosure.id 
-- WHERE closedForMainenance = true;

-- -- EXTENSION 2
-- The name of the enclosure where the oldest animal lives. If there are two animals who are the same age choose the first one alphabetically.

-- SELECT MAX(animal.age), enclosure.name 
-- FROM animal LEFT JOIN enclosure ON enclosure.id = animal.enclosureid
-- GROUP BY animal.age, enclosure.name
-- LIMIT 1;

-- -- EXTENSION 3
-- The number of different animal types a given keeper has been assigned to work with.

--  SELECT COUNT(DISTINCT animal.type) AS TypesOfAnimals, staff.name
--  FROM staff INNER JOIN assignment ON staff.id = assignment.staffid
--  INNER JOIN animal ON assignment.enclosureid = animal.enclosureid
--  GROUP BY staff.name;

-- -- -- EXTENSION 4
-- -- The number of different keepers who have been assigned to work in a given enclosure

-- SELECT COUNT(DISTINCT enclosure.name) AS TypesOfEnclosures, staff.name
--  FROM staff INNER JOIN assignment ON staff.id = assignment.staffid
--  INNER JOIN enclosure ON assignment.enclosureid = enclosure.id
--  GROUP BY staff.name;

-- -- EXTENSION 5
-- The names of the other animals sharing an enclosure with a given animal (eg. find the names of all the animals sharing the big cat field with Tony)

SELECT e.name, a.name AS name
FROM animal AS a RIGHT JOIN enclosure AS e ON e.id = a.enclosureid
WHERE e.id = 3;
