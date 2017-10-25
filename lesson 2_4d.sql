with rainy as
	(
	select
		date
	from
		weather
	where events = 'Rain'
	group by 1
	),
	
rainy_trip as
	(
	select
		date(start_date) trip_date,
		duration
	from
		trips
	join
		rainy
	on
		trip_date = rainy.date
	order by duration desc
	)

select 
	trip_date,
	max(duration)
from 
	rainy_trip
group by 1
limit 5