class String
	def palindrome
		if self == ""
			return ""
		end
		pali = ""
		word = self
		for num in (self.length-1).downto(0) do 
			pali+=word[num] 
		end
		pali
	end
end


class Fixnum
	def palindrome
		n = self
		reverse = 0
		while n!=0 do
			reverse = reverse * 10
			reverse = reverse + n%10
			n = n/10
		end
		reverse
	end
end
