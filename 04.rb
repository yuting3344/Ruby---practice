
# Sum of Digits / Digital Root

def digital_root(num)
    return num if num == 0
    return 1 + (num - 1) % 9
end
puts digital_root(942)    
puts digital_root(132189) 
puts digital_root(493193) 
