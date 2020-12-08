CREATE FUNCTION timesTraveld(@Country CHAR(20))
RETURNS INT
BEGIN 
	DECLARE @Result INT
	SET @Result = (SELECT COUNT(@Country) FROM ArrivalTo 
					WHERE @Country = ArrivalTo.Country)
RETURN @Result
END