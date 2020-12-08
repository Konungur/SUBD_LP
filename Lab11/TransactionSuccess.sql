BEGIN TRANSACTION;
INSERT INTO ManufacturerCompany
VALUES ('MyCompany1', 'MyCity1', 'MyCountry1');
INSERT INTO ManufacturerCompany
VALUES ('MyCompany2', 'MyCity2', 'MyCountry2');
INSERT INTO ManufacturerCompany
VALUES ('MyCompany3', 'MyCity3', 'MyCountry3');
COMMIT TRANSACTION

SELECT * FROM ManufacturerCompany;