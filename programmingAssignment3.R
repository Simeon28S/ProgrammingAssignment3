# Programming Assignment 3
# Simeon Sipes
# 05/29/2026
# Creates and modifies an employee data frame

# creating the data frame
employees <- data.frame(
  EmployeeID = c(1001, 1002, 1003, 1004, 1005),
  LastName = c("Smith", "Norris", "Johnson", "Hart", "Owens"),
  Salary = c(45000, 51000, 36000, 39000, 42000),
  stringsAsFactors = FALSE
)

# display the summary of the data frame
summary(employees)

# create exempt vector
exempt_values <- c("N", "Y")

# create exempt column
Exempt <- exempt_values[(employees$Salary > 50000) + 1]

# add exempt column to data frame
employees <- cbind(employees, Exempt)

# display updated data frame
employees

# display first two rows
employees[1:2, ]

# display structure of data frame
str(employees)

# add new employee row
employees <- rbind(employees,
                   c(1006, "Rogers", 55000, "Y"))

# display final data frame
employees