# The method should accept any number of integers from 0 to 100 as arguments. Each number represents a percentage grade that the student received for a particular test.


# The method should return a single letter for that student - "A", "B", "C", "D", or "F". The rubric for the conversion is: A is 90% and up, B is 80% up to 90%, C is 70% up to 80%, D is 60% up to 70%, and F is lower than 60%. For clarification, 79.9999% is still a C grade and 80% is a B grade.

# calculate_letter_grade(90, 100, 95) #=> "A"

def letter_grade(*grades)
  all_grades = []
  grades_sum = 0

  grades.each do |grade|
    all_grades << grade
    grades_sum += grade
  end 

  n = all_grades.length
  overall_grade = grades_sum / n

  if overall_grade >= 90
    p 'A'
  elsif overall_grade < 90 && overall_grade >= 80  
    p 'B'
  elsif overall_grade < 80 && overall_grade >= 70  
    p 'C'   
  elsif overall_grade < 70 && overall_grade >= 60 
    p 'D'
  else overall_grade < 60
    p 'F'
  end          
end

letter_grade(21, 88, 90, 99)

letter_grade(21, 88, 90, 55, 66, 99)

