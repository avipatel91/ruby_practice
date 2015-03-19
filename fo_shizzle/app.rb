require('sinatra')
require('sinatra/reloader')
require('./lib/fo_shizzle')

get('/') do
	erb(:input_sentence)
end

get('/fo_shizzle') do
	@sentence = params.fetch('sentence').foshizzle()
end

