SET SHOWPLAN_ALL ON;
GO
SELECT PlaneID, Capacity FROM Planes
WHERE Capacity > 100;
GO
SELECT ArrivalID, AirportN, Country FROM ArrivalTo
WHERE Country = 'Poland';
GO
SET SHOWPLAN_ALL OFF;
GO