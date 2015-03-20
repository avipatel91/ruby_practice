require("rspec")
require('scrabble_score')

describe("scrabble_score") do
	it("should return a scrabble score for a letter") do
		expect("i".scrabble_score).to(eq(1))
	end

	it("should return a scrabble score for a word") do
		expect("hello".scrabble_score).to(eq(8))
	end
end