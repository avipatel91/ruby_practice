require('rspec')
require('find_and_replace')

describe("find_and_replace") do
	it("return word repalaced by given word") do
		expect("Hello world".find_and_replace("world", "universe")).to(eq("Hello universe"))
	end

	it("should replace partial matches") do
		expect("I am walking my cat to the cathedral".find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral"))
	end

end