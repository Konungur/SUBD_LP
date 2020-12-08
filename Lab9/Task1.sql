SELECT Flights.ShortName AS Companies, COUNT(Flights.PlaneID) AS Planes
FROM Flights
INNER JOIN Planes ON Flights.PlaneID = Planes.PlaneID
INNER JOIN CarrierCompany ON Flights.ShortName = CarrierCompany.ShortName
GROUP BY Flights.ShortName