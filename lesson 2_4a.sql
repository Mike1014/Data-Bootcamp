with rainy 
as 	(
	select
		date
	from
		weather
	where events = 'Rain%'
	group by 1
	)

select
	duration,
	date(start_date) start_date
from
	trips
join
	rainy
on
	start_date = rainy.date
order by duration desc
limit 3
