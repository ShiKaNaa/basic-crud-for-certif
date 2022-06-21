def sum_array(arr)
  if arr.nil? || arr.empty?  || arr.size == 1 || arr.size == 2
    0
  else
    array_min = arr.min
    array_max = arr.max
    arr.delete_at(arr.index(array_min))
    arr.delete_at(arr.index(array_max))
    arr.reduce(:+)
  end
end

# sum_array(nil)
# sum_array([-3, -5])
p sum_array([6, 0, 1, 10, 10])
