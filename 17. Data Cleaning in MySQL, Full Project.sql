-- Data Cleaning

-- 1. Remove Duplicates
-- 2. Standardize the data
-- 3. Null values or blank values
-- 4. Remove any column

-- CREAR UNA COPIA
SELECT *
FROM layoffs;

CREATE TABLE layoffs_staging
LIKE layoffs;

INSERT layoffs_staging
SELECT *
FROM layoffs;

SELECT *
FROM layoffs_staging;

-- REMOVE DUPLICATES
	-- Encontrar filas que tienen todas las columnas repetidas
    
WITH duplicates_CTE AS
(
SELECT *, ROW_NUMBER() OVER(PARTITION BY 
company, location, industry, total_laid_off, `date`, stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging
)
SELECT *
FROM duplicates_CTE
WHERE row_num > 1;


	-- Revisar uno de lps resultados anteriores

SELECT *
FROM layoffs_staging
WHERE company = 'Casper';


	-- Crear una nueva tabla que incluya la columna row_num en la que se pueda eliminar las filas con valor >1

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` bigint DEFAULT NULL,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 
INSERT INTO layoffs_staging2
SELECT *, 
ROW_NUMBER() OVER(PARTITION BY 
company, location, industry, total_laid_off, `date`, 
stage, country, funds_raised_millions) AS row_num
FROM layoffs_staging;

SELECT *
FROM layoffs_staging2
WHERE row_num >1;

DELETE *
FROM layoffs_staging2
WHERE row_num >1;

SELECT *
FROM layoffs_staging2
WHERE row_num >1;

-- 	STANDARDIZING DATA

UPDATE layoffs_staging2
SET company = TRIM(company);
