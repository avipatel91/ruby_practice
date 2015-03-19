require('rspec')
require('ping_pong')

describe('String#pingpong') do

	#it("Should print provide an array between 1 and number specified(inclusive)") do
	#	expect((7.pingpong())).to(eq([1,2,3,4,5,6,7]))
	#end


	#it("Should say ping instead of number for those divisible by 3") do
	#	expect(7.pingpong()).to(eq([1,2,"ping",4,5,"ping",7]))
	#end

	#it("Should say pong for numbers divisible by 5") do
	#	expect(7.pingpong()).to(eq([1,2,"ping",4,"pong","ping",7]))
	#end

	it("Should say pingpong for numbers divisible by 3 and 5") do
		expect(15.pingpong()).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"pingpong"]))
	end
end