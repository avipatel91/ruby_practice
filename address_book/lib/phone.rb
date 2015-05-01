class Phone
	attr_reader(:home, :work, :cell)
	def initialize()
		@home = ""
		@work = ""
		@cell = ""
	end

	def add_number(type, number)
		case type
		when "home" then @home = number
		when "work" then @work = number
		when "cell" then @cell = number
		end
	end
end