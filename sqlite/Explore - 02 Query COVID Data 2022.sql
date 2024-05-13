/**
Covid 19 Data Exploration 
Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types
**/

/**
Data Source:
https://ourworldindata.org/covid-deaths
**/


Select *
From CovidDeaths
Where continent is not null 
order by 3,4
-- This ORDER BY states to order the table by the third column then the fourth column,
-- irregardless of what the data of those columns are

SELECT * FROM coviddeaths
WHERE continent IS NOT NULL
ORDER BY 1,2;
-- This ORDER BY states to order the table by the first column then the second column,
-- irregardless of what the data of those columns are


/**
Looking at Total Cases vs Total Deaths

Shows the likelihood of dying if you contract covid in your country
**/

SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS result
FROM coviddeaths
WHERE location iLIKE '%states%'
ORDER BY 1,2;
-- This ORDER BY states to order the table by the first column then the second column,
-- irregardless of what the data of those columns are


/**
Looking at Total Cases vs Population

Shows what percentage of population got Covid
**/

SELECT location, date, population, total_cases, (total_cases/population)*100 AS result
FROM coviddeaths
/* WHERE location iLIKE '%states%' */
ORDER BY 1,2;
-- This ORDER BY states to order the table by the first column then the second column,
-- irregardless of what the data of those columns are


/**
Looking at Countries with Highest Infection Rate compared to Population
**/

SELECT 
    location, 
    population, 
    MAX(total_cases) AS HighestInfectionCount, 
    MAX(total_cases/population)*100 AS PercentPopulationInfected 
FROM coviddeaths
/* WHERE location iLIKE '%states%' */
GROUP BY location, population
ORDER BY PercentPopulationInfected DESC;



/**
Looking at Countries with Highest Infection Rate compared to Population
TESTING COALESCE TO REPLACE 'NULL' WITH A 'ZERO (0)' 
**/

SELECT 
    location, 
    population, 
    MAX(COALESCE(total_cases, 0)) AS HighestInfectionCount, 
    MAX(COALESCE((total_cases/population), 0))*100 AS PercentPopulationInfected 
FROM coviddeaths
/* WHERE location iLIKE '%states%' */
GROUP BY location, population
ORDER BY PercentPopulationInfected DESC;



/**
Showing countries with Highest Death Count per Population
**/
SELECT 
    location, MAX(COALESCE(CAST(total_deaths AS INT), 0)) AS TotalDeathCount
   FROM coviddeaths
/* WHERE location iLIKE '%states%' */
WHERE continent IS NOT NULL
GROUP BY location
ORDER BY TotalDeathCount DESC;



/**
LET'S BREAK THINGS DOWN BY CONTINENT
**/

SELECT 
    DISTINCT continent, SUM((CAST(total_deaths AS INT))) AS TotalDeathCount
   FROM coviddeaths
/* WHERE location iLIKE '%states%' */
WHERE continent IS NOT NULL
GROUP BY continent
ORDER BY TotalDeathCount DESC;



/**
Showing continents with the highest death count per population
**/

SELECT 
   continent, MAX((CAST(total_deaths AS INT))) AS TotalDeathCount
   FROM coviddeaths
/* WHERE location iLIKE '%states%' */
WHERE continent IS NOT NULL
GROUP BY continent
ORDER BY TotalDeathCount DESC;



/**
GLOBAL NUMBERS
**/

SELECT  
    SUM(new_cases) 
        AS total_cases, 
    SUM(CAST(new_deaths AS INT)) 
        AS total_deaths, 
    SUM(CAST(new_deaths AS INT))/SUM(new_cases) 
        AS DeathPercentage 
FROM coviddeaths
WHERE continent IS NOT null
/* GROUP BY date */
order by 1
-- This ORDER BY states to order the table by the first column,
-- irregardless of what the data of the column is


/* Looking at Total Population vs Vaccinations*/

SELECT 
    dea.continent, 
    dea.location, 
    dea.date, 
    dea.population, 
    vax.new_vaccinations,
    SUM(CAST(vax.new_vaccinations AS INT))
        OVER 
            (PARTITION BY dea.location ORDER BY dea.location, dea.date) 
                AS RollingPeopleVaccinated
                ,
                /*(RollingPeopleVaccinated/population)*100 */
FROM coviddeaths AS dea
INNER JOIN covidvaccinations AS vax
ON dea.location = vax.location
AND dea.date = vax.date
WHERE dea.continent IS NOT null 
ORDER BY 2, 3;
-- This ORDER BY states to order the table by the second column then the third column,
-- irregardless of what the data of those columns are


/** USE CTE **/

WITH PopvsVac(continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
AS 
(
SELECT 
    dea.continent, 
    dea.location, 
    dea.date, 
    dea.population, 
    vax.new_vaccinations,
    SUM(CAST(vax.new_vaccinations AS INT))
        OVER 
            (PARTITION BY dea.location ORDER BY dea.location, dea.date) 
                AS RollingPeopleVaccinated
                
                /*(RollingPeopleVaccinated/population)*100 */
FROM coviddeaths AS dea
INNER JOIN covidvaccinations AS vax
ON dea.location = vax.location
AND dea.date = vax.date
WHERE dea.continent IS NOT null 
/* ORDER BY 2, 3*/
)

SELECT *, (RollingPeopleVaccinated/population)*100 FROM popvsvac;



/**
TEMP TABLE
**/

DROP TABLE IF EXISTS PercentPopulationVaccinated;

CREATE TEMPORARY TABLE PercentPopulationVaccinated
(
    continent VARCHAR(255),
    location VARCHAR(255),
    date DATE,
    population NUMERIC,
    new_vaccinations NUMERIC,
    rollingpeoplevaccinated NUMERIC
);

INSERT INTO PercentPopulationVaccinated
(SELECT 
    dea.continent, 
    dea.location, 
    dea.date, 
    dea.population, 
    vax.new_vaccinations,
    SUM(CAST(vax.new_vaccinations AS INT))
        OVER 
            (PARTITION BY dea.location ORDER BY dea.location, dea.date) 
                AS RollingPeopleVaccinated
                /*(RollingPeopleVaccinated/population)*100 */
FROM coviddeaths AS dea
INNER JOIN covidvaccinations AS vax
ON dea.location = vax.location
AND dea.date = vax.date
WHERE dea.continent IS NOT null);
/* ORDER BY 2, 3 */

SELECT *, (RollingPeopleVaccinated/population)*100 
    FROM PercentPopulationVaccinated;



/**
Creating View to store data for later visualizations
**/

CREATE VIEW PercentPopulationVaccinated AS 
(SELECT 
    dea.continent, 
    dea.location, 
    dea.date, 
    dea.population, 
    vax.new_vaccinations,
    SUM(CAST(vax.new_vaccinations AS INT))
        OVER 
            (PARTITION BY dea.location ORDER BY dea.location, dea.date) 
                AS RollingPeopleVaccinated
                /*(RollingPeopleVaccinated/population)*100 */
FROM coviddeaths AS dea
INNER JOIN covidvaccinations AS vax
ON dea.location = vax.location
AND dea.date = vax.date
WHERE dea.continent IS NOT null);
/* ORDER BY 2, 3 */



SELECT * FROM public.percentpopulationvaccinated
