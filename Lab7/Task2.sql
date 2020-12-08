SELECT PlaneModel, ManufacturerCompany.City 
FROM Planes INNER JOIN ManufacturerCompany 
ON Planes.ManufacturerName = ManufacturerCompany.ManufacturerName
WHERE ManufacturerCompany.ManufacturerName = 'Antonov'