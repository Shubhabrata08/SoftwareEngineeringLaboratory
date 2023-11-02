SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Student`;
DROP TABLE IF EXISTS `Departments`;
DROP TABLE IF EXISTS `SemesterDetails`;
DROP TABLE IF EXISTS `Courses`;
DROP TABLE IF EXISTS `Faculty`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Student` (
    `RegnID` VARCHAR(8) NOT NULL,
    `RollNo` VARCHAR(6) NOT NULL,
    `Name` VARCHAR(100) NOT NULL,
    `DeptID` VARCHAR(6) NOT NULL,
    `Semester` INTEGER NOT NULL,
    PRIMARY KEY (`RegnID`, `RollNo`)
);

CREATE TABLE `Departments` (
    `DeptID` VARCHAR(6) NOT NULL,
    `DeptName` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`DeptID`)
);

CREATE TABLE `SemesterDetails` (
    `SemRegnID` VARCHAR(20) NOT NULL,
    `Regn No.` VARCHAR(8) NOT NULL,
    `CourseID` VARCHAR(6) NOT NULL,
    `SemesterNumber` INTEGER NOT NULL,
    `Grade` INTEGER NOT NULL,
    PRIMARY KEY (`SemRegnID`, `Regn No.`, `CourseID`)
);

CREATE TABLE `Courses` (
    `CourseID` VARCHAR(6) NOT NULL,
    `CourseName` TEXT NOT NULL,
    `FacultyID` VARCHAR(6) NOT NULL,
    `DeptID` VARCHAR(6) NOT NULL,
    PRIMARY KEY (`CourseID`)
);

CREATE TABLE `Faculty` (
    `FacultyID` VARCHAR(6) NOT NULL,
    `Faculty Name` VARCHAR(100) NOT NULL,
    `DeptID` VARCHAR(6) NOT NULL,
    PRIMARY KEY (`FacultyID`)
);

ALTER TABLE `Student` ADD FOREIGN KEY (`DeptID`) REFERENCES `Departments`(`DeptID`);
ALTER TABLE `SemesterDetails` ADD FOREIGN KEY (`Regn No.`) REFERENCES `Student`(`RegnID`);
ALTER TABLE `SemesterDetails` ADD FOREIGN KEY (`CourseID`) REFERENCES `Courses`(`CourseID`);
ALTER TABLE `Courses` ADD FOREIGN KEY (`FacultyID`) REFERENCES `Faculty`(`FacultyID`);
ALTER TABLE `Courses` ADD FOREIGN KEY (`DeptID`) REFERENCES `Departments`(`DeptID`);
ALTER TABLE `Faculty` ADD FOREIGN KEY (`DeptID`) REFERENCES `Departments`(`DeptID`);