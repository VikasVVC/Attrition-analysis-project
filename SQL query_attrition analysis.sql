--For viweing all data
select *from [Attrition data]

--Updating column attrition
update [Attrition data] 
set  Attrition = replace(Attrition,1,'yes')

--employee count and attrition
SELECT 
    Attrition,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
FROM (
    SELECT 
        Attrition, 
        COUNT(EmployeeID) AS p,
        (SELECT COUNT(EmployeeID) FROM [Attrition data]) AS total
    FROM 
        [Attrition data]
    GROUP BY 
        Attrition
) AS subquery

--Business travel attrition
select BusinessTravel,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select BusinessTravel,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by BusinessTravel) as total
from [Attrition data]
group by BusinessTravel, Attrition ) a

--Department Attrition
select Department,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select Department,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by Department) as total
from [Attrition data]
group by Department, Attrition ) a

-- EducationField attrition
select EducationField,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select EducationField,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by EducationField) as total
from [Attrition data]
group by EducationField, Attrition ) a

-- Gender attrition
select Gender,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select Gender,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by Gender) as total
from [Attrition data]
group by Gender, Attrition )a

--JobLevel attrition
select JobLevel,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select JobLevel,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by JobLevel) as total
from [Attrition data]
group by JobLevel, Attrition )a

--JobInvolvement attrition
select JobInvolvement,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select JobInvolvement,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by JobInvolvement) as total
from [Attrition data]
group by JobInvolvement, Attrition )a

--JobRole attrition
select JobRole,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select JobRole,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by JobRole) as total
from [Attrition data]
group by JobRole, Attrition )a 

--JobSatisfaction attrition
select JobSatisfaction,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select JobSatisfaction,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by JobSatisfaction) as total
from [Attrition data]
group by JobSatisfaction, Attrition )a

--NumCompaniesWorked attrition
select NumCompaniesWorked,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select NumCompaniesWorked,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by NumCompaniesWorked) as total
from [Attrition data]
group by NumCompaniesWorked, Attrition )a

--PerformanceRating attrition
select PerformanceRating,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select PerformanceRating,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by PerformanceRating) as total
from [Attrition data]
group by PerformanceRating, Attrition )a

--TrainingTimesLastYear attrition
select TrainingTimesLastYear,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select TrainingTimesLastYear,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by TrainingTimesLastYear) as total
from [Attrition data]
group by TrainingTimesLastYear, Attrition )a

--WorkLifeBalance attrition
select WorkLifeBalance,Attrition, p,total,ROUND(CAST((CAST(p AS DECIMAL(10,1)) * 100.0 / total) AS DECIMAL(10, 2)), 2) AS percentage_of_total 
from (
select WorkLifeBalance,Attrition, count(EmployeeID) as "p" , sum(count(EmployeeID)) over(partition by WorkLifeBalance) as total
from [Attrition data]
group by WorkLifeBalance, Attrition )a

