require('rspec')
require('phone')

describe(Phone) do
	describe("#add_number") do
		it("correctly adds number given type") do
			phone = Phone.new()
			phone.add_number("home", "555-555-5555")
			expect(phone.home).to(eq("555-555-5555"))
		end
		it("correctly overwrites prveious number") do
			phone = Phone.new()
			phone.add_number("home", "111-111-1115")
			phone.add_number("home", "555-555-5555")
			expect(phone.home).to(eq("555-555-5555"))
		end
	end
end