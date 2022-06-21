def sum_array(arr)
  if arr.nil? || arr.empty?  || arr.size == (1 || 2)
    0
  else
    array_min = arr.min
    array_max = arr.max

    arr.delete(array_min)
    arr.delete(array_max)

    arr.reduce(:+)
    p arr
  end
end

# sum_array(nil)
# sum_array([-3, -5])
sum_array([6, 2, 1, 8, 10])
