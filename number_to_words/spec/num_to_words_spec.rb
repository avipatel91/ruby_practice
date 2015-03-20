require('rspec')
require('num_to_words')


describe("Number to words") do
	it("should return Zero given 0") do
		expect(0.num_to_words).to(eq("zero"))
	end

	it("should return numbers between 20 and 99") do
		expect(48.num_to_words).to(eq("forty eight"))
	end

	it("should return numbers between 1 and 19") do
		expect(17.num_to_words).to(eq("seventeen"))
	end

	it("should return numbers between 100 and 999") do
		expect(821.num_to_words).to(eq("eight hundred twenty one"))
	end

	it("should return numbers between 1000 and 19999") do
		expect(12234.num_to_words).to(eq("twelve thousand two hundred thirty four"))
	end

	it("should return numbers between 1000 and 99999") do
		expect(9231.num_to_words).to(eq("nine thousand two hundred thirty one"))
	end

	it("should return numbers between 20,000 and 99999") do
		expect(25234.num_to_words).to(eq("twenty five thousand two hundred thirty four"))
	end

end