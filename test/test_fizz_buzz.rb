require 'minitest/autorun'
require_relative '../lib/fizzbuzz/fizz_buzz'

class TestFizzBuzz < MiniTest::Unit::TestCase
  def setup
    @fizz_buzz = FizzBuzz::FizzBuzz.new
  end

  def test_fizz_returns_true_on_mod_3_equals_0_and_false_otherwise
    assert_equal true, @fizz_buzz.fizz(3)
    assert_equal false, @fizz_buzz.fizz(2)
    assert_equal false, @fizz_buzz.fizz(0)
  end

  def test_buzz_returns_true_on_mod_5_equals_0_and_false_otherwise
    assert_equal true, @fizz_buzz.buzz(5)
    assert_equal false, @fizz_buzz.buzz(6)
    assert_equal false, @fizz_buzz.buzz(0)
  end
end
