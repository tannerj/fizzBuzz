require_relative 'fizz_buzz'

module FizzBuzz
  class Application
    
    def initialize
      @fizz_buzz = FizzBuzz.new
      self
    end
    
    def run
      (1..100).each do |number|
        fizz = @fizz_buzz.fizz(number)
        buzz = @fizz_buzz.buzz(number)
        if fizz && buzz then puts "fizzBuzz"
        elsif fizz then puts "fizz"
        elsif buzz then puts "buzz"
        else puts number
        end
      end
    end
  end
end