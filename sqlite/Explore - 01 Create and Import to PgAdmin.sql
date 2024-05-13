/** 
EDITED IN VSCODE 
OTHER IDE (Integrated development environment) CAN BE USED
IF IT SUPPORTS MULTILINE EDITING, MULTILINE EDITING IS VERY HELPFUL
**/


CREATE TABLE covidvaccinations
(
    iso_code	
VARCHAR(250),   continent	
VARCHAR(250),   location	
VARCHAR(250),   date	
VARCHAR(250),   new_tests	
VARCHAR(250),   total_tests	
VARCHAR(250),   total_tests_per_thousand	
VARCHAR(250),   new_tests_per_thousand	
VARCHAR(250),   new_tests_smoothed	
VARCHAR(250),   new_tests_smoothed_per_thousand	
VARCHAR(250),   positive_rate	
VARCHAR(250),   tests_per_case	
VARCHAR(250),   tests_units	
VARCHAR(250),   total_vaccinations	
VARCHAR(250),   people_vaccinated	
VARCHAR(250),   people_fully_vaccinated	
VARCHAR(250),   new_vaccinations	
VARCHAR(250),   new_vaccinations_smoothed	
VARCHAR(250),   total_vaccinations_per_hundred	
VARCHAR(250),   people_vaccinated_per_hundred	
VARCHAR(250),   people_fully_vaccinated_per_hundred	
VARCHAR(250),   new_vaccinations_smoothed_per_million	
VARCHAR(250),   stringency_index	
VARCHAR(250),   population_density	
VARCHAR(250),   median_age	
VARCHAR(250),   aged_65_older	
VARCHAR(250),   aged_70_older	
VARCHAR(250),   gdp_per_capita	
VARCHAR(250),   extreme_poverty	
VARCHAR(250),   cardiovasc_death_rate	
VARCHAR(250),   diabetes_prevalence	
VARCHAR(250),   female_smokers	
VARCHAR(250),   male_smokers	
VARCHAR(250),   handwashing_facilities	
VARCHAR(250),   hospital_beds_per_thousand	
VARCHAR(250),   life_expectancy	
VARCHAR(250),   human_development_index 
VARCHAR(250)

);










COPY covidvaccinations
(
    iso_code	
,   continent	
,   location	
,   date	
,   new_tests	
,   total_tests	
,   total_tests_per_thousand	
,   new_tests_per_thousand	
,   new_tests_smoothed	
,   new_tests_smoothed_per_thousand	
,   positive_rate	
,   tests_per_case	
,   tests_units	
,   total_vaccinations	
,   people_vaccinated	
,   people_fully_vaccinated	
,   new_vaccinations	
,   new_vaccinations_smoothed	
,   total_vaccinations_per_hundred	
,   people_vaccinated_per_hundred	
,   people_fully_vaccinated_per_hundred	
,   new_vaccinations_smoothed_per_million	
,   stringency_index	
,   population_density	
,   median_age	
,   aged_65_older	
,   aged_70_older	
,   gdp_per_capita	
,   extreme_poverty	
,   cardiovasc_death_rate	
,   diabetes_prevalence	
,   female_smokers	
,   male_smokers	
,   handwashing_facilities	
,   hospital_beds_per_thousand	
,   life_expectancy	
,   human_development_index 
)
FROM '[FILE PATH TO CSV]'
DELIMITER ','
CSV HEADER;















