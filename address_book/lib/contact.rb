class Contact
	attr_reader(:name)
	attr_accessor(:address, :email, :phone)
	def initialize(name)
		@name = name
		@address = ""
		@email = ""
		@phone = Phone.new()
	end

	def add_number(type, number)
		@phone.add_number(type, number)
	end
end