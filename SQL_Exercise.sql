select * from employees;
select * from responses;

# Find all average of scores grouped by drivers.
SELECT driver_name, round(AVG(score),2) AS average_score
FROM Responses
GROUP BY driver_name;

# Find all scores by department and driver combination
SELECT DISTINCT e.department, e.id AS employee_id, e.name AS employee_name, r.driver_name, r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY e.department ASC, r.score DESC;


#Find all scores by location and driver combination
SELECT DISTINCT e.location, e.id AS emp_id, e.name AS employee_name, r.driver_name, r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY e.location ASC, r.score DESC;


# Find all scores by gender and driver
SELECT DISTINCT e.gender, e.id AS emp_id, e.name AS employee_name, r.driver_name, r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY r.score DESC;


#  Find all scores by age group 20-30, 30-40,40-50
SELECT DISTINCT e.id AS emp_id, e.name AS employee_name,
    CASE
        WHEN e.age BETWEEN 20 AND 30 THEN '20-30'
        WHEN e.age BETWEEN 31 AND 40 THEN '31-40'
        WHEN e.age BETWEEN 41 AND 50 THEN '41-50'
    END AS age_group,
    r.driver_name,
    r.score
FROM Employees e
JOIN Responses r ON e.id = r.employee_id
ORDER BY age_group ASC, score DESC;


    
# Find all scores by managers (ensure manager name is there)

SELECT DISTINCT m.name AS manager_name,
    r.driver_name,e.id AS emp_id, e.name AS employee_name,
    r.score
FROM Employees e
JOIN Employees m ON e.manager_id = m.id
JOIN Responses r ON e.id = r.employee_id
ORDER BY r.score DESC;

    
# Additionally, to ensure anonymity - if a group (eg: combination of department for a specific driver) has less than 3 responses - skip that group.

SELECT 
    m.name AS manager_name,
    r.driver_name,count(*) as Number_of_responses
FROM 
    Employees e
JOIN 
    Employees m ON e.manager_id = m.id
JOIN 
    Responses r ON e.id = r.employee_id
GROUP BY
    m.name, r.driver_name
HAVING
    COUNT(*) >= 3;





