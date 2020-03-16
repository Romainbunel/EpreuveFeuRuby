def recursif(x)
    if x < 1
        return 1
    else 
        return x * recursif(x-1)
    end
end

puts recursif(ARGV[0].to_i)