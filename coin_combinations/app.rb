require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')

get('/') do
	erb(:coin_input)
end

get('/change_output') do
	ary = params.fetch('coins').to_i.coin_combinations
	@quarters = ary[3]
    @dimes = ary[2]
	@nickels = ary[1]
	@pennies = ary[0]
	erb(:change_output)
end