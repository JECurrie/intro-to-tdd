gem "minitest"
require "minitest/autorun"
require_relative "calculator"

class TestCalculator < MiniTest::Unit::TestCase
  def test_string_of_1_return_1
    assert_equal 1, Calculator.add("1")
  end
  
  def test_a_string_return_number
    number = rand(100)
    assert_equal number, Calculator.add(number.to_s)
  end
  
  def test_empty_string_returns_0
    assert_equal 0, Calculator.add("")
  end  
end
