# memory intensive because does not sort in place 
def quicksort(array)

  return array if array.length < 2

  pivot_index = (array.length / 2)
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

    lesser = []
    greater = []
    array.each do |i|
      if i <= pivot_value
        lesser << i
      else
        greater << i
      end
  end
  quicksort(lesser) + [pivot_value] + quicksort(greater)
end

array1 = [3, 2, 1]
p quicksort(array1)
