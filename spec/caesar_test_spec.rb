require_relative '../caesar_test.rb'
describe "#caesar_cipher" do
	context "given 'A' with key '5'" do
		it "returns F" do
			expect(caesar_cipher("A",5)).to eql("F")
		end
	end

	context "given '%^&bc' with key '2'" do 
		it "returns '%^&de'" do
			expect(caesar_cipher("%^&bc",2)).to eql("%^&de")
		end
	end

	context "given 'string not encrypted at all (26 as key)' with key '26'" do 
		it "returns 'string not encrypted at all (26 as key)'" do
			expect(caesar_cipher("string not encrypted at all (26 as key)",26)).to eql("string not encrypted at all (26 as key)")
		end
	end

	context "given 'special chars !@#$%^&*()}{:><][;.,/' with key '2'" do
	    it "returns urgekcn ejctu !@#$%^&*()}{:><][;.,/" do
	      expect(caesar_cipher("special chars !@#$%^&*()}{:><][;.,/", 2)).to eql("urgekcn ejctu !@#$%^&*()}{:><][;.,/")
	    end
  	end
	
	context "given 'sssaaammmeee letters     &spaces' with key '2'" do
    it "returns uuucccoooggg ngvvgtu &urcegu" do
      expect(caesar_cipher("sssaaammmeee letters     &spaces", 2)).to eql("uuucccoooggg ngvvgtu     &urcegu")
    end
  end
 
 	context "given 'S0m3 num83r5' with key '9'" do
	    it "returns B0v3 wdv83a5" do
	      expect(caesar_cipher("S0m3 num83r5", 9)).to eql("B0v3 wdv83a5")
	    end
  	end
end
