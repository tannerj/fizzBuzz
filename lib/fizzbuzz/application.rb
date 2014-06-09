require_relative 'fizz_buzz.rb'

module FizzBuzz
  class Application
    
    def initialize
      @fizz_buzz = FizzBuzz.new
      self
    end
    
    def run
      100.times do |number|
        fizz = @fizz_buzz.fizz
        buzz = @fizz_buzz.buzz
        if fizz && buzz then puts "fizzBuzz"
        elsif fizz then puts "fizz"
        elsif buzz then puts "buzz"
        else puts number
        end
      end
    end
  end
end
