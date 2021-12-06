#1
# hash = {num: 1, color: "blue", weight: 50}
# 1. add to hash new key "hight" with value 100
hash = {num: 1, color: "blue", weight: 50}
hash[:hight] = 100

puts hash.inspect

# 2. change value key num from 1 to 3
hash = {num: 1, color: "blue", weight: 50}
hash[:num] = 3

puts hash.inspect

# 3. move key and value color from current hash to new
hash = {num: 1, color: "blue", weight: 50}
new_hash = {}
new_hash[:color] = hash.delete(:color)

puts new_hash.inspect

# 4. add to current hash other hash hash2 = {num2: 4, weight: 100, hight: 150}
hash = {num: 1, color: "blue", weight: 50}
hash2 = {num2: 4, weight: 100, hight: 150}

puts hash.merge(hash2).inspect

# 2
# You have two hashes ab = {a: 1, b: 2} and cd = {c: 3, d: 4}
# 1. Make the new hash from ab and cd where value should be more than 2
ab = {a: 1, b: 2}
cd = {c: 3, d: 4}

abcd = ab.merge(cd)

abcd.delete_if {|key, value| value < 2 }

puts abcd.inspect

# 3
# { foo: 0, bar: 1, baz: 2 }
# 1. Create new arr from hash keys
hash = { foo: 0, bar: 1, baz: 2 }

puts hash.keys.inspect

# 2. Create new arr from hash values
hash = { foo: 0, bar: 1, baz: 2 }

puts hash.values.inspect

# 3. Create new sting with structure "keys: keys from hash; values: values from hash"
hash = { foo: 0, bar: 1, baz: 2 }

hash.each_pair {|key, value| puts "keys: #{key}; values: #{value}"}

# 4. Return sum all values of hash
hash = { foo: 0, bar: 1, baz: 2 }

puts hash.values.sum.inspect

# 4
#
# [{num: 1}, {num: 1}, {num: 2}, {num: 3}, {num: 4}, {num: 5}]
# 1. Return new arr with uniq values of hashes
arr = [{num: 1}, {num: 1}, {num: 2}, {num: 3}, {num: 4}, {num: 5}]
new_arr = []

arr.each do |hash|
  hash.each_value do |value|
    new_arr << value
  end
end
puts new_arr.uniq.inspect

# 2. Change all values in hashes on value+1 if value < 3
arr = [{num: 1}, {num: 1}, {num: 2}, {num: 3}, {num: 4}, {num: 5}]

arr.map! do |hash|
  key = hash.keys.first
  value = hash.values.first

  value += 1 if value < 3

  {"#{key}": value}
end

puts arr.inspect

# 3. Return new arr with keys of hash where keys should be key + value of key hash.
# - for example [{a: b1}, {a: b2}] must return ["ab1", "ab2"]
arr = [{a: "b1"}, {a: "b2"}]
new_arr = []

arr.each do |hash|
  hash.each_pair do |key, value|
    new_arr << "#{key}#{value}"

  end
end

puts new_arr.inspect
