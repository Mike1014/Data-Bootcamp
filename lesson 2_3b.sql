select	
	start_station,
	count(*) station_count
from
	trips
group by
	1