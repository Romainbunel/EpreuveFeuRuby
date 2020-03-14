retourFinal = ""

for mot in ARGV
    mot.split('')
    retour = ""
    for i in 0..mot.length-1
        if (i%2 > 0)
            retour += mot[i].upcase
            
        else
            retour += mot[i].downcase
        end
    end
    
    retourFinal += (retour + " ")
end

puts retourFinal