-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/bi3tus
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
-- https://app.quickdatabasediagrams.com/
CREATE TABLE "stg_pollution" (
    "Exposure_ID" INT   NOT NULL,
    "Type" VARCHAR(30)   NOT NULL,
    "Country" VARCHAR(50)   NOT NULL,
    "ISO3" VARCHAR(4)   NOT NULL,
    "Region" VARCHAR(10)   NOT NULL,
    "Name" VARCHAR(100)   NOT NULL,
    "Exposure_Lower" FLOAT   NOT NULL,
    "Exposure_Mean" FLOAT   NOT NULL,
    "Exposure_Upper" FLOAT   NOT NULL,
    "Year" INT   NOT NULL,
    "Pollutant" VARCHAR(5)   NOT NULL,
    "Pollutant_Name" VARCHAR(5)   NOT NULL,
    "Region_Name" VARCHAR(10)   NOT NULL,
    "Units" VARCHAR(10)   NOT NULL
);

CREATE TABLE "stg_population" (
    "Country_Name" VARCHAR(100)   NOT NULL,
    "Country_Code" VARCHAR(10)   NOT NULL,
    "Indicator_Name" VARCHAR(50)   NOT NULL,
    "Indicator_Code" VARCHAR(50)   NOT NULL,
    "Year" INT   NOT NULL,
    "Population" BIGINT  NOT NULL
);

CREATE TABLE "stg_pollution_hist" (
    "Exposure_ID" INT   NOT NULL,
    "Type" VARCHAR(30)   NOT NULL,
    "Country" VARCHAR(50)   NOT NULL,
    "ISO3" VARCHAR(4)   NOT NULL,
    "Region" VARCHAR(10)   NOT NULL,
    "Name" VARCHAR(100)   NOT NULL,
    "Exposure_Lower" FLOAT   NOT NULL,
    "Exposure_Mean" FLOAT   NOT NULL,
    "Exposure_Upper" FLOAT   NOT NULL,
    "Year" INT   NOT NULL,
    "Pollutant" VARCHAR(5)   NOT NULL,
    "Pollutant_Name" VARCHAR(5)   NOT NULL,
    "Region_Name" VARCHAR(10)   NOT NULL,
    "Units" VARCHAR(10)   NOT NULL
);

CREATE TABLE "stg_population_hist" (
    "Country_Name" VARCHAR(100)   NOT NULL,
    "Country_Code" VARCHAR(10)   NOT NULL,
    "Indicator_Name" VARCHAR(50)   NOT NULL,
    "Indicator_Code" VARCHAR(50)   NOT NULL,
    "Year" INT   NOT NULL,
    "Population" BIGINT   NOT NULL
);

