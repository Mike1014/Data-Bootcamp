select 
	id Id,
	neighbourhood_cleansed Neighborhood,
	property_type Type,
	price Price,
	count(*) Listing_Count
from
	Listing
group by Neighborhood
order by Listing_Count desc
limit 10

-- The table displays the 10 most popular neighborhood listings to live in New York
