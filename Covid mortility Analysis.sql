select * from Covid19_Mortality_Insight..[Covid Death]
order by 3,4

--select * from Covid19_Mortality_Insight..[Covid Vaccination]
--order by 3,4
select location, date, total_cases, new_cases, total_deaths, population
from Covid19_Mortality_Insight..[Covid Death] order by 1,2

--Looking at Total Cases vs Total Deaths
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as MortatlityRate
from Covid19_Mortality_Insight..[Covid Death] order by 1,2

--Mortality rate in India
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as MortatlityRate
from Covid19_Mortality_Insight..[Covid Death] 
where location= 'India' order by 1,2

--Mortality rate in United States
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as MortatlityRate
from Covid19_Mortality_Insight..[Covid Death] 
where location like '%states%' order by 1,2