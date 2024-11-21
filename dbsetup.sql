use arogyacarehms;

use arogyacarehms

CREATE TABLE `outpatients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FName` varchar(45) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


CREATE TABLE `nursedet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nurse_id` varchar(6) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`nurse_id`),
  UNIQUE KEY `id` (`id`)
) 

CREATE TABLE `inpatients` (
  `PatientID` varchar(7) NOT NULL,
  `RecordNumber` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `ContactNumber` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `EmergencyContactName` varchar(100) DEFAULT NULL,
  `EmergencyContactNumber` varchar(15) DEFAULT NULL,
  `PastMedicalHistory` text,
  `ReasonOFAdd` text,
  `DateOfRegistration` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Allergies` text,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `RecordNumber` (`RecordNumber`)
)

select * from inPatients;
select * from outPatients;
select * from nursedet;


