arr = [{num: 1}, {num: 1}, {num: 2}, {num: 3}, {num: 4}, {num: 5}]
new_arr = []

arr.each do |hash|
  hash.each_value do |value|
    new_arr << value
  end
end
puts new_arr.uniq.inspect