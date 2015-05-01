require('rspec')
require('places')


describe(Places) do 
	before() do
		Places.clear()
	end

	describe('#locations') do
		it("gives you an empty array") do
			expect(Places.locations()).to(eq([]))
		end
		it("gives you a an array of places you have been") do
		["Cairo, Sydney, Hong Kong"].each() {|var| Places.save(var)}
			expect(Places.locations()).to(eq(["Cairo, Sydney, Hong Kong"]))
		end
	end
	describe("save") do
		it("save location to class array") do
			Places.save("Seattle")
			expect(Places.locations()).to(eq(["Seattle"]))
		end
	end
end
