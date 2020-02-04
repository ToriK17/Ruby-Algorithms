# Write a function that takes in two strings and returns the longest common substring.


def longest_common_substring(a,b)
  lengths = Array.new(a.length){Array.new(b.length, 0)}
  greatestLength = 0
  output = ""
  a.each_char.with_index do |x,i|
    b.each_char.with_index do |y,j|
      next if x != y
      lengths[i][j] = (i.zero? || j.zero?) ? 1 : lengths[i-1][j-1] + 1
      if lengths[i][j] > greatestLength
        greatestLength = lengths[i][j]
        output = a[i - greatestLength + 1, greatestLength]
      end
    end
  end
  output
end
 
p longest_common_substring("thisisatest", "testing123testing")

#first make a matrix/ array or arrays
  #each array is the length of the second string and there is as many as there is letters in the first, set them equal to 0

def largest_substring(str_1, str_2)
  lengths = Array.new(str_1.length){Array.new(str_2.length, 0)}
  longest = 0
  substring = 
  

  
end

common_substring("Hellooi", "Jelllo")