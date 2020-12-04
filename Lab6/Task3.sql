SELECT PlaneID, PlaneModel, Engine, Planes.ManufacturerName, 
ManufacturerCompany.ManufacturerName, City 
FROM Planes, ManufacturerCompany
WHERE Planes.ManufacturerName = ManufacturerCompany.ManufacturerName