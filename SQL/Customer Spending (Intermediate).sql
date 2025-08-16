select
    c.customer_name,
    round(sum(i.total_price) * 1.000000, 6) as total_spent
from
    customer as c
join
    invoice as i on c.id = i.customer_id
group by
    c.id, 
    c.customer_name
having
    sum(i.total_price) <= (select avg(total_price) * 0.25 from invoice)
order by
    total_spent desc
