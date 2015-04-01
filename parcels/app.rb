require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
	erb(:input)
end

get('/cost') do
	@box = Parcel.new(params.fetch('length').to_i, params.fetch('width').to_i, params.fetch('height').to_i, params.fetch('weight').to_i)
	erb(:cost)
end

#hello world