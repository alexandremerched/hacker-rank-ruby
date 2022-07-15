def element_at(arr, index)
  arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
  arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
  arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
  arr[start_pos, length]
end

arr = [9, 5, 1, 2, 3, 4, 0, -1]
  
p element_at(arr, 2) 
p inclusive_range(arr, 1, 5) 
p non_inclusive_range(arr, 1, 5)
p start_and_length(arr, 0, arr.length)
