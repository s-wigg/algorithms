def binary_search(list, item)

  low = 0
  high = list.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = list[mid]
    if guess == item
      return mid
    elsif guess > item
      high = mid - 1
    else guess < item
      low = mid + 1
    end
  end
  print "Invalid query - not in data set" # this won't print??
end

my_list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]

puts binary_search(my_list, -2)
