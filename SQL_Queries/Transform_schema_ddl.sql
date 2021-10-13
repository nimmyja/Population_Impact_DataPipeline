
CREATE TABLE transform_analysis.dim_country (
    Country VARCHAR(100)   NOT NULL,
    Country_Code VARCHAR(10)   NOT NULL,
    CONSTRAINT pk_dim_country PRIMARY KEY (
        Country_Code
     )
);

CREATE TABLE transform_analysis.population_pollution (
    Country_Code VARCHAR(10)   NOT NULL,
    Year INT   NOT NULL,
    Population BIGINT   NOT NULL,
    Exposure_Lower FLOAT   NOT NULL,
    Exposure_Upper FLOAT   NOT NULL,
    Exposure_Mean FLOAT   NOT NULL,
    Pollutant_Name VARCHAR(10)   NOT NULL,
    Units VARCHAR(10)   NOT NULL
);

ALTER TABLE transform_analysis.population_pollution ADD CONSTRAINT fk_population_pollution_Country_Code FOREIGN KEY(Country_Code)
REFERENCES transform_analysis.dim_country (Country_Code);

