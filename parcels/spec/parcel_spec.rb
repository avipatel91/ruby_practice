require('rspec')
require('parcel')


describe(Parcel) do
	describe('#volume') do
		it('returns volume')  do
			box = Parcel.new(10, 10, 10, 25)
			expect(box.volume).to(eq(1000))
		end
	end

	describe('#cost_to_ship') do
		it('return shipping cost') do
			box = Parcel.new(10,10,10,1)
			expect(box.cost_to_ship).to(eq(2000))
		end
	end
end
