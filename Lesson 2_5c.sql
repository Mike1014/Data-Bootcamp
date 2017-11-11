select 
	id Id,
	strftime('%m', last_review) Checkout_Date,
	reviews_per_month Review,
	price Price
from
	Listing
where Checkout_Date is not null
group by Checkout_Date
order by Review desc /* to determine the busiest time of the year
/* order by Price desc to determine the most expensive time of the year
