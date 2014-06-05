require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

class TestFizzBuzz < MiniTest::Unit::TestCase
  def setup
    @fizzbuzz = FizzBuzz::FizzBuzz.new
  end

  def test_fizz_returns_true_on_mod_3_equals_0_and_false_otherwise
    assert_equal true, @fizzbuzz.fizz(3)
    assert_equal false, @fizzbuzz.fizz(2)
  end

  def test_buzz_returns_true_on_mod_5_equals_0_and_false_otherwise
    assert_equal true, @fizzbuzz.buzz(5)
    assert_equal false, @fizzbuzz.buzz(6)
  end
end
