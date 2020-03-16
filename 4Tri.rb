tab = ARGV.sort_by(&:to_i).reverse()
for i in 0..tab.length-1
    print tab[i]+" "
end

puts " "