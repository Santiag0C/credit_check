require './lib/credit_card'
require 'minitest/autorun'
require 'minitest/pride'

class BankTest < Minitest::Test
  def test_it_exists
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_instance_of CreditCard, credit_card
  end
  def test_card_number
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5541808923795240", credit_card.card_number
  end
  def test_limit
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal 15000, credit_card.limit
  end
  def test_last_four
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5240", credit_card.last_four
  end
  def test_is_valid
    
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal true, credit_card.is_valid?
  end
end
