--SELECT * FROM animal WHERE enclosureid = 1;
--SELECT * FROM staff LEFT JOIN assignment ON staff.id = assignment.staffid WHERE assignment.enclosureid = 1;

-- SELECT staff.name, staff.id AS staffNumber, assignment.staffid, enclosure.name AS animalEnclosure, closedForMainenance 
-- FROM staff LEFT JOIN assignment ON staff.id = assignment.staffid
-- LEFT JOIN enclosure 
-- ON assignment.enclosureid = enclosure.id 
-- WHERE closedForMainenance = true;