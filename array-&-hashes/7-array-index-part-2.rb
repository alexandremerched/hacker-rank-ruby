def neg_pos(arr, index)
  arr[-index]
end

def first_element(arr)
  arr.first
end

def last_element(arr)
  arr.last
end

def first_n(arr, n)
  arr.take(n)
end

def drop_n(arr, n)
  arr.drop(n)
end

arr = [9, 5, 1, 2, 3, 4, 0, -1]
  
p neg_pos(arr, 1) 
p first_element(arr) 
p last_element(arr)
p first_n(arr, 3)
p drop_n(arr, 3)
