x = ARGV[0].dup.to_i

def factorielle(x)
    if x>1
        return x*factorielle(x-1)        
    else
        return 1
    end
end

puts factorielle(x)