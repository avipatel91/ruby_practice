class Fixnum
	def coin_combinations
		change = [0,0,0,0]
		num = self
		if self == 0
			return change
		end

		while num != 0
			if num >= 25
				change[3] += 1
				num -= 25
			elsif num >= 10
				change[2] += 1
				num -= 10
			elsif num >= 5
				change[1] += 1
				num -= 5
			else
				change[0] += 1
				num -= 1
			end
		end
		change
	end
end