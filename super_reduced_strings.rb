def superReducedString(s)
    # convert string s into array of letters
    letters = s.split("")
    i = 0 
    while i < letters.length - 1
        # get two adjacent letters at a time
        letter1 = letters[i]
        letter2 = letters[i + 1]  
        if letter1 == letter2 
            letters.delete_at(i)
            letters.delete_at(i)
            i = 0
        else
            i += 1 
        end     
    end
    if letters.length == 0
        return "Empty String"
    else
        return letters.join
    end
end

