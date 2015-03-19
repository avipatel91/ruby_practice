class String
	define_method(:foshizzle) do
		ary = self.split("")
		str = ""
		ary.each() do |var|
			if var == "s" and str.length() != 0 and str[str.length - 1] != " " 
				str += "z"
			else
				str += var
			end
		end
		str
	end
end