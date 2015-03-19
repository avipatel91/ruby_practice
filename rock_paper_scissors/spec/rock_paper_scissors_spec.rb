require('rspec')
require('rock_paper_scissors')

describe("Game") do
	it("should give outcome based on player and computer throw") do
		expect("rock".rock_paper_scissors).to(eq("You win!"))
	end
end