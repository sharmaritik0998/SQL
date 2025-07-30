use employees ;
select * from Employees;

select name,
case department
	when 'sales' then 'sales team'
    else 'other'	
end as employee_name from Employees;


select name,
case department
	when 'sales' then 'sales team'
    when 'Marketing' then 'marketing team'
    else 'other'	
end as employee_name from Employees;

-- cases with respect to age 

select name,
case
	when age < 30 then 'Young'
    when age<=30 and age <= 40 then 'mid-aged'
    else 'other'	
end as employee_name from Employees;

-- Nested case 

select name,
case
	when age < 30 then
		case
			when department = 'Sales' then 'Jr Sales'
            else 'Junior'
		end
        
	when age >=30 and age<40 then 'Middle'
    else 'Senior'
end as employee_name from Employees;
