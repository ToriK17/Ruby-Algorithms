# Write a function that returns the string 'pangram' if every letter of the alphabet is contined in the sentence and returns 'not pangram' if every letter in alphabet is not present. 

def pangrams(s)
 letters = s.delete(' ').downcase.chars.uniq.sort
 
   
  if letters.length == 26
    p 'pangram'
  else
    p 'not pangram'  
  end   
    
end

pangrams("this is a sentence")
pangrams("We promptly judged antique ivory buckles for the next prize")
