require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')


get('/') do
	erb(:player_input)
end

get('/game_output') do
	result, cpu = params.fetch('move').rock_paper_scissors
	@result = result
	if result == "You Won!"
		@commentary = params.fetch('move') + " beats " + cpu
	elsif result == "You Lost!"
		@commentary = cpu + " beats " + params.fetch('move')
	else
		@commentary = cpu + " cannot beat " + cpu
	end
	erb(:game_output)
end