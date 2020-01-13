# write a method 'daffify' that will take in a string and replace all the "s" characters with "th"

def daffify(string)
  p string.gsub(/[sS]/, 'th')
end

daffify("Silly sloths")
