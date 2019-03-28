def bubble_sort(array)
  reps = array.length - 1
  reps.times do |i|
    (reps - i).times do |j|
      array[j], array[j+1] = array[j+1], array[j] if array[j] > array[j+1]
    end
  end
  array
end

def bubble_sort_by(array)
  reps = array.length - 1
  reps.times do |i|
    (reps - i).times do |j|
      condition =
      array[j], array[j+1] = array[j+1], array[j] if condition
    end
  end
  array
end

arr = [5, 2, 8, 1]

p bubble_sort arr