class MyHash
	def initialize()
		@hash = Hash.new()
	end

	def store(key, value)
		@hash[key.to_sym] = value
	end

	def fetch(key)
		@hash[key.to_sym]
	end
end

