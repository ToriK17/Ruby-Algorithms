#Write a Ruby program to output the lowest 10 positive integers where the sum of the digits of each integer equals 10 and that contain the number 7 as one of the digits. For instance: The integer 1171 - its digits add up to 10 and it contains a 7



arr = [1171, 243, 73, 7551, 9043, 442, 721, 712, 7111, 490, 127, 217, 37, 1117, 1711, 45, 1116, 271, 88, 45, 2664]

def lowest_sum(array)
  i = 0 
  lowest_10 = []

  while i < array.length
    num = array[i].to_s.chars.map(&:to_i)
    j = 0
    sum = 0 
    while j < num.length
      sum += num[j]
      j += 1 
    end   
    if sum == 10 && lowest_10.length < 10 && num.include?(7)
      lowest_10 << num.join 
    end  
    i += 1 
  end   
  puts lowest_10
  
end

lowest_sum(arr)