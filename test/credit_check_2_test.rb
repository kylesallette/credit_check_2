require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/credit_check_2"
require 'pry'



class CreditCheckTest < Minitest::Test

  def test_instance_of_number
    credit = CreditCheck.new(2689)

    assert_equal 2689, credit.number
  end

  def test_sum_starts_0
    credit = CreditCheck.new(2689)

    assert_equal 0, credit.sum
  end


  def test_check_double_every_other_digit
    credit = CreditCheck.new(2689)

    assert_equal [4,6,16,9] , credit.double_every_other_digit
  end

  def test_sum_digits_over_ten
    credit = CreditCheck.new(2689)

    assert_equal [4,6,7,9] , credit.sum_digits
  end

end
