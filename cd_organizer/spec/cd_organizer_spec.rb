require('rspec')
require('cd_organizer')

describe(CdOrganizer) do
	before() do
		CdOrganizer.clear()
	end

	describe("#title") do
		it("returns title of CD") do
			test_cd = CdOrganizer.new('Bad', 'Michael Jackson')
			test_cd.save()
			expect(test_cd.title()).to(eq("Bad"))
		end
	end

	describe('#artist') do
		it('returns artist of CD') do
			test_cd = CdOrganizer.new('Bad', 'Michael Jackson')
			test_cd.save()
			expect(test_cd.artist()).to(eq('Michael Jackson'))
		end
	end

	describe('#find') do
		it('finds cd and returns it') do
			test_cd = CdOrganizer.new('Bad', 'Michael Jackson')
			test_cd.save()
			expect(CdOrganizer.find('Bad')).to(eq(test_cd))
		end
	end

	describe('#artist_albums') do
		it('returns a list of albums by a artist') do
			test_cd = CdOrganizer.new('Bad', 'Michael Jackson')
			test_cd.save()
			test_cd = CdOrganizer.new('Thriller', 'Michael Jackson')
			test_cd.save()
			test_cd = CdOrganizer.new('Hello', "Martin")
			test_cd.save()
			expect(CdOrganizer.artist_albums('Michael Jackson')).to(eq(['Bad','Thriller']))
		end
	end
end
