x = ARGV[0].dup.to_i
final = 1

for i in 1..x
    final *= i
end

puts final