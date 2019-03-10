card_number = "5541808923795240"


###############1212121212121212
card_number = "5541808923795240"
#make a class
class CreditCheck
  def initialize(number)
    @card_number = number
  end
  def check_num
#convers it to an array of intigers and puts it in the variable
#arrca
arrca = @card_number.to_s.split(//).map{|chr| chr.to_i}

#puts the first digit in the array arrca into first num
first_num = arrca.first

#checks if the number is even and if is not even then it is odd
if first_num.even? == false
  #this multiplys the number in the position 0 and multiplys it by 2
  #and stores it on variable a
  a = arrca[0]*2
  #this delelets whatever number there was in the 0 position
  arrca.delete_at(0)
  #this inserst the new number in the variavle a in the
  #position of the old one
  arrca.insert(0, a)
  #this multiplys the number in the position 2 and multiplys it by 2
  #and stores it on variable b
  b = arrca[2]*2
  #this delelets whatever number there was in the 2 position
  arrca.delete_at(2)
  #this inserst the new number in the variavle b in the
  #position of the old one
  arrca.insert(2, b)
  #this multiplys the number in the position 4 and multiplys it by 2
  #and stores it on variable c
  c = arrca[4]*2
  #this delelets whatever number there was in the 4 position
  arrca.delete_at(4)
  #this inserst the new number in the variavle c in the
  #position of the old one
  arrca.insert(4, c)
  #this multiplys the number in the position 6 and multiplys it by 2
  #and stores it on variable d
  d = arrca[6]*2
  #this delelets whatever number there was in the 6 position
  arrca.delete_at(6)
  #this inserst the new number in the variavle d in the
  #position of the old one
  arrca.insert(6, d)
  #this multiplys the number in the position 8 and multiplys it by 2
  #and stores it on variable e
  e = arrca[8]*2
  #this delelets whatever number there was in the 8 position
  arrca.delete_at(8)
  #this inserst the new number in the variavle e in the
  #position of the old one
  arrca.insert(8, e)
  #this multiplys the number in the position 10 and multiplys it by 2
  #and stores it on variable f
  f = arrca[10]*2
  #this delelets whatever number there was in the 10 position
  arrca.delete_at(10)
  #this inserst the new number in the variavle f in the
  #position of the old one
  arrca.insert(10, f)
  #this multiplys the number in the position 12 and multiplys it by 2
  #and stores it on variable g
  g = arrca[12]*2
  #this delelets whatever number there was in the 12 position
  arrca.delete_at(12)
  #this inserst the new number in the variavle g in the
  #position of the old one
  arrca.insert(12, g)
  #this multiplys the number in the position 14 and multiplys it by 2
  #and stores it on variable h
  h = arrca[14]*2
  #this delelets whatever number there was in the 14 position
  arrca.delete_at(14)
  #this inserst the new number in the variavle h in the
  #position of the old one
  arrca.insert(14, h)

  #this replaces the numbers if they are grater than 10
  #so here if x is = to 10 ? it is replaced by 1
  arrca.map! { |x| x == 10 ? 1 : x }
  #so here if x is = to 11 ? it is replaced by 2
  arrca.map! { |x| x == 11 ? 2 : x }
  #so here if x is = to 12 ? it is replaced by 3
  arrca.map! { |x| x == 12 ? 3 : x }
  #so here if x is = to 13 ? it is replaced by 4
  arrca.map! { |x| x == 13 ? 4 : x }
  #so here if x is = to 14 ? it is replaced by 5
  arrca.map! { |x| x == 14 ? 5 : x }
  #so here if x is = to 15 ? it is replaced by 6
  arrca.map! { |x| x == 15 ? 6 : x }
  #so here if x is = to 16 ? it is replaced by 7
  arrca.map! { |x| x == 16 ? 7 : x }
  #so here if x is = to 17 ? it is replaced by 8
  arrca.map! { |x| x == 17 ? 8 : x }
  #so here if x is = to 18 ? it is replaced by 9
  arrca.map! { |x| x == 18 ? 9 : x }

  #this part sums all of the numbers in the variable arrca and stores them
  #in sum
  sum = arrca.inject(0){|sum,x| sum + x }
  p sum
  #checks if the sum of all the numbers porcetage multiplyd by 10 chould give
  #0 back
  if sum % 10 == 0
    p "The number #{card_number} is valid!"
    return true
  else
    p "The number #{card_number} is invalid!"
  end



#checks if the first num in even
elsif first_num.even? == true
#same prosess as the one tha checks for odd numbers ^ but using even positions
  a = arrca[1]*2
  arrca.delete_at(1)
  arrca.insert(1, a)
  b = arrca[3]*2
  arrca.delete_at(3)
  arrca.insert(3, b)
  c = arrca[5]*2
  arrca.delete_at(5)
  arrca.insert(5, c)
  d = arrca[7]*2
  arrca.delete_at(7)
  arrca.insert(7, d)
  e = arrca[9]*2
  arrca.delete_at(9)
  arrca.insert(9, e)
  f = arrca[11]*2
  arrca.delete_at(11)
  arrca.insert(11, f)
  g = arrca[13]*2
  arrca.delete_at(13)
  arrca.insert(13, g)
  h = arrca[15]*2
  arrca.delete_at(15)
  arrca.insert(15, h)
  p arrca
  #replacesnumbers that go over 10 same as the if statement ^
  arrca.map! { |x| x == 10 ? 1 : x }
  arrca.map! { |x| x == 11 ? 2 : x }
  arrca.map! { |x| x == 12 ? 3 : x }
  arrca.map! { |x| x == 13 ? 4 : x }
  arrca.map! { |x| x == 14 ? 5 : x }
  arrca.map! { |x| x == 15 ? 6 : x }
  arrca.map! { |x| x == 16 ? 7 : x }
  arrca.map! { |x| x == 17 ? 8 : x }
  arrca.map! { |x| x == 18 ? 9 : x }
  sum = arrca.inject(0){|sum,x| sum + x }
  p sum.to_f
  #checks if the sum of all the numbers porcetage multiplyd by 10 chould give
  #0 back
  if 10 % sum  == 0
    p "The number #{card_number} is valid!"
  else
    p "The number #{card_number} is invalid!"
  end
end

end


# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
