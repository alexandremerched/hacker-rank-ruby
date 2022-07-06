def select_arr(arr)
  arr.select { |item| item.odd? }
end

def reject_arr(arr)
  arr.reject { |item| item % 3 == 0 }
end

def delete_arr(arr)
  arr.delete_if { |item| item < 0 }
end

def keep_arr(arr)
  arr.keep_if { |item| item >= 0 }
end

arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]
p select_arr(arr)
p reject_arr(arr)
p delete_arr(arr)
p keep_arr(arr)
