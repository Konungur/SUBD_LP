CREATE TRIGGER manufacturerTrg
ON ManufacturerCompany
INSTEAD OF INSERT, DELETE
AS
BEGIN
	RAISERROR('No changes are allowed', 16, 1)
END
GO