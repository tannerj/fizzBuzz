module FizzBuzz
  #FizzBuzz Errors
	class FizzBuzzError < StandardError
	end

  #Raised when the initial value for FizzBuzz is greater than the last value
  class InitializeError < FizzBuzzError
  end
end
