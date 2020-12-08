SELECT FlightID, Flights.ShortName AS SNID, ArrivalID
FROM Flights 
INNER JOIN Planes ON Flights.PlaneID = Planes.PlaneID
INNER JOIN CarrierCompany ON Flights.ShortName = CarrierCompany.ShortName
GROUP BY FlightID;