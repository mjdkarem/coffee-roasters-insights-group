
-- Create table for cleaned coffee data
CREATE TABLE coffee_data_cleaned (
    `Country of Origin` VARCHAR(255),
    `Farm Name` VARCHAR(255),
    `Lot Number` VARCHAR(255),
    `Mill` VARCHAR(255),
    `ICO Number` VARCHAR(255),
    `Company` VARCHAR(255),
    `Altitude` VARCHAR(50),
    `Region` VARCHAR(255),
    `Producer` VARCHAR(255),
    `Number of Bags` INT,
    `Bag Weight` VARCHAR(50),
    `In-Country Partner` VARCHAR(255),
    `Harvest Year` VARCHAR(50),
    `Grading Date` VARCHAR(100),
    `Owner` VARCHAR(255),
    `Variety` VARCHAR(255),
    `Status` VARCHAR(100),
    `Processing Method` VARCHAR(100),
    `Aroma` FLOAT,
    `Flavor` FLOAT,
    `Aftertaste` FLOAT,
    `Acidity` FLOAT,
    `Body` FLOAT,
    `Balance` FLOAT,
    `Uniformity` FLOAT,
    `Clean Cup` INT,
    `Sweetness` INT,
    `Overall` FLOAT,
    `Defects` INT,
    `Total Cup Points` FLOAT,
    `Moisture Percentage` FLOAT,
    `Category One Defects` INT,
    `Quakers` INT,
    `Color` VARCHAR(100),
    `Category Two Defects` INT,
    `Expiration` VARCHAR(100),
    `Certification Body` VARCHAR(255),
    `Certification Address` TEXT,
    `Certification Contact` VARCHAR(255),
    `Min_Altitude` INT,
    `Max_Altitude` INT,
    `Bag_Weight_KG` FLOAT,
    `Harvest_Year_Date` YEAR,
    `Grading_Date_Date` DATE
);

-- Load data from CSV (adjust file path to match your environment)
-- This assumes the file is placed on the server, and 'secure_file_priv' allows this path
LOAD DATA INFILE '/path/to/cleaned_coffee_sql_ready.csv'
INTO TABLE coffee_data_cleaned
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
