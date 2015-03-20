require('rspec')
require('weekday_finder')

describe("Weekday Finder") do

	it("return a 'not valid' for a non-valid date") do
		expect("1/45/24".weekday_finder).to(eq("Not a valid date"))
	end

	it("return a 'not valid' for a non-valid date") do
		expect("3/20/15".weekday_finder).to(eq("Friday"))
	end

end