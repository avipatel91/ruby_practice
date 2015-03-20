class Fixnum
	def num_to_words()
		large = {1000000000000 => "trillion", 1000000000 => "billion", 1000000 => "million", 100000 => "hundred", 1000 => "thousand", 100 => "hundred"}
		ones = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
		tens = {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
		
		num = self

		str = ""

		if(num == 0)
			return ones[num]
		end

		while(num!=0) do
			place = 1
			while(num / place >= 10) do
				place *= 10
			end

			if place * (num/place) < 99999 and place * (num/place) > 19999
				str += tens[num / (place/10) / 10 * 10] + " " +  ones[num / (place/10)  % 10] +" thousand "
				num = num % 1000


			elsif  place > 999 and place < 20000
		    	if place == 10000
					str += ones[num / (place/10)] + " thousand "
					num = num % 1000
				else
					str += ones[num / (place)] + " thousand "
					num = num % 1000
				end 
			

		    elsif place * (num/place) < 1000 and place * (num/place) > 99
		    	str += ones[(num/place)] + " hundred "
				num = num % 100
			

			elsif place * (num/place) < 100 and place * (num/place) > 19
				str += tens[place * (num/place)] + " "
				num = num % 10
			
			elsif num < 20
				str+= ones[num]
				num = 0
			end
		end
		str
	end
end
