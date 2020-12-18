c1 = File.readlines(ARGV[0].to_s)
c2 = File.readlines(ARGV[1].to_s)

c1.each {|x| x.strip!}
c2.each {|y| y.strip!}

trouve = false
perdu = false
resultat = [0,0]

for i in 0..c2.length-1
    for j in 0..c2[0].length-1
        if (c2[i][j] == c1[0][0])
            if trouve == false
                resultat = [i,j]
            end
            for k in 0..c1.length-2
                for l in 0..c1[0].length-2
                    if(c1[k][l]!=c2[i+k][j+l])
                        perdu = true
                    end
                end
            end
            if (perdu)
                perdu = false
            else 
                trouve = true
            end
        end
    end
end

if trouve
    puts resultat[1].to_s + ", " + resultat[0].to_s
else
    puts "Pas trouvé"
end

