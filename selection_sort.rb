def find_smallest(array)
  smallest = array[0]
  smallest_index = 0
    array.drop(1).each_with_index do |value, index|
      print "value: #{value} "
      puts "Index: #{index}"
      next unless value < smallest
      smallest = value
      puts "smallest: #{smallest}"
      smallest_index = index + 1
      puts "smallest index: #{smallest_index}"
    end
    return smallest_index
end

def selection_sort(array)
  sorted_array = []

  while array.length > 0
    index = find_smallest(array)
    puts "I'm in the selection sort method!"
    sorted_array << array.delete_at(index)
    print array 
    print sorted_array
  end
  return sorted_array
end

puts selection_sort([1, 10, 8, 2, 6, 3, 4, 5])
