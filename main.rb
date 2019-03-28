def bubble_sort(array)
  reps = array.length - 1
  reps.times do |i|
    (reps - i).times do |j|
      array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
    end
  end
  array
end

arr = [5, 2, 8, 1]
p bubble_sort arr

def bubble_sort_by(arr)
  arrary_length = arr.length - 1
  arrary_length.times do |x|
    (arrary_length - x).times do |i|
      result = yield(arr[i], arr[i + 1])
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if result > 0
    end
  end
  arr
end

nums = [3, 1, 5, 12, 7]
p bubble_sort_by(nums) { |n1, n2| n1 - n2 }

arr_by = %w[hi hello hey]
p bubble_sort_by(arr_by) { |left, right| left.length - right.length }
