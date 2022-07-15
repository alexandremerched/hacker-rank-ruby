def end_arr_delete(arr)
  arr.pop
end

def start_arr_delete(arr)
  arr.shift
end

def delete_at_arr(arr, index)
  arr.delete_at(index)
end

def delete_all(arr, val)
  arr.delete(val)
end

arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3]

p end_arr_delete(arr)
p start_arr_delete(arr)
p delete_at_arr(arr, 2)
p delete_all(arr, 5)
