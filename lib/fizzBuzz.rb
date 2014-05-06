require File.expand_path(File.dirname(__FILE__) + '/errors')

module FizzBuzz
	
  class FizzBuzz
    attr_reader :output

    def initialize(initial: 0, last: 100)
      if initial > last
        raise InitializeError, "The initial value must be smaller than the last value."
      end
      @initial = initial
      @last = last
      @currentPosition = @initial
      @output = []
    end

    def start(&block)
    numberRangeIterator
      if block_given?
        @output.each(&block)
      else
        @output
      end
    end

    private

    def numberRangeIterator
      while @currentPosition <= @last do
        #Zero is a special case because that is what we test for
        #in fizz? and buzz?
        if @currentPosition != 0
          @output << fizzBuzz( @currentPosition )
        else
          @output << @currentPosition
        end
        updatePosition 
      end
      return @output
    end

    def updatePosition
      @currentPosition += 1
    end

    def fizzBuzz( number )
			
      fizz = fizz?( number )
      buzz = buzz?( number )
			
      if fizz && buzz
        return "FizzBuzz (#{number})"
      elsif fizz
        return "Fizz (#{number})"
      elsif buzz
        return "Buzz (#{number})"
		  end

      #If we dont' fizz or buzz, we return the original number
      return number
    end

    def fizz?( number )
      if  number % 3 == 0
        return true
      else
        return false
      end
    end

    def buzz?( number )
      if number % 5 == 0
        return true
      else
        return false
      end
    end
  end
end

#begin
#	fizzbuzz = FizzBuzz::FizzBuzz.new( initial: 0, last: 200 )
#	fizzbuzz.start {|number| puts number}
#rescue FizzBuzz::InitializeError => e
#	puts e.message
#end
