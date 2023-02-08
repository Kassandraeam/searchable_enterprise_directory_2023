## Hackathon: Searchable Enterprise Directory

# Overview

Create a React web application to allow employees to search an enterprise-wide employee directory. The directory should include:

•	Name
•	Phone number
•	Job role
•	Work location
•	Salary

# Salary is confidential information so:
•	Any employee can view their own salary 
•	An employee's manager can view the salary of any of their direct reports
•	An employee in the HR roll can view anyone's salary


---

So, the db will look like

USERS:
primary key | name | phone number | job role | work location | salary | manager ID | level of access
---------------------------------------------------------------------------------------------------------
- 1          'kas'       763          tldp       st paul       xxxxxx      2                0
- 2          'mark'      252          manager    hartford      xxxxxx      4                1
- 3          'carey'     525          HR         st paul       xxxxxx      null             2
- 4          'bob'       252          big boss   hartford      xxxxxx      null             1
- 5          'bryan'     211          tldp       california    xxxxxx      2                0

<!-- 
? Safe to assume that there will be existing employees in the directory  
? 
-->

<!-- 
* C: Create new user, will need inputs for name, phone number, job role, work location, salary, manager, and level of access.
* R: Read users.
* U: Allow people of appropriate levels to update directory information.
* D: Allow people of appropriate levels to update delete information.
* -->