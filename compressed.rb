# implement a method to preform basic string compression using the counts of repeated characters. 
# Example: 
# input: 'aabcccccaaa' returns: 'a2b1c5a3'
# If the compressed string would not become smaller than the original string then the method should return the original string. 
# You can assume that the string given will only contain uppercase and lowercase letters (a-z)

def compressed(string)
  strArray = string.split('').sort()
  compressed = []
  i = 0
  while i < strArray.length
    if strArray[i] != strArray[(i + 1)]
      num = strArray.count(strArray[i])
      compressed << strArray[i] 
      compressed << num 
    end  
    i += 1 
  end  
  p compressed.join()
end

compressed('abcdefggg')
compressed('abcdefgggaabb')