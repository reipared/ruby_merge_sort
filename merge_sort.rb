def merge_sort(array)
  # Base case: an array of length 1 is already sorted
  return array if array.length <= 1

  # Split the array in half
  mid = array.length / 2
  left_half = array[0...mid]
  right_half = array[mid..-1]

  # Recursively sort the left and right halves
  sorted_left_half = merge_sort(left_half)
  sorted_right_half = merge_sort(right_half)

  # Merge the two sorted halves
  merged_array = []
  until sorted_left_half.empty? || sorted_right_half.empty?
    if sorted_left_half.first <= sorted_right_half.first
      merged_array << sorted_left_half.shift
    else
      merged_array << sorted_right_half.shift
    end
  end

  merged_array + sorted_left_half + sorted_right_half
end
