require_relative 'lib/string_calculator'
require_relative 'lib/number_calculator'
require_relative 'lib/string_parser'

puts StringCalculator.new(NumberCalculator.new, StringParser.new).calculate(ARGV[0],ARGV[1],ARGV[2])