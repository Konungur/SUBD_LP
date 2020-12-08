CREATE TRIGGER passangerTrg
ON Passangers
AFTER DELETE, INSERT, UPDATE
AS
BEGIN
	IF NOT EXISTS(
		SELECT * FROM
			Passangers AS pas
			INNER JOIN inserted AS i
				ON pas.PassangerID=i.PassangerID
		WHERE
			pas.PassangerID IS NULL
	)
	BEGIN
		RAISERROR('There is no passanger anymore', 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END
END
GO