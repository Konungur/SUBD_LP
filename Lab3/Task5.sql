ALTER TABLE Planes
	ADD ManufacturerName char(15) NOT NULL

ALTER TABLE Planes
	ADD CONSTRAINT manufacturer_name
	FOREIGN KEY (ManufacturerName) REFERENCES ManufacturerCompany(ManufacturerName)
	ON DELETE CASCADE;