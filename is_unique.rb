# Implement an algorithm to determine if a string has all unique characters. 

def is_unique(string)
  original_string = string.split(%r{\s*})
  unique_string = []
  unique_string << original_string[0]
  loop_length = original_string.length - 1
  i = 1 

  loop_length.times do 
    if unique_string.include?(original_string[i])
    else
      unique_string << original_string[i]  
    end    
    i += 1   
  end   
  
  if unique_string.length == original_string.length
    puts "This string is unique"
  else 
    puts "This string is not unique"
  end     
end

is_unique('this is an example')
is_unique('hola')