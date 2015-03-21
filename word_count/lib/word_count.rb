class String
	def word_count(word)
		words = []
		words = downcase().scan(/ #{word} /)
		edge = 0
		if downcase().scan(/#{word} /).length >= 1
			edge += 1
		end
		if downcase().scan(/ #{word}\./).length == 1
			edge += 1
		end
		return words.length + edge
	end
end