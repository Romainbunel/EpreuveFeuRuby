mot = ARGV[0].to_s
fr = File.readlines(ARGV[1])
trouve = []
result = []

mottemp = mot.chars.sort.join
frtemp = fr.map{|word| word.strip.chars.sort.join }

for i in 0..frtemp.length-1
   if (frtemp[i] == mottemp)
       trouve.push(i)
   end
end

for j in 0..trouve.length-1
    result.push(fr[trouve[j]])
end

puts result
