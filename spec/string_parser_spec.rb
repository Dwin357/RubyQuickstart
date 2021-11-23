require 'string_parser'

describe StringParser do

		attr_reader :tested

	before do
		@tested = StringParser.new
	end

	describe "given string number" do
		it "returns integer number" do
			expect(tested.convertToInt("5")).to eq(5)
		end
	end

	describe "given non-number string" do
		it "returns zero" do
			expect(tested.convertToInt("abc")).to eq(0)
		end
	end	
end