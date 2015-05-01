require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/address_book')
require('./lib/contact')
require('./lib/phone')

get('/') do
	@contacts = AddressBook.contacts
	erb(:index)
end

post('/contacts') do
	contact = params['contact']
	AddressBook.add_contact(contact)
	@contacts = AddressBook.contacts
	erb(:index)
end

get('/contact/:name') do
	contact = AddressBook.contacts[params[:name]]
	@name = contact.name
	@address = contact.address
	@email = contact.email
	erb(:contact)
end