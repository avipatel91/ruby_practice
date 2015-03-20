require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')

get('/') do
	erb(:sentence_input)
end

get('/reverse') do
	@sentence = params.fetch('sentence').palindrome
	erb(:reverse)
end