require 'pry'
require './lib/credit_check'
class CreditCard
  attr_reader :card_number, :limit
  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end
  def is_valid?
    check = CreditCheck.new(@card_number)
    check.check_num
  end
  def last_four
    @card_number[-4..-1]
  end
end
