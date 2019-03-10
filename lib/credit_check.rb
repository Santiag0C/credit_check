

card_number = "5541808923795240"

class CreditCheck
  def initialize(number)
    @card_number = number
  end
  def check_num
arrca = @card_number.to_s.split(//).map{|chr| chr.to_i}

first_num = arrca.first

if first_num.even? == false

  a = arrca[0]*2
  arrca.delete_at(0)

  arrca.insert(0, a)

  b = arrca[2]*2
    arrca.delete_at(2)
    arrca.insert(2, b)
  c = arrca[4]*2
  arrca.delete_at(4)
  arrca.insert(4, c)
  d = arrca[6]*2
  arrca.delete_at(6)
    arrca.insert(6, d)
    e = arrca[8]*2
  arrca.delete_at(8)
  arrca.insert(8, e)
  f = arrca[10]*2
  arrca.delete_at(10)
    arrca.insert(10, f)
    g = arrca[12]*2
  arrca.delete_at(12)
    arrca.insert(12, g)
    h = arrca[14]*2
  arrca.delete_at(14)
    arrca.insert(14, h)

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
  p sum

  if sum % 10 == 0
    p "The number #{card_number} is valid!"
    return true
  else
    p "The number #{card_number} is invalid!"
  end



elsif first_num.even? == true
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

  if 10 % sum  == 0
    p "The number #{card_number} is valid!"
    return true
  else
    p "The number #{card_number} is invalid!"
  end
end
end
end
