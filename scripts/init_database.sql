/*
==============================================================
Create Database and Schemas
==============================================================
Script Purpose:
    This Script Creats a new database named "Datawarehouse" after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: "bronze", "silver", and "gold".

WARNING:
    Running this script will drop the entire "Datawarehouse" database if ot exists.
    All data in the databes will be permanently deleted. Proced with caution
    and ensure you have proper backups before running this script.
*/
use master;
GO

--Drop and recreate the "Datawarehouse" database
ID EXISTS (SELECT 1 FROM sys.databases WHERE name = "Datawarehouse")
BEGIN 
    ALter DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO
-- Create the "Datawarehouse" database

CREATE DATABASE Datawarehouse;
GO
USE Datawarehouse;
Go
--Create Schemas 
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
go
CREATE SCHEMA gold;
go
