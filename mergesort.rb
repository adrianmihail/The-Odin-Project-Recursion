def merge_sort(array)

  if array.size > 1
    half = array.size / 2
    array1 = array.take(half)
    array2 = array.drop(half)
    array = merge merge_sort(array1), merge_sort(array2)
  end

  array

end

def merge (array1, array2)
  merged = []

  while array1.any? && array2.any?
    if array1.first < array2.first
      merged.push array1.shift
    else
      merged.push array2.shift
    end
  end

  merged += array1
  merged += array2
end




unsorted_array = (1..10).to_a.shuffle
sorted = merge_sort(unsorted_array)
puts "Sorted Correctly: #{sorted == unsorted_array.sort} | #{unsorted_array} => #{sorted}"

