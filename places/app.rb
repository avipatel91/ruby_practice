require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/places")

get('/') do
	@places = Places.locations()
	erb(:index)
end


post('/success') do
	place = params['location']
	Places.save(place)
	erb(:success)
end