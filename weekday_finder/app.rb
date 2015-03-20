require('sinatra')
require('sinatra/reloader')
require('./lib/weekday_finder')



get('/') do
	erb(:date_input)
end

get('/day_output') do
	@weekday = params.fetch("date").weekday_finder
	erb(:day_output)
end