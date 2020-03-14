taille = ARGV[0].to_i

if (taille > 0)
    for i in 1..taille do 
        ligne = ""
        for j in 0..taille-i
            ligne += " "
        end
        for k in taille-i..taille-1
            ligne += "#"
        end
        puts ligne
    end
else
    puts "Entrez un nombre valide"
end
