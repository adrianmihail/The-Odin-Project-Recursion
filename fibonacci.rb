def fibs(num)
  # Error check
  if num < 0 then
      raise ArgumentError, "The number must be a positive integer"
  end

  # Terminating base cases
  return [] if num == 0
  return [0] if num == 1
  return [0,1] if num == 2 

  # Recursion
  seq = fibs(num - 1) 

  # The recursive function
  seq << seq[-2] + seq[-1]

  return seq
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(4)
p fibs(8)