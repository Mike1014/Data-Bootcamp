select
	status.station_id,
	stations.name,
	count(case when status.docks_available = 0 then 1 end) empty_count
from	
	status
join
	stations
on
	status.station_id = stations.station_id
group by 2
order by 3
limit 3