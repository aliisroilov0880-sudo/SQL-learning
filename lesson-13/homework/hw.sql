
(1)
select concat(EMPLOYEE_ID, '-', first_name, ' ', last_name) as full_info
from e
where EMPLOYEE_ID = 100 or
      EMPLOYEE_ID = 101 or
	  EMPLOYEE_ID = 102

(2)
    update E 
	  SEt PHONE_NUMBER = REPLACE(PHONE_NUMBER, '124', '999')
(3)

	  select  
	  first_name,
	  len(first_name) as name_lenght
	  from e
	  where ( first_name like 'A%'or
	        first_name like 'J%'or
			first_name like 'M%')
       order by first_name
(4)
select
		       concat(employee_id, '-',sum(salary)) as manager_total_salary
		    from E 
            group by employee_id
			order by employee_id

(5)
			select 
			year1, 
			case 
			when max1 >= max2 and max1 >= max3 then max1
		    when max2 >= max1 and max2 >= max3 then max2
			else max3
			end as highest_values
			from testmax
(6)
    	select * 
			from cinema 
			where id % 2 = 1
			and description not like '%boring%'

(7)

			select * from SingleOrder
			order by case when id = 0 then 1 else 0 end , id
(8)
      select coalesce(ssn, passportid, itin) as first_non_null
			from persons
MEDIUM
(1)




