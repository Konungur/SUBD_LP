CREATE INDEX carrierInd ON CarrierCompany ([ShortName]);
EXEC sp_helpindex CarrierCompany

CREATE UNIQUE INDEX arrivalInd ON ArrivalTo ([ArrivalID], [AirportN]);
EXEC sp_helpindex ArrivalTo