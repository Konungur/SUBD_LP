SELECT Passangers.PassangerID, Surname, [Name], Sex,
Tickets.FlightID, Tickets.PassangerID FROM Passangers
LEFT JOIN Tickets ON
Passangers.PassangerID = Tickets.PassangerID