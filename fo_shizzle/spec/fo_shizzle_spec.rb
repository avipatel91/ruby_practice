require('rspec')
require('fo_shizzle')

describe('String#foshizzle') do
	it('returns a string as is when no "s" is present') do
		expect("hello".foshizzle()).to(eq("hello"))
	end	

	it('returns a string with all s replaced with z') do
		expect("roses".foshizzle()).to(eq("rozez"))
	end

	it('does NOT replace the first letter when it is an s') do
    	expect("sunshine".foshizzle).to(eq("sunzhine"))
  	end

  	it('replaces letters correctly in a string of words') do
    	expect("moses supposes his toeses are roses".foshizzle).to(eq("mozez suppozez hiz toezez are rozez"))
  	end

  	it('makes correct replacements regardless of case') do
    	expect("Mrs. McSweet's street is Astoria Street!".foshizzle).to(eq("Mrz. McSweet'z street iz Aztoria Street!"))
    end

end