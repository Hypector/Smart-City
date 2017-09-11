CREATE SCHEMA IF NOT EXISTS `SmartCityDB` DEFAULT CHARACTER SET utf8 

CREATE TABLE IF NOT EXISTS `SmartCityDB`.`Attractions` (
  `attractionID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `streeNum` INT NULL,
  `streetName` VARCHAR(45) NULL,
  `suburb` VARCHAR(45) NULL,
  `areaCode` INT NOT NULL,
  `website` VARCHAR(45) NULL,
  `attractionType` ENUM('Food and Drink', 'Retail', 'Service', 'Accomodation', 'Attraction', 'Recreation') NOT NULL,
  `rating` INT NULL,
  PRIMARY KEY (`attractionID`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `SmartCityDB`.`Users` (
  `userID` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(20) NOT NULL,
  `lastName` VARCHAR(20) NOT NULL,
  `userType` ENUM('Student', 'Tourist', 'Businessman') NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userID`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `SmartCityDB`.`Favorites` (
  `favID` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`favID`),
  CONSTRAINT `userID`
    FOREIGN KEY (`favID`)
    REFERENCES `SmartCityDB`.`Users` (`userID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `attractionID`
    FOREIGN KEY (`favID`)
    REFERENCES `SmartCityDB`.`Attractions` (`attractionID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB