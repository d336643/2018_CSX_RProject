### practice_2
### course_grade


# Create a vector called course.students.number, with data: c(1, 30)
course.student.number <- 
  
  # Create a variable csn, with data: length of course.student.number
  csn <- 
  
  # Create a vector course.student.grade, with sample() function: x = c(55:100), size = csn
  course.student.grade <- 
  
  # Assign course.student.number as names of the course.student.grade
  names(course.student.grade) <-
  
  # Create csg.mean, with the mean value of course.student.grade
  csg.mean <- 
  
  # Create csg.max with the max value of course.student.grade
  csg.max <- 
  
  # Create csg.min with the min value of course.student.grade
  csg.min <- 
  
  # Create a vector csg.over.80, with the logical result of course.student.grade over 80
  csg.over.80 <- 
  
  # Check csg.over.mean
  csg.over.80

# Filter the course.student.grade with csg.over.mean
course.student.grade[csg.over.80]

# Print course information
print(paste("????????????:", csn))
print(paste("???????????????", csg.mean))
print(paste("???????????????", csg.max))
print(paste("???????????????", csg.min))

# Print over 80 details
# print(paste("??????80???????????????", ____________________))
# print(paste("??????80????????????", ______________________))