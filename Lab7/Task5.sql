SELECT FlightID FROM Flights
WHERE NOT EXISTS
(SELECT * FROM CarrierCompany WHERE 
CarrierCompany.ShortName = Flights.ShortName);