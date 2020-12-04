BULK
INSERT Passangers
FROM 'C:\Users\Orest Korol\Desktop\Pass.txt'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)
GO


BULK
INSERT Tickets
FROM 'C:\Users\Orest Korol\Desktop\Tickets.txt'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)
GO