CREATE TABLE coviddeaths
(
   iso_code	
VARCHAR(250),   continent	
VARCHAR(250),   location	
VARCHAR(250),   date	
VARCHAR(250),   total_cases	
VARCHAR(250),   new_cases	
VARCHAR(250),   new_cases_smoothed	
VARCHAR(250),   total_deaths	
VARCHAR(250),   new_deaths	
VARCHAR(250),   new_deaths_smoothed	
VARCHAR(250),   total_cases_per_million	
VARCHAR(250),   new_cases_per_million	
VARCHAR(250),   new_cases_smoothed_per_million	
VARCHAR(250),   total_deaths_per_million	
VARCHAR(250),   new_deaths_per_million	
VARCHAR(250),   new_deaths_smoothed_per_million	
VARCHAR(250),   reproduction_rate	
VARCHAR(250),   icu_patients	
VARCHAR(250),   icu_patients_per_million	
VARCHAR(250),   hosp_patients	
VARCHAR(250),   hosp_patients_per_million	
VARCHAR(250),   weekly_icu_admissions	
VARCHAR(250),   weekly_icu_admissions_per_million	
VARCHAR(250),   weekly_hosp_admissions	
VARCHAR(250),   weekly_hosp_admissions_per_million	
VARCHAR(250),   new_tests	
VARCHAR(250),   total_tests	
VARCHAR(250),   total_tests_per_thousand	
VARCHAR(250),   new_tests_per_thousand	
VARCHAR(250),   new_tests_smoothed	
VARCHAR(250),   new_tests_smoothed_per_thousand	
VARCHAR(250),   positive_rate	
VARCHAR(250),   tests_per_case	
VARCHAR(250),   tests_units	
VARCHAR(250),   total_vaccinations	
VARCHAR(250),   people_vaccinated	
VARCHAR(250),   people_fully_vaccinated	
VARCHAR(250),   new_vaccinations	
VARCHAR(250),   new_vaccinations_smoothed	
VARCHAR(250),   total_vaccinations_per_hundred	
VARCHAR(250),   people_vaccinated_per_hundred	
VARCHAR(250),   people_fully_vaccinated_per_hundred	
VARCHAR(250),   new_vaccinations_smoothed_per_million	
VARCHAR(250),   stringency_index	
VARCHAR(250),   population	
VARCHAR(250),   population_density	
VARCHAR(250),   median_age	
VARCHAR(250),   aged_65_older	
VARCHAR(250),   aged_70_older	
VARCHAR(250),   gdp_per_capita	
VARCHAR(250),   extreme_poverty	
VARCHAR(250),   cardiovasc_death_rate	
VARCHAR(250),   diabetes_prevalence	
VARCHAR(250),   female_smokers	
VARCHAR(250),   male_smokers	
VARCHAR(250),   handwashing_facilities	
VARCHAR(250),   hospital_beds_per_thousand	
VARCHAR(250),   life_expectancy	
VARCHAR(250),   human_development_index
);












COPY coviddeaths
(
   iso_code	
,   continent	
,   location	
,   date	
,   total_cases	
,   new_cases	
,   new_cases_smoothed	
,   total_deaths	
,   new_deaths	
,   new_deaths_smoothed	
,   total_cases_per_million	
,   new_cases_per_million	
,   new_cases_smoothed_per_million	
,   total_deaths_per_million	
,   new_deaths_per_million	
,   new_deaths_smoothed_per_million	
,   reproduction_rate	
,   icu_patients	
,   icu_patients_per_million	
,   hosp_patients	
,   hosp_patients_per_million	
,   weekly_icu_admissions	
,   weekly_icu_admissions_per_million	
,   weekly_hosp_admissions	
,   weekly_hosp_admissions_per_million	
,   new_tests	
,   total_tests	
,   total_tests_per_thousand	
,   new_tests_per_thousand	
,   new_tests_smoothed	
,   new_tests_smoothed_per_thousand	
,   positive_rate	
,   tests_per_case	
,   tests_units	
,   total_vaccinations	
,   people_vaccinated	
,   people_fully_vaccinated	
,   new_vaccinations	
,   new_vaccinations_smoothed	
,   total_vaccinations_per_hundred	
,   people_vaccinated_per_hundred	
,   people_fully_vaccinated_per_hundred	
,   new_vaccinations_smoothed_per_million	
,   stringency_index	
,   population	
,   population_density	
,   median_age	
,   aged_65_older	
,   aged_70_older	
,   gdp_per_capita	
,   extreme_poverty	
,   cardiovasc_death_rate	
,   diabetes_prevalence	
,   female_smokers	
,   male_smokers	
,   handwashing_facilities	
,   hospital_beds_per_thousand	
,   life_expectancy	
,   human_development_index
)
FROM '[FILE PATH TO CSV]'
DELIMITER ','
CSV HEADER;





