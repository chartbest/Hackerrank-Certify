select 
    em.employee_id,
    em.name
from employee_information as em
join last_quarter_bonus as last 
on em.employee_id = last.employee_id
where em.division = 'HR' and last.bonus >= 5000
