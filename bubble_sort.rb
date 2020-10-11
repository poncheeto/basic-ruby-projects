# frozen_string_literal: true

def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1 # Return array if it is sorted

  loop do
    swapped = false # To check if numbers have been swapped

    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]
