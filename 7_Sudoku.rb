PATHERN = ['1','2','3','4','5','6','7','8','9']
s_brut = File.readlines(ARGV[0])
s_brut.each{ |line|
    line.delete! '|'
    line.gsub!('_','X')
    line.chomp!
}
s_brut.delete_at(3)
s_brut.delete_at(6)

def verifLigne(sudoku, ligne)
    valide = false
    extLigne = []
    for i in 0..sudoku[ligne].length-1
        extLigne.push(sudoku[ligne][i])
    end
    extLigne.sort!
    if (extLigne == PATHERN)
        valide = true
    end
    return valide
end

def verifCol(sudoku, col)
    valide = false
    extCol = []
    for i in 0..sudoku.length-1
       extCol.push(sudoku[i][col]) 
    end
    extCol.sort!
    if (extCol == PATHERN)
        valide = true 
    end
    return valide 
end

def trouveTrous(sudoku)
    trous = []
    for i in 0..sudoku[0].length-1
        for j in 0..(sudoku.length-1)
            if sudoku[i][j] == 'X'
               trous.push([i,j])
            end
        end
    end
    return trous
end

def testVal(sudoku, emplacement, val)
    sudoku1 = sudoku.clone
    sudoku1[emplacement[0]][emplacement[1]] = val.to_s
    if verifLigne(sudoku1, emplacement[0]) || verifCol(sudoku1, emplacement[1])
        sudoku1[emplacement[0]][emplacement[1]] = 'X'
        return true 
    else
        sudoku1[emplacement[0]][emplacement[1]] = 'X'
        return false
    end
end

def appliquerModif(sudoku, modif)
    for i in 0..modif.length-1
        x = modif[i][1][0]
        y = modif[i][1][1]
        sudoku[x][y] = modif[i][0].to_s
    end
    return sudoku
end

def isResolu(sudoku) 
    trous = trouveTrous(sudoku)
    if trous == []
        return true
    else
        return false
    end
end

def renduSudoku(sudoku) #Mise en forme finale et affichage
    puts sudoku
end

def resolution(sudoku)
    modif = []
    trous = trouveTrous(sudoku);
    for i in 0..trous.length-1
        for valeurTest in 0..9
           if testVal(sudoku, trous[i], valeurTest)
               modif.push([valeurTest,trous[i]])
           end
        end
    end
    sudoku_modifie = appliquerModif(sudoku,modif)
    if isResolu(sudoku_modifie)
        sudoku_final = sudoku_modifie.dup
    else 
        sudoku_final = resolution(sudoku_modifie)
    end
    
    return sudoku_final
end

sudoku = resolution(s_brut);
renduSudoku(sudoku);