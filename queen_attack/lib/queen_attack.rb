class Array
	def queen_attack?(ary)
		if(ary == [self[0] + 1, self[1] + 1] or
		   ary == [self[0] + 1, self[1]] or
		   ary == [self[0] + 1, self[1] - 1] or
		   ary == [self[0] , self[1] - 1] or
		   ary == [self[0] - 1+ 1, self[1] - 1] or
		   ary == [self[0] - 1, self[1]] or
		   ary == [self[0] - 1, self[1] + 1] or
		   ary == [self[0] , self[1] + 1])
			true
		else
			false
		end
	end
end