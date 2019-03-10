require 'pry'
require './lib/credit_check'
#make a class called CreditCard
class CreditCard
  #makes attr_reader so i can read the data
  attr_reader :card_number, :limit
  #makes an ilitialize method with 2 arguments
  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end
#checs if the number is valid by pasing the number as an
#argument
  def is_valid?
    check = CreditCheck.new(@card_number)
    check.check_num
  end
#sepearates the last for of the string 
  def last_four
    @card_number[-4..-1]
  end
end
