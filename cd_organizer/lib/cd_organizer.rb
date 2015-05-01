class CdOrganizer
	@@library = []
	def initialize(title, artist)
		@title = title
		@artist = artist
	end

	def save()
		@@library.push(self)
	end

	def title()
		@title
	end

	def artist()
		@artist
	end

	def self.clear()
		@@library = []
	end

	def self.all()
		@@library
	end

	def self.find(title)
		@@library.each do |cd|
			if cd.title() == title
				return cd
			end
		end
	end

	def self.artist_albums(artist)
		#@@library.collect {|cd| cd.title() if cd.artist() == artist}
		albums = []
		@@library.each() do |cd|
			if cd.artist == artist
				albums.push(cd.title)
			end
		end
		albums
	end
end

