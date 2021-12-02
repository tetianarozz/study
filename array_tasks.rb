# 1.Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
numbers = [1, 5, 6, 8, 9, 11, 12, 14, 16, 17, 19]
puts (numbers.select.with_index { |_, index| index.even?} + numbers.select.with_index { |_, index| index.odd? }).to_s

numbers = [1, 5, 6, 8, 9, 11, 12, 14, 16, 17, 19]
new_arr = []

numbers.each_with_index do |el, index|
  new_arr << el if index.even?
end

numbers.each_with_index do |el, index|
  new_arr << el if index.odd?
end

puts new_arr.inspect

# 2.Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
numbers = [1, 5, 6, 8, 9, 11, 12, 14, 16, 17, 19]
new_arr = []

numbers.each_with_index do |el, index|
  new_arr << el if index.odd?
end

numbers.each_with_index do |el, index|
  new_arr << el if index.even?
end

puts new_arr.inspect

# 3.Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент.
# Первый и последний элементы массива не изменять.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
first_el = numbers.first
last_el = numbers.last

numbers.map! do |number|
  if number.even? && number != first_el && number != last_el
    number + first_el
  else
    number
  end
end

puts numbers.inspect

# 4.Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент.
# Первый и последний элементы массива не изменять.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
first_el = numbers.first
last_el = numbers.last

numbers.map! do |number|
  if number.even? && number != first_el && number != last_el
    number + last_el
  else
    number
  end
end

puts numbers.inspect

# 5.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент.
# Первый и последний элементы массива не изменять.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
first_el = numbers.first
last_el = numbers.last

numbers.map! do |number|
  if number.odd? && number != first_el && number != last_el
    number + last_el
  else
    number
  end
end

puts numbers.inspect

# 6.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент.
# Первый и последний элементы массива не изменять.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
first_el = numbers.first
last_el = numbers.last

numbers.map! do |number|
  if number.odd? && number != first_el && number != last_el
    number + first_el
  else
    number
  end
end

puts numbers.inspect

# 7.Дан целочисленный массив. Заменить все положительные элементы на значение минимального.
numbers = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
min = numbers.min

numbers.map! do |el|
  if el.positive?
    min
  else
    el
  end
end

puts numbers.inspect

# 8.Дан целочисленный массив. Заменить все положительные элементы на значение максимального.

numbers = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
max = numbers.max

numbers.map! do |el|
  if el >= 0
    max
  else
    el
  end
end

puts numbers.inspect

#9.Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.
numbers = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
min = numbers.min

numbers.map! do |el|
  if el < 0
    min
  else
    el
  end
end

puts numbers.inspect

#10.Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.
numbers = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
max = numbers.max

numbers.map! do |el|
  if el < 0
    max
  else
    el
  end
end

puts numbers.inspect

# 11.Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.
numbers = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
numbers.unshift(0)

puts numbers.inspect

#12.Дан целочисленный массив. Упорядочить его по возрастанию.
numbers = [ 1, 5, 3, 7, 4, 2, 8, 10, 9]

puts numbers.sort.to_s

#13.Дан целочисленный массив. Упорядочить его по убыванию.
numbers = [ 1, 5, 3, 7, 4, 2, 8, 10, 9]
sort_numbers = numbers.sort.reverse
puts sort_numbers.to_s

#14.Дан целочисленный массив и целое число К. Возвести в степень К все элементы массива.
numbers = [1, 5, 3, 7, 4, 2, 8, 10, 9]
new_arr = []

numbers.each do |el|
  new_arr << el**2
end

puts new_arr.to_s

#15.Дан целочисленный массив. Поменять местами минимальный и максимальный элементы массива.
numbers = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
max = numbers.max
min = numbers.min

numbers.map! do |el|
  if el == max
    min
  elsif el == min
    max
  else
    el
  end
end

puts numbers.to_s
