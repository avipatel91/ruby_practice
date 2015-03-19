class String
	def anagram(ary)
		anagrams = []
		alphabetical = self.split("").sort
		if self == ""
			return ""
		end
		val = true
		ary.each() do |word|
			if alphabetical == word.split("").sort
				anagrams.push(word)
			else
				letters = word.split("")
				letters.each() do |letter|
					if val == true
						if !alphabetical.include?(letter)
							val = false
						end
					end
				end
				if val == true
					anagrams.push(word)
				else
					val = true
				end
			end
		end
		anagrams
	end
end