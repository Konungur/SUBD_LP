SELECT DISTINCT Country, COUNT(Country) AS Occurences
FROM ArrivalTo
INNER JOIN Flights ON ArrivalTo.ArrivalID = Flights.ArrivalID
GROUP BY Country;