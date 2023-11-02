SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Customer`;
DROP TABLE IF EXISTS `Restaurant`;
DROP TABLE IF EXISTS `Menu`;
DROP TABLE IF EXISTS `FoodItem`;
DROP TABLE IF EXISTS `Order`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Customer` (
    `CustomerID` VARCHAR(20) NOT NULL,
    `Name` VARCHAR(100) NOT NULL,
    `Address` TEXT NOT NULL,
    `Phone` NUMERIC NOT NULL,
    PRIMARY KEY (`CustomerID`)
);

CREATE TABLE `Restaurant` (
    `RestaunrantID` VARCHAR(20) NOT NULL,
    `RestaurantName` VARCHAR(100) NOT NULL,
    `RestaurantAddress` TEXT NOT NULL,
    `Column1` INTEGER NOT NULL,
    PRIMARY KEY (`RestaunrantID`)
);

CREATE TABLE `FoodItem` (
    `ItemID` VARCHAR(20) NOT NULL,
    `DishName` VARCHAR(100) NOT NULL,
    `Price` NUMERIC NOT NULL,
    `RestaurantID` VARCHAR(20) NOT NULL,
    `Column1` INTEGER NOT NULL,
    `Column2` INTEGER NOT NULL,
    PRIMARY KEY (`ItemID`)
);

CREATE TABLE `Order` (
    `OrderID` VARCHAR(30) NOT NULL,
    `ItemID` VARCHAR(20) NOT NULL,
    `RestaurantID` VARCHAR(20) NOT NULL,
    `CustomerID` VARCHAR(20) NOT NULL,
    `Date` DATE NOT NULL,
    `Time` TIME NOT NULL,
    `Price` NUMERIC NOT NULL,
    PRIMARY KEY (`OrderID`, `ItemID`, `RestaurantID`, `CustomerID`)
);

ALTER TABLE `FoodItem` ADD FOREIGN KEY (`RestaurantID`) REFERENCES `Restaurant`(`RestaunrantID`);
ALTER TABLE `Order` ADD FOREIGN KEY (`RestaurantID`) REFERENCES `Restaurant`(`RestaunrantID`);
ALTER TABLE `Order` ADD FOREIGN KEY (`ItemID`) REFERENCES `FoodItem`(`ItemID`);
ALTER TABLE `Order` ADD FOREIGN KEY (`CustomerID`) REFERENCES `Customer`(`CustomerID`);