require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
	erb(:input)
end

get('/type') do	
	@triangle = Triangle.new(params.fetch("length_1").to_i, params.fetch("length_2").to_i, params.fetch("length_3").to_i)
	if(@triangle.is_valid?())
		erb(:type)
	else
		erb(:input)
	end
end

