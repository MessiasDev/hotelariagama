CREATE TABLE `Hospede` (
	`ID` INT(10) NOT NULL AUTO_INCREMENT UNIQUE,
	`Nome` VARCHAR(25) AUTO_INCREMENT UNIQUE,
	`CPF` INT(11) AUTO_INCREMENT UNIQUE,
	`Telefone` INT(11) AUTO_INCREMENT UNIQUE,
	`Endereço` VARCHAR(200) AUTO_INCREMENT UNIQUE,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Reserva` (
	`ID` INT(10) NOT NULL,
	`ID_Hospede` INT(10) AUTO_INCREMENT UNIQUE,
	`ID_Quarto` VARCHAR(10) AUTO_INCREMENT UNIQUE,
	`Check-in` DATETIME(10) AUTO_INCREMENT UNIQUE,
	`Check-out` DATETIME(10) AUTO_INCREMENT UNIQUE,
	`Valor_Diaria` FLOAT(10) AUTO_INCREMENT UNIQUE,
	`Total_Diaria` FLOAT(10) AUTO_INCREMENT UNIQUE
);

CREATE TABLE `Quarto` (
	`ID_Quarto` VARCHAR(10) AUTO_INCREMENT UNIQUE,
	`Check-in` DATETIME(10) AUTO_INCREMENT UNIQUE,
	`Check-out` DATETIME(10) AUTO_INCREMENT UNIQUE
);

ALTER TABLE `Hospede` ADD CONSTRAINT `Hospede_fk0` FOREIGN KEY (`ID`) REFERENCES `Reserva`(`ID_Hospede`);

ALTER TABLE `Quarto` ADD CONSTRAINT `Quarto_fk0` FOREIGN KEY (`ID_Quarto`) REFERENCES `Reserva`(`ID_Quarto`);



