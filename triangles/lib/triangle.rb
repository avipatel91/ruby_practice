class Triangle
	def initialize(l1, l2, l3)
		@length_1 = l1
		@length_2 = l2		
		@length_3 = l3
	end

	def is_valid?()
		@length_1 + @length_2 > @length_3 &&
		@length_1 + @length_3 > @length_2 &&
		@length_2 + @length_3 > @length_1 
	end

	def type()
		if(@length_1 * 3 == @length_2 + @length_1 + @length_3)
			return "equilateral"
		elsif(@length_2 == @length_1 || @length_2 == @length_3 || @length_1 == @length_3)
			return "isosceles"
		else
			"scalene"
		end
	end
end