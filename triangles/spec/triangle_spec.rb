require("rspec")
require("triangle")


describe(Triangle) do
	describe("#is_valid?") do
		it('returns invalid length if not given the correct lengths') do
			triangle = Triangle.new(2,2,8)
			expect(triangle.is_valid?).to(eq(false))
		end
	end

	describe("#type") do
		it('returns "isosceles" given 2 equal sides') do
			triangle = Triangle.new(2,2,3)
			expect(triangle.type()).to(eq("isosceles"))
		end

		it('returns "equilateral" given 3 equal sides') do
			triangle = Triangle.new(2,2,2)
			expect(triangle.type()).to(eq("equilateral"))
		end

		it('returns "scalene" given no equal sides') do
			triangle = Triangle.new(2,3,4)
			expect(triangle.type()).to(eq("scalene"))
		end
	end
end