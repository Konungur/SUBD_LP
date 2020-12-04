ALTER TABLE Planes
	DROP COLUMN NumberOfEngines;

ALTER TABLE Planes
	ALTER COLUMN Engine char(15);

SELECT * FROM Planes