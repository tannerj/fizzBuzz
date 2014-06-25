module FizzBuzz
  class FizzBuzz
    def fizz?(number)
      if number == 0 then return false
      elsif number % 3 == 0 then return true
      else false 
      end
    end

    def buzz?(number)
      if number == 0 then return false
      elsif number % 5 == 0 then return true
      else false
      end
    end
  end
end
