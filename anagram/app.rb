require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')

get('/') do
	erb(:anagram_input)
end

get('/anagram_result') do
	ary = []
	ary.push(params.fetch('word1'))
	ary.push(params.fetch('word2'))
	ary.push(params.fetch('word3'))

	@word = params.fetch('word').anagram(ary).join(" ")
end