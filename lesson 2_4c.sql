select 
	trips.start_station,
	count(trips.start_station) trip_count,
	stations.dockcount
from
	trips
join
	stations
on 
	trips.start_station = stations.name
group by 1
order by 3 desc