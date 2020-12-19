# Complete the oddNumbers function. It has two peramaters that will be given an integer
# denoting the left range and the right part of the range. 
# Write a function that returns an array of integers between the two that only the odd values. 

def oddNumbers(l, r)
first_num = l.even? ? (l + 1) : l
(first_num..r).step(2).to_a
end