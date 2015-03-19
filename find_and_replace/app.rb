require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')

get('/') do
	erb(:sentence_input)	
end

get('/sentence_modified') do
	@sentence = params.fetch('sentence').find_and_replace(params.fetch('word1'), params.fetch('word2'))
end