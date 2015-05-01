class Places
	@@location = []

	def self.clear()
		@@location = []
	end

	def self.locations()
		@@location
	end

	def self.save(location)
		@@location.push(location)
	end

end