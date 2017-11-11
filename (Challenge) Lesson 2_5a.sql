select 
	id Id,
	neighbourhood_group_cleansed Neighborhood,
	property_type Type,
	summary Note,
	cast(replace(replace(price,'$',''), ',','') as integer) Price
from
	Listing  
order by Price desc
limit 10

/* List the top 10 most expensive listings in New York
	We will be able to learn more about these listings once we select the wanted columns from the table.
	For this table, I know that apartments tend to be more expensive and more avaliable 
*/


