require('sinatra')
require('sinatra/reloader')

get('/') do 
  erb(:letter)
end

get('/australia') do
	@friend = "Tarun"
	erb(:australia)
end

get('/greeting_form') do
	erb(:form)
end

get('/greeting_card') do
	@sender = params.fetch('sender')
	@recipient = params.fetch('recipient')
	erb(:greeting_card)
end
