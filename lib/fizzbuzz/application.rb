require_relative 'fizz_buzz'

module FizzBuzz
  class Application
    
    def initialize
      @fizz_buzz = FizzBuzz.new
      self
    end
    #Application Runner, Creates a range of numbers to test
    #For Fizz and Buzz and out puts the result to the command
    #line.
    def run
      (-100..100).each do |number|
        fizz = @fizz_buzz.fizz?(number)
        buzz = @fizz_buzz.buzz?(number)
        if fizz && buzz then puts "fizzBuzz (#{number})"
        elsif fizz then puts "fizz (#{number})"
        elsif buzz then puts "buzz (#{number})"
        else puts number
        end
      end
    end
  end
end
