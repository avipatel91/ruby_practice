require('rspec')
require('palindrome')

describe("palindrome") do
	it(" should return an empty string given an empty string") do
		expect("".palindrome).to(eq(""))
	end

	it("should return reversed version, given string") do
		expect("noel".palindrome).to(eq("leon"))
	end

	it("should return reverse version, a given a sentence") do
		expect("noel leon".palindrome).to(eq("noel leon"))
	end

	it("should return reverse a given string of numbers") do
		expect(123.palindrome).to(eq(321))
	end
end