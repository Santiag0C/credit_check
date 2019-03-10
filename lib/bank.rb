#creates a class named bank
class Bank
  #makes an attr_reader so the info can be read
  attr_reader :name
#initializes with an argument that is the name of the bank
#and makes an instance variable
  def initialize(name)
    @name = name
  end

  def valid_transaction?(amount, credit_card)
    if credit_card.limit >= amount && credit_card.is_valid?
      true
    else
      false
    end
  end
end
