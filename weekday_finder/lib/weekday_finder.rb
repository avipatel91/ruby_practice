class String
	def weekday_finder
		a = self.split("/")
		if a.length != 3
			return "Not a valid date"
		end

		begin
			t = Time.new(a[2].to_i, a[0].to_i, a[1].to_i)
		rescue ArgumentError
			return "Not a valid date"
		end
		case t.wday 
		when 0
			"Sunday"
		when 1
			"Monday"
		when 2
			"Tuesday"
		when 3
			"Wednesday"
		when 4
			"Thursday"
		when 5
			"Friday"
		when 6
			"Saturday"
		end
	end
end


				