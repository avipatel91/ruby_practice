class Parcel
	def initialize(length = 0, width = 0, height = 0, weight = 0)
		@length = length
		@width = width
		@height = height
		@weight = weight
	end

	def volume()
		@width * @height * @length
	end

	#returns shipping cost based on my formula
	def cost_to_ship()
		(2 * volume() * @weight).to_s()
	end 

end