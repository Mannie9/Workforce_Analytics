CREATE DATABASE workforce_analytics;
USE workforce_analytics;

RENAME TABLE cleaned_ds TO employees;

SELECT * FROM employees;

ALTER TABLE employees
RENAME COLUMN `Dept.` TO Dept;

SELECT Attrition,
COUNT(*)
FROM employees
GROUP BY Attrition;

SELECT Dept,
COUNT(*)
FROM employees
WHERE Attrition='Yes'
GROUP BY Dept;

SELECT Attrition,
AVG(Salary)
FROM employees
GROUP BY Attrition;

SELECT Attrition,
AVG(Experience)
FROM employees
GROUP BY Attrition;

SELECT WorkMode,
COUNT(*)
FROM employees
WHERE Attrition='Yes'
GROUP BY WorkMode;

SELECT Education,
COUNT(*)
FROM employees
WHERE Attrition='Yes'
GROUP BY Education;

SELECT Dept,
SUM(Salary)
FROM employees
GROUP BY Dept;

SELECT 
    Dept,
    COUNT(*) AS total_employees,
    ROUND(AVG(Salary), 2) AS average_salary,
    ROUND(AVG(Performance), 2) AS average_performance,
    ROUND(AVG(Performance) / AVG(Salary) * 100000, 2) AS performance_per_dollar_ratio
FROM workforce_analytics.employees
GROUP BY Dept
ORDER BY average_salary DESC, average_performance ASC;

SELECT Education,
COUNT(*)
FROM employees
GROUP BY Education;

