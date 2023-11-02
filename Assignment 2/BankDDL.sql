SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Customer`;
DROP TABLE IF EXISTS `Accounts`;
DROP TABLE IF EXISTS `TransferTransaction`;
DROP TABLE IF EXISTS `Branch`;
DROP TABLE IF EXISTS `ATMTransaction`;
DROP TABLE IF EXISTS `FixedDeposits`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Customer` (
    `CIF` VARCHAR(40) NOT NULL,
    `Name` VARCHAR(100) NOT NULL,
    `Column1` INTEGER NOT NULL,
    `Phone` VARCHAR(15) NOT NULL,
    `Address` TEXT NOT NULL,
    PRIMARY KEY (`CIF`)
);

CREATE TABLE `Accounts` (
    `AccountNo` VARCHAR(40) NOT NULL,
    `CIF` VARCHAR(40) NOT NULL,
    `BranchCode` VARCHAR(6) NOT NULL,
    PRIMARY KEY (`AccountNo`, `CIF`)
);

CREATE TABLE `TransferTransaction` (
    `TransactionID` VARCHAR(40) NOT NULL,
    `FromAC` VARCHAR(40) NOT NULL,
    `ToAC` VARCHAR(40) NOT NULL,
    `Date` DATE NOT NULL,
    `Time` TIME NOT NULL,
    `Amount` INTEGER NOT NULL,
    PRIMARY KEY (`TransactionID`)
);

CREATE TABLE `Branch` (
    `BranchCode` VARCHAR(6) NOT NULL,
    `BranchName` VARCHAR(100) NOT NULL,
    `City` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`BranchCode`)
);

CREATE TABLE `ATMTransaction` (
    `TransactionID` VARCHAR(40) NOT NULL,
    `AccountNo` VARCHAR(40) NOT NULL,
    `Date` DATE NOT NULL,
    `Time` TIME NOT NULL,
    `Amount` INTEGER NOT NULL,
    `Type` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`TransactionID`)
);

CREATE TABLE `FixedDeposits` (
    `FDID` VARCHAR(40) NOT NULL,
    `AccountNo` VARCHAR(40) NOT NULL,
    `Amount` INTEGER NOT NULL,
    PRIMARY KEY (`FDID`)
);

ALTER TABLE `TransferTransaction` ADD FOREIGN KEY (`FromAC`) REFERENCES `Accounts`(`AccountNo`);
ALTER TABLE `TransferTransaction` ADD FOREIGN KEY (`ToAC`) REFERENCES `Accounts`(`AccountNo`);
ALTER TABLE `ATMTransaction` ADD FOREIGN KEY (`AccountNo`) REFERENCES `Accounts`(`AccountNo`);
ALTER TABLE `FixedDeposits` ADD FOREIGN KEY (`AccountNo`) REFERENCES `Accounts`(`AccountNo`);