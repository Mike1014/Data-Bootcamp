select
	Date,
	Zip,
	Max(MaxTemperatureF) Temperature
from
	weather
