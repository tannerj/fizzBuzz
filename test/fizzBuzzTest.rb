require "minitest/autorun"
require File.expand_path(File.dirname(__FILE__) + '/../lib/fizzBuzz')

class TestFizzBuzz < MiniTest::Test
	
	def test_first_fizzBuzz_cycle
		@fizzBuzz = FizzBuzz::FizzBuzz.new(initial: 0, last: 15)
		assert_equal [0,1,2,"Fizz (3)", 4, "Buzz (5)", "Fizz (6)", 7, 8, "Fizz (9)", "Buzz (10)", 11, "Fizz (12)", 13, 14, "FizzBuzz (15)"], @fizzBuzz.start
	end

	def test_raises_InitializeError_if_initial_value_is_larger_than_last_value
		exception = assert_raises(FizzBuzz::InitializeError) { @fizzBuzz = FizzBuzz::FizzBuzz.new(initial: 100, last: 0) }
		assert_equal "The initial value must be smaller than the last value.", exception.message, "An exception was not thrown when the initial value was higher than the last."
	end
end
