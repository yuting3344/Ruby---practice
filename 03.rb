def square_digits num
    num.to_s.chars.map{ |digit| digit.to_i ** 2 }.join.to_i
end