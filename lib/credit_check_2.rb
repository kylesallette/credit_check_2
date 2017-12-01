 require 'pry'
 require 'colorize'

class CreditCheck


  attr_reader :number,
              :sum

  def initialize(number)
    @number = number
    @sum = 0
  end

  def runner
    digits
    sum_digits
    valid_or_invalid
  end

  def digits
    number.to_s.split('').map {|digit| digit.to_i}
  end

  def double_every_other_digit
    digits.map.with_index { |n,i| i % 2 == 0 ? n * 2 : n }
  end

  def numbers_over_ten
    double_every_other_digit.map.with_index { |n,i| n >= 10 ? n - 9 : n}
  end

  def sum_digits
    numbers_over_ten.each { |n| @sum += n }
  end

  def valid_or_invalid
    if @sum % 10 == 0
      puts "This card is \n valid".green
    else
      puts "This card is \n invalid".red
    end
  end

end
