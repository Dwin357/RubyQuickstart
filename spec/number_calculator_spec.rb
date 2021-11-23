require 'number_calculator'

describe NumberCalculator do

	attr_accessor :tested

	before do
		@tested = NumberCalculator.new
	end


	# note: context and describe are interchangeable & nestable
	
	context "given 3 and 5" do
		a = 3
		b = 5

		describe "add" do
			it "returns 8" do
				expected = 8
				expect(tested.add(a,b)).to eq(expected)
			end
		end

		describe "subtract" do
			it "returns -2" do
				expected = -2
				expect(tested.subtract(a,b)).to eq(expected)
			end
		end

		describe "multiply" do
			it "returns 15" do
				expected = 15
				expect(tested.multiply(a,b)).to eq(expected)
			end
		end	
	end

	describe "divide" do
		context "given 3 and 5" do
			a =3
			b =5
			it "returns 0" do
				expected = 0
				expect(tested.divide(a,b)).to eq(expected)
			end
		end
		context "given 6 and 3" do
			a =6
			b =3
			it "returns 2" do
				expected =2
				expect(tested.divide(a,b)).to eq(expected)				
			end
		end
	end			
end