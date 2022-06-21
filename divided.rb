def is_divide_by(number, a, b)
  number % a == 0 && number % b == 0
end

p is_divide_by(-12, 2, -6)
p is_divide_by(-12, 2, -5)
