require('rspec')
require('coin_combinations')

describe("Combo") do
	it("return 0 cents when given 0 cents") do
		expect(0.coin_combinations).to(eq([0,0,0,0]))
	end
	it("return to return exactly a dime,nickel,etc given dime, nicket, etc") do
		expect(5.coin_combinations).to(eq([0,1,0,0]))
	end

	it("return smallest change given amount of cents") do
		expect(38.coin_combinations).to(eq([3,0,1,1]))
	end
end