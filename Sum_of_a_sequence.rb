def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  
  sum = 0
  current = begin_number
  
  while current <= end_number
    sum += current
    current += step
  end
  
  sum
end
