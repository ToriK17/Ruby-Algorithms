# ar = [1,7,2,5,7,2,4,0,3,2,2]
ar = [10,20,30]
ar = ar.sort!
new_arr = []


ar.map do |num|
  index = (ar.index(num)) + 1 
  if num == ar[index]
    new_arr.push(num)
  end
end
new_arr = new_arr.group_by(&:itself)
result = new_arr.transform_values{ |v| v.size / 2 }.values.reduce(:+)
if result == nil
  return 0
else 
  return result
end

pp new_arr
# returns the values of pairs that can be found in the given array

# Submitted Solution below:

def sockMerchant(n, ar)
  if (n <= 1 || n > 100) 
    return 0
  else
    ar = ar.sort!
    new_arr = []
    ar.map do |num|
    index = (ar.index(num)) + 1 
      if num == ar[index]
        new_arr.push(num)
      end
    end
    new_arr = new_arr.group_by(&:itself)
    result = new_arr.transform_values{ |v| v.size / 2 }.values.reduce(:+)
    if result == nil
      return 0
    else 
      return result
    end
  end   
end
