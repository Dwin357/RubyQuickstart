require 'string_calculator'

describe StringCalculator do

	let(:mock_num_cal) { instance_double(NumberCalculator) }
	let(:mock_string_parser) { instance_double(StringParser) }

	context "when 3 + 5 is passed" do
		arg_1 = "3"
		a = 3
		arg_2 = "+"
		arg_3 = "5"
		b = 5
		ans = 8

		it "correctly delegates to subsidiary classes" do
			allow(mock_string_parser).to receive(:convertToInt).and_return(a,b)
			allow(mock_num_cal).to receive(:add).and_return(ans)

			## must pick either once per arg, or twice overall -- can't do both
			expect(mock_string_parser).to receive(:convertToInt).with(arg_1).once
			expect(mock_string_parser).to receive(:convertToInt).with(arg_3).once
			# expect(mock_string_parser).to receive(:convertToInt).twice

			expect(mock_num_cal).to receive(:add).with(a,b).once

			tested = StringCalculator.new(mock_num_cal,mock_string_parser)

			expect(tested.calculate(arg_1,arg_2,arg_3)).to eq(ans)
		end
	end
end