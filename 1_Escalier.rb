x = ARGV[0].to_i

for i in 1..x
     (x-i).times { print " "}
     i.times { print "#"}
     puts 
end