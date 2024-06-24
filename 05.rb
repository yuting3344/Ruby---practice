
# Highest and Lowest

def high_and_low(numbers)
    nums = numbers.split.map(&:to_i)
    [nums.max, nums.min].join(' ')
end


puts high_and_low("1 2 3 4 5") 
puts high_and_low("1 2 -3 4 5")
puts high_and_low("1 9 3 4 -5")