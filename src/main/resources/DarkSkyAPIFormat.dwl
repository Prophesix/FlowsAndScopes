%dw 2.0
output application/json
---
{
	Time: payload.currently.time as DateTime,
	TimeZone: payload.timezone,
	TimeOffset: payload.offset,
	Currently:{
		Time: payload.currently.time as DateTime,
		Summary: payload.currently.summary,
		Temperature: payload.currently.temperature,
		Humidity: payload.currently.humidity,
		PrecipProb: payload.currently.precipProbability,
		WindSpeed: payload.currently.windSpeed,
		WindDirection: payload.currently.windBearing,
		Visibility: payload.currently.visibility,
		CloudCover: payload.currently.cloudCover,
		Ozone: payload.currently.ozone
	},
	Minutely:{
		
	},
	Hourly:{
		
	}
}