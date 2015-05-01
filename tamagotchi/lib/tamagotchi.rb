class Tamagotchi

	attr_accessor :name
	attr_accessor :food_level
	attr_accessor :sleep_level
	attr_accessor :activity_level

	def initialize(name)
		@name = name 
		@food_level = 10
		@sleep_level = 10
		@activity_level = 10
	end

	def time_passes()
		@food_level -= 1
	end

	def is_alive?()
		@food_level > 0
	end

end

