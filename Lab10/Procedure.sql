CREATE PROCEDURE checkIfRelated @Plane int, @Manufacturer CHAR(15)
AS
	SELECT PlaneID 
	FROM Planes, ManufacturerCompany
	WHERE ManufacturerCompany.ManufacturerName = @Manufacturer AND PlaneID = @Plane
GO