ALTER TABLE coviddeaths ALTER date TYPE DATE USING to_date(date, 'MM/DD/YYYY'); 
ALTER TABLE coviddeaths ALTER COLUMN total_cases TYPE NUMERIC USING new_cases::NUMERIC;
ALTER TABLE coviddeaths ALTER COLUMN new_cases TYPE NUMERIC USING new_cases::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_cases_smoothed TYPE NUMERIC USING new_cases_smoothed::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN total_deaths TYPE NUMERIC USING total_deaths::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_deaths TYPE NUMERIC USING new_deaths::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_deaths_smoothed TYPE NUMERIC USING new_deaths_smoothed::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN total_cases_per_million TYPE NUMERIC USING total_cases_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_cases_per_million TYPE NUMERIC USING new_cases_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_cases_smoothed_per_million TYPE NUMERIC USING new_cases_smoothed_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN total_deaths_per_million TYPE NUMERIC USING total_deaths_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_deaths_per_million TYPE NUMERIC USING new_deaths_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_deaths_smoothed_per_million TYPE NUMERIC USING new_deaths_smoothed_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN reproduction_rate TYPE NUMERIC USING reproduction_rate::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN icu_patients TYPE NUMERIC USING icu_patients::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN icu_patients_per_million TYPE NUMERIC USING icu_patients_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN hosp_patients TYPE NUMERIC USING hosp_patients::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN hosp_patients_per_million TYPE NUMERIC USING hosp_patients_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN weekly_icu_admissions TYPE NUMERIC USING weekly_icu_admissions::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN weekly_icu_admissions_per_million TYPE NUMERIC USING weekly_icu_admissions_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN weekly_hosp_admissions TYPE NUMERIC USING weekly_hosp_admissions::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN weekly_hosp_admissions_per_million TYPE NUMERIC USING weekly_hosp_admissions_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_tests TYPE NUMERIC USING new_tests::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN total_tests TYPE NUMERIC USING total_tests::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN total_tests_per_thousand TYPE NUMERIC USING total_tests_per_thousand::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_tests_per_thousand TYPE NUMERIC USING new_tests_per_thousand::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_tests_smoothed TYPE NUMERIC USING new_tests_smoothed::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_tests_smoothed_per_thousand TYPE NUMERIC USING new_tests_smoothed_per_thousand::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN positive_rate TYPE NUMERIC USING positive_rate::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN tests_per_case TYPE NUMERIC USING tests_per_case::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN tests_units TYPE NUMERIC USING tests_units::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN total_vaccinations TYPE NUMERIC USING total_vaccinations::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN people_vaccinated TYPE NUMERIC USING people_vaccinated::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN people_fully_vaccinated TYPE NUMERIC USING people_fully_vaccinated::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_vaccinations TYPE NUMERIC USING new_vaccinations::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_vaccinations_smoothed TYPE NUMERIC USING new_vaccinations_smoothed::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN total_vaccinations_per_hundred TYPE NUMERIC USING total_vaccinations_per_hundred::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN people_vaccinated_per_hundred TYPE NUMERIC USING people_vaccinated_per_hundred::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN people_fully_vaccinated_per_hundred TYPE NUMERIC USING people_fully_vaccinated_per_hundred::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN new_vaccinations_smoothed_per_million TYPE NUMERIC USING new_vaccinations_smoothed_per_million::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN stringency_index TYPE NUMERIC USING stringency_index::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN population TYPE NUMERIC USING population::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN population_density TYPE NUMERIC USING population_density::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN median_age TYPE NUMERIC USING median_age::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN aged_65_older TYPE NUMERIC USING aged_65_older::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN aged_70_older TYPE NUMERIC USING aged_70_older::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN gdp_per_capita TYPE NUMERIC USING gdp_per_capita::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN extreme_poverty TYPE NUMERIC USING extreme_poverty::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN cardiovasc_death_rate TYPE NUMERIC USING cardiovasc_death_rate::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN diabetes_prevalence TYPE NUMERIC USING diabetes_prevalence::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN female_smokers TYPE NUMERIC USING female_smokers::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN male_smokers TYPE NUMERIC USING male_smokers::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN handwashing_facilities TYPE NUMERIC USING handwashing_facilities::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN hospital_beds_per_thousand TYPE NUMERIC USING hospital_beds_per_thousand::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN life_expectancy TYPE NUMERIC USING life_expectancy::NUMERIC;	
ALTER TABLE coviddeaths ALTER COLUMN human_development_index TYPE NUMERIC USING human_development_index::NUMERIC; 









