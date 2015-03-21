require('rspec')
require('word_count')


describe('word count') do
	it("return 0 for 0 instances of the word in string") do
		expect("hello world hello".word_count("avi")).to(eq(0))
	end

	it("return correct count of instances") do
		expect("hello world hello hello.".word_count("hello")).to(eq(3))
	end

	it("not count partial matches") do
		expect("hello world hello helloa hello.".word_count("hello")).to(eq(3))
	end
end