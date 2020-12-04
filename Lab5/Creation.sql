SELECT PlaneID, PlaneModel, Capacity, Engine 
INTO Planes1 FROM Planes
	WHERE Capacity < 100;

SELECT PlaneID, PlaneModel, Capacity, Engine 
INTO Planes2 FROM Planes
	WHERE Capacity < 300;