x = ARGV[0].dup
for i in 0..x.length-1
    if (i % 2 == 1)
        x[i] = x[i].upcase
    else
        x[i] = x[i].downcase
    end
end

puts x

