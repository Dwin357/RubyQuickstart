#an import
require_relative 'number_calculator'

#a comment

# a class
class StringCalculator

	# getter + setter
	attr_reader :num_calc

	# constructor
	def initialize(num_calc, parser)

		# instance var initialized to a value
		@string_parser = parser
		@num_calc = num_calc
	end


	# instance method
	def calculate(a,operation,b)
		a = @string_parser.convertToInt(a) # using an instance var to access obj
		b = @string_parser.convertToInt(b)
		case operation
		when '+'
			num_calc.add(a,b) # using a getter to access obj
		when '-'
			num_calc.subtract(a,b)
		when '*'
			num_calc.multiply(a,b)
		when '/'
			num_calc.divide(a,b)
		else
			raise "Unrecognized operation(supported[+ - * /]):#{operation}"
		end
	end

##
# Things to remember...
# No object types (everyone thought generics were hard anyway)
# No void return types
# Last line of a method implicitly returns if not declared earlier
# Null is nil
# Single quote strings are norm, double quote just to escap
# Not having curly braces is painful
# Not having semi's is weird
# String interpelation is "blah #{whatever_var} blah"
# use snake_case instead of CamelCase
# only need to give a method () when passing a var (both calling & defining)

end