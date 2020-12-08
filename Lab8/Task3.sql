SELECT FlightID, Flights.ShortName, Flights.PlaneID, ArrivalID
FROM Flights 
INNER JOIN Planes ON Flights.PlaneID = Planes.PlaneID
INNER JOIN CarrierCompany ON Flights.ShortName = CarrierCompany.ShortName