# implement a method to preform basic string compression using the counts of repeated characters. 
# Example: 
# input: 'aabcccccaaa' returns: 'a2b1c5a3'
# If the compressed string would not become smaller than the original string then the method should return the original string. 
# You can assume that the string given will only contain uppercase and lowercase letters (a-z)

def compressed(string)
  strArray = string.split('')
  compressed = []
  i = 0
  count = 1
  while i < strArray.length
    if strArray[i] != strArray[(i + 1)]
      compressed << strArray[i]
      compressed << count  
      count = 1
    else 
      count += 1   
    end  
    i += 1 
  end
  compressed = compressed.join()  
  if compressed.length < string.length
    p compressed
  else 
    p string
  end     
end

compressed('abcdefggg')
compressed('abcdefgggaabb')
compressed('aabcccccaaa')