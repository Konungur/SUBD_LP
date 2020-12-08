SELECT Planes.PlaneID, PlaneModel, ManufacturerName, 
ArrivalID, CarrierCompany.ShortName, FullName
FROM Flights 
INNER JOIN Planes ON Planes.PlaneID = Flights.PlaneID
INNER JOIN CarrierCompany ON Flights.ShortName = CarrierCompany.ShortName
WHERE Flights.ShortName IN ('LO','W6');