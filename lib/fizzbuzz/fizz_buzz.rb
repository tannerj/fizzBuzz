module FizzBuzz
  class FizzBuzz
    
    #We fizz if the number being tested is evenly divisible by 3
    def fizz?(number)
      if number == 0 then return false #Zero % any number will equal zero
      elsif number % 3 == 0 then return true
      else false 
      end
    end
    
    #We buzz if the number being tested is evenly divisible by 5
    def buzz?(number)
      if number == 0 then return false #Zero % any number will equal zero
      elsif number % 5 == 0 then return true
      else false
      end
    end
  end
end
