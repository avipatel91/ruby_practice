require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cd_organizer')


get('/') do
	@cds = CdOrganizer.all()
	erb(:index)
end

post('/cds') do
	title = params['title']
	artist = params['artist']
	CdOrganizer.new(title, artist).save()
	@cds = CdOrganizer.all()
	erb(:index)
end

get('/cds/:cd') do
	@cd = CdOrganizer.find(params.fetch('cd'))
	erb(:cd)
end

get('/artist/:artist') do
	@artist = params['artist']
	@albums = CdOrganizer.artist_albums(@artist)
	erb(:artist)
end
