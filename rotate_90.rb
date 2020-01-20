# Given an img, represented by an NxN matrix, where each pixel is 4 bytes, write a method to rotate by 90 degrees

m = [
  [1,2,3,4],
  [5,6,7,8],
  [9,10,11,12], 
  [13,14,15,16]]

p m.transpose
# this makes columns become rows
p m.reverse
# this just orders the array or arrays from last to first



matrix_1 = [
  [1,2,3,4,],
  [5,6,7,8],
  [9,10,11,12], 
  [13,14,15,16]]

def clockwise(matrix)
  p matrix.reverse.transpose
end

clockwise(matrix_1)

def counterclockwise(matrix)
  p matrix.transpose.reverse
end

counterclockwise(matrix_1)

# these will work so long as the maxtix is an even number
