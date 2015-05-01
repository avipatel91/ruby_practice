class AddressBook
	@@contacts = {}

	def self.add_contact(name)
		@@contacts[name] = Contact.new(name)
	end
	
	def self.remove_contact(name)
		@@contacts.delete(name)
	end
	
	def self.contacts()
		@@contacts
	end
end
