def add_commas(num)
  string = num.to_s.split('')
  if string.length < 4
    p string.join 
  elsif string.length > 4
    n = -4
    i = string.length
    while i > 4 
      string.insert(n,',')
      n -= 4
      i -= 3
    end 
    p string.join     
  else string.length == 4
    string.insert(-4, ',')
    p string.join   
  end  
end

add_commas(100)
add_commas(1000)
add_commas(1000000)
add_commas(1000000000)