require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get('/') do
	erb(:word_input)
end

get('/score_output') do
	@score = params.fetch("word").scrabble_score()
	erb(:score_output)
end