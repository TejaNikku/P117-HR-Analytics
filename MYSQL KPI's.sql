show databases;
create database employee_retention;
use employee_retention;
SELECT * FROM hr_data.employee_retention;
select department,attrition from  hr_data.employee_retention order by attrition;

###KPI  1
#Average Attrition rate for all Departments.
select department,count(attrition)'Attriton Rate' from hr_data.employee_retention 
where attrition='yes'group by department order by attrition;


### KPI 2
#Average Hourly rate of Male Research Scientist.
select jobrole,gender,avg(HourlyRate) from hr_data.employee_retention  where gender='male' and jobrole='research scientist';


## KPI 3
#Attrition rate Vs Monthly income stats.
select department,count(attrition)'Attrition Rate',avg(monthlyincome)'Monthly Income' from  hr_data.employee_retention
where attrition='yes' group by department order by department;


##KPI 4
#Average working years for each Department.
select department,avg(totalworkingyears) from hr_data.employee_retention group by department;


###KPI 5
#Job Role Vs Work life balance.
select jobrole,avg(worklifebalance) from hr_data.employee_retention group by jobrole;


##KPI 6
#Attrition rate Vs Year since last promotion relation.
select department,count(Attrition)'Attrition Rate',avg(yearssincelastpromotion) 
from hr_data.employee_retention  where attrition='yes'group by department order by department;