ALTER TABLE covidvaccinations ALTER date TYPE DATE USING to_date(date, 'MM/DD/YYYY'); 	
ALTER TABLE covidvaccinations ALTER COLUMN new_tests TYPE NUMERIC USING new_tests::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN total_tests TYPE NUMERIC USING total_tests::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN total_tests_per_thousand TYPE NUMERIC USING total_tests_per_thousand::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN new_tests_per_thousand TYPE NUMERIC USING new_tests_per_thousand::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN new_tests_smoothed TYPE NUMERIC USING new_tests_smoothed::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN new_tests_smoothed_per_thousand TYPE NUMERIC USING new_tests_smoothed_per_thousand::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN positive_rate TYPE NUMERIC USING positive_rate::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN tests_per_case TYPE NUMERIC USING tests_per_case::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN total_vaccinations TYPE NUMERIC USING total_vaccinations::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN people_vaccinated TYPE NUMERIC USING people_vaccinated::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN people_fully_vaccinated TYPE NUMERIC USING people_fully_vaccinated::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN new_vaccinations TYPE NUMERIC USING new_vaccinations::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN new_vaccinations_smoothed TYPE NUMERIC USING new_vaccinations_smoothed::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN total_vaccinations_per_hundred TYPE NUMERIC USING total_vaccinations_per_hundred::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN people_vaccinated_per_hundred TYPE NUMERIC USING people_vaccinated_per_hundred::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN people_fully_vaccinated_per_hundred TYPE NUMERIC USING people_fully_vaccinated_per_hundred::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN new_vaccinations_smoothed_per_million TYPE NUMERIC USING new_vaccinations_smoothed_per_million::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN stringency_index TYPE NUMERIC USING stringency_index::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN population_density TYPE NUMERIC USING population_density::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN median_age TYPE NUMERIC USING median_age::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN aged_65_older TYPE NUMERIC USING aged_65_older::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN aged_70_older TYPE NUMERIC USING aged_70_older::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN gdp_per_capita TYPE NUMERIC USING gdp_per_capita::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN extreme_poverty TYPE NUMERIC USING extreme_poverty::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN cardiovasc_death_rate TYPE NUMERIC USING cardiovasc_death_rate::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN diabetes_prevalence TYPE NUMERIC USING diabetes_prevalence::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN female_smokers TYPE NUMERIC USING female_smokers::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN male_smokers TYPE NUMERIC USING male_smokers::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN handwashing_facilities TYPE NUMERIC USING handwashing_facilities::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN hospital_beds_per_thousand TYPE NUMERIC USING hospital_beds_per_thousand::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN life_expectancy TYPE NUMERIC USING life_expectancy::NUMERIC; 	
ALTER TABLE covidvaccinations ALTER COLUMN human_development_index TYPE NUMERIC USING human_development_index::NUMERIC; 


