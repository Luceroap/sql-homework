	"Employee".first_name,
	"Employee".last_name
FROM "Department"
JOIN "dept_manager"
ON "Department".dept_no = "dept_manager".dept_no
JOIN "Employee"
ON "dept_manager".emp_no = "Employee".emp_no;




SELECT 
    "Dept_emp".emp_no,
    "Employee".last_name,
    "Employee".first_name,
    "Department".depart_name
FROM "Dept_emp"
JOIN "Employee"
ON "Dept_emp".emp_no = "Employee".emp_no
JOIN "Department"
ON "Dept_emp".dept_no = "Department".dept_no;




-- 
SELECT  
    first_name,
    last_name
FROM "Employee"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--All emplyoees, emp_no, last, first, depart__name in Sales

SELECT
    "Employee".last_name,
    "Employee".first_name,
    "Dept_emp".emp_no,
    "Department".depart_name
FROM "Dept_emp"
JOIN "Employee"
ON "Dept_emp".emp_no = "Employee".emp_no
JOIN "Department" 
ON "Dept_emp".dept_no = "Department".dept_no
WHERE "Department".depart_name = 'Sales';


SELECT
    "Employee".last_name,
    "Employee".first_name,
    "Dept_emp".emp_no,
    "Department".depart_name
FROM "Dept_emp"
JOIN "Employee"
ON "Dept_emp".emp_no = "Employee".emp_no
JOIN "Department" 
ON "Dept_emp".dept_no = "Department".dept_no
WHERE "Department".depart_name = 'Sales' OR "Department".depart_name = 'Development';


-- Desc list freq count employee names

SELECT 
    last_name,
COUNT(last_name) AS "Last_name_Counts"
FROM "Employee"
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;