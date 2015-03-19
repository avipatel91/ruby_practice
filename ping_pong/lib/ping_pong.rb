class Fixnum
	define_method(:pingpong) do
		ary = []
		self.times() do |i|
			if (i+1) % 3 == 0 && (i+1) % 5 == 0
				ary.push("pingpong")
			elsif (i+1) % 5 == 0
				ary.push("pong")
			elsif (i+1) % 3 == 0					
				ary.push("ping")
			else
				ary.push(i+1)
			end
		end
		ary
	end
end