def selection_sort(word)
  # time complexity is O(n^2) or quadratic

  length = word.length
  i = 0
  while i < length - 1
    min_index = i
    j = i + 1
    while j < length
      if word[j] < word[min_index]
        min_index = j
      end
      j += 1
    end
    if min_index != i
      temp = word[min_index]
      word[min_index] = word[i]
      word[i] = temp
    end
    i += 1
  end
end


def anagram(word1, word2)
  if word1.length != word2.length
    return false
  end

  selection_sort(word1)
  selection_sort(word2)

  # could potentially use split, sort, and join if space complexity of less concern?? 
  # word1 = word1.split('').sort.join
  # word2 = word2.split('').sort.join

  if word1 == word2
    return true
  else
    return false
  end
end

def anagram2(word1, word2)
  if word1.length != word2.length
    return false
  end

  array = Array.new(256, 0)

  word1.each_char do |char|
    array[char.ord] +=1
  end

  word2.each_char do |char|
    array[char.ord] -= 1
  end

  array.each do |i|
    if i != 0
      return false
    end
  end
  return true
end

puts "Test 1: if anagram returns true"
word1 = "ate"
word2 = "tea"
if anagram(word1, word2) == true
  puts "Correctly identified an anagram"
else
  puts "Error -- method should have returned true"
end

puts "Test 2: if not an anagram returns false"

word1 = "banana"
word2 = "pineapple"

if anagram(word1, word2) == false
  puts "Correctly identified not an anagram"
else
  puts "Error -- method should have returned false"
end

puts "Test 3: Returns false if different lengths"
word1 = "ate"
word2 = "teaa"

if anagram(word1, word2) == false
  puts "Correctly identified not an anagram"
else
  puts "Error -- method should have returned false"
end

puts "==================="

puts "Test1 for anagram2: is an anagram"
word1 = "ate"
word2 = "tea"

if anagram2(word1, word1) == true
  puts "Correctly identified an anagram"
else
  puts "Error -- method should have returned true"
end

puts "Test 2: if not an anagram returns false"

word1 = "banana"
word2 = "pineapple"

if anagram2(word1, word2) == false
  puts "Correctly identified not an anagram"
else
  puts "Error -- method should have returned false"
end

puts "Test 3: Returns false if different lengths"
word1 = "ate"
word2 = "teaa"

if anagram2(word1, word2) == false
  puts "Correctly identified not an anagram"
else
  puts "Error -- method should have returned false"
end
