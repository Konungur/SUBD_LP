SELECT TOP 3 CarrierCompany.ShortName, FullName
FROM Flights INNER JOIN CarrierCompany 
ON Flights.ShortName = CarrierCompany.ShortName
WHERE Flights.PlaneID IN (SELECT Planes.PlaneID FROM Planes
WHERE Flights.ShortName IN ('LO','W6'))
ORDER BY CarrierCompany.FullName DESC;