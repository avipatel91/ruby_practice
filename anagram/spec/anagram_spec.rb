require('rspec')
require('anagram')

describe('String#anagram') do
	it('return an empty string when given an empty string') do
		expect("".anagram("")).to(eq(""))
	end

	it('return at least 1 anagram of a string from list') do
		expect("avi".anagram(["vai"])).to(eq(["vai"]))
	end

	it('return at least all anagram of a string from list') do
		expect("avi".anagram(["vai","iva", "abc"])).to(eq(["vai", "iva"]))
	end

	it("return partial matches of a anagram") do
		expect("avi".anagram(["vai","va", "abc"])).to(eq(["vai", "va"]))
	end


end