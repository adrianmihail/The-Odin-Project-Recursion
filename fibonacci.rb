def fibs(index)
  sequence = [0,1,1]
  index_location = index - 1
  counter = 2

  while counter < index_location
    new_number = sequence[-2] + sequence[-1]
    sequence.append(new_number)
    counter += 1
  end

  sequence
end

p fibs(8)

def fibs_rec(index, n1 = 1, n2 = 1, sequence = [0,1,1])

  return sequence if sequence.length() == index
  return sequence[0..0] if index == 1 
  return sequence[0..1] if index == 2
  return sequence[0..2] if index == 3
  
  fibs_rec(index, n1 = sequence[-2], n2 = sequence[-1], sequence.append(n2+n1))

end

p fibs_rec(8)