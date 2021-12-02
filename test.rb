ab = {a: 1, b: 2}
cd = {c: 3, d: 4}

abcd = ab.merge(cd)

abcd.delete_if {|key, value| value < 2 }

puts abcd.inspect