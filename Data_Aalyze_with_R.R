# (a) Create a vector named "V1" with the specified elements
V1 <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120)

# (b) Calculate mean, median, and quartiles of the vector V1
mean_V1 <- mean(V1)
median_V1 <- median(V1)
quartiles_V1 <- quantile(V1, probs = c(0.25, 0.5, 0.75))

# (c) Create a matrix named "M1" with 4 rows and 3 columns using data from vector V1
M1 <- matrix(V1, nrow = 4, ncol = 3, byrow = TRUE)

# (d) Change row names and column names of M1
rownames(M1) <- c("R1", "R2", "R3", "R4")
colnames(M1) <- c("C1", "C2", "C3")

# Print the results
print("Vector V1:")
print(V1)

print("Mean of V1:")
print(mean_V1)

print("Median of V1:")
print(median_V1)




# (i) Create a data frame for Table 1 and name it as EmpData
EmpID <- c("#01", "#02", "#03", "#04", "#05", "#06", "#07", "#08", "#09", "#10")
EmpName <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
Gender <- c("M", "F", "F", "M", "M", "F", "M", "M", "M", "F")
Department <- c("IT", "HR", "FINANCE", "FINANCE", "HR", "IT", "IT", "HR", "FINANCE", "IT")
Salary <- c(750, 500, 550, 500, 400, 700, 600, 450, 500, 650)

EmpData <- data.frame(EmpID, EmpName, Gender, Department, Salary)

# (ii) Add 100 dollars bonus to Salary of each employee
EmpData$Salary <- EmpData$Salary + 100

# (iii) Obtain the details of the employees who are attached to the FINANCE department
FinanceEmployees <- subset(EmpData, Department == "FINANCE")

# (iv) Obtain the EmpName of the employers whose salary is above 600 dollars
HighSalaryEmployees <- subset(EmpData, Salary > 600)$EmpName

# (v) Obtain the EmpName of the employers who are attached to the IT Department and whose salary is below 700 dollars
LowSalaryEmployees <- subset(EmpData, Department == "IT" & Salary < 700)$EmpName

# Print the results
print("EmpData:")
print(EmpData)

# Print the EmpData table after adding a $100 bonus
print("EmpData (After Adding $100 Bonus):")
EmpData$Salary <- EmpData$Salary + 100
print(EmpData)

print("Employees in FINANCE department:")
print(FinanceEmployees)

print("Employees with salary above 600 dollars:")
print(HighSalaryEmployees)

print("Employees in IT department with salary below 700 dollars:")
print(LowSalaryEmployees)





# Load the mtcars dataset
data(mtcars)

# (i) Create a plot to visualize miles per gallon (mpg)
# Scatter plot
plot(mtcars$mpg, main="Miles per Gallon", xlab="Car Index", ylab="mpg", pch=19)


# (ii) Create a plot to visualize the displacement (disp) of automatic and manual vehicles
# Separate data for automatic and manual vehicles
automatic_disp <- mtcars$disp[mtcars$am == 0]
manual_disp <- mtcars$disp[mtcars$am == 1]

# Create a boxplot
boxplot(automatic_disp, manual_disp, names=c("Automatic", "Manual"), main="Displacement by Transmission Type", ylab="Displacement")

# (iii) Descriptive statistics for the variable wt
summary(mtcars$wt)

# (iv) Descriptive statistics of the variable wt for each engine type
by(mtcars$wt, mtcars$vs, summary)

# (v) Deciles of the variable hp   
quantile(mtcars$hp, probs=seq(0, 1, by=0.1))
