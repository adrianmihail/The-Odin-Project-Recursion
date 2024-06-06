def fibs(index)
  sequence = [0,1,1]
  index_location = index - 1
  counter = 0

  while counter < index_location
    new_number = sequence[-2] + sequence[-1]
    sequence.append(new_number)
    counter += 1
  end

  sequence[index_location]
end

p fibs(8)