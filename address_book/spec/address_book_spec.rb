require('rspec')
require('address_book')

describe(AddressBook) do
	describe("#add_contact") do
		it("correctly adds a contact in the address book") do
			AddressBook.add_contact("Bob")
			expect(AddressBook.contacts["Bob"].class).to(eq(Contact))
		end
	end
	describe("#remove_contact") do
		it("removes contact given a name") do
			AddressBook.add_contact("Bob")
			AddressBook.remove_contact("Bob")
			expect(AddressBook.contacts["Bob"]).to(eq(nil))
		end
	end
end