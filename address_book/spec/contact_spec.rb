require("rspec")
require("contact")

describe(Contact) do
	describe("#initialize") do
		it("should initialize contact given name") do
			contact = Contact.new("Bob")
			expect(contact.name).to(eq("Bob"))
		end
	end
	describe("#add_number") do
		it("should add number given number and type") do
			contact = Contact.new("Bob")
			contact.add_number("home", "555-555-555")
			expect(contact.phone.home).to(eq("555-555-555"))
		end
	end
end
 