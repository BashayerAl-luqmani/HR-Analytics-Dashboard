SELECT * FROM hr_analytics.`hr_analytics-4`;
SELECT *
FROM `hr_analytics-4`
WHERE 
EmpID IS NULL
OR Age IS NULL
OR Department IS NULL
OR JobRole IS NULL
OR MonthlyIncome IS NULL
OR Attrition IS NULL;

ALTER TABLE `HR_Analytics-4`
CHANGE COLUMN `ï»؟EmpID` EmpID VARCHAR(10);


ALTER TABLE `HR_Analytics-4`
DROP COLUMN EmployeeCount,
DROP COLUMN Over18,
DROP COLUMN StandardWorkingHours;
ALTER TABLE `HR_Analytics-4`
CHANGE COLUMN `DistanceFromHome(KM)` DistanceFromHome_KM INT;
ALTER TABLE `HR_Analytics-4`
CHANGE COLUMN `SalaryHike %` SalaryHike_Percent INT;
ALTER TABLE `HR_Analytics-4`
CHANGE COLUMN `TotalExperience(Years)` TotalExperience_Years INT;
ALTER TABLE `HR_Analytics-4`
CHANGE COLUMN YearsatCompany YearsAtCompany INT;
ALTER TABLE `HR_Analytics-4`
CHANGE COLUMN YearsinCurrentRole YearsInCurrentRole INT;


SELECT 
EmpID,
COUNT(*) AS Duplicate_Count
FROM `HR_Analytics-4`
GROUP BY EmpID
HAVING COUNT(*) > 1;



DELETE t1
FROM `HR_Analytics-4` t1
JOIN `HR_Analytics-4` t2
ON t1.EmpID = t2.EmpID
AND t1.EmployeeNumber > t2.EmployeeNumber;


UPDATE `HR_Analytics-4`
SET BusinessTravel = 'Travel_Rarely'
WHERE BusinessTravel = 'TravelRarely';


UPDATE `HR_Analytics-4`
SET Gender = 'Male'
WHERE Gender IN ('male','MALE');



UPDATE `HR_Analytics-4`
SET 
Department = TRIM(Department),
JobRole = TRIM(JobRole),
EducationField = TRIM(EducationField),
MaritalStatus = TRIM(MaritalStatus),
BusinessTravel = TRIM(BusinessTravel),
Attrition = TRIM(Attrition),
OverTime = TRIM(OverTime);

SELECT *
FROM `HR_Analytics-4`
WHERE Age < 18 OR Age > 70;


SELECT *
FROM `HR_Analytics-4`
WHERE MonthlyIncome <= 0;

SELECT *
FROM `HR_Analytics-4`
WHERE YearsAtCompany > TotalExperience_Years;


