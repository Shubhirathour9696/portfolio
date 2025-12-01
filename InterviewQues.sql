Create database InterviewQues;
Use InterviewQues;
Show tables in interviewques;
Create Table Sales (OrderID int,OrderDate   Date,CustomerName	varchar(30),Segment varchar(30),City varchar(30),State	varchar(30),Region	varchar(30),Category	varchar(30),SubCategory	varchar(30),Quantity	int,Sales	float,Discount float,Profit float);  
Select* from Sales;
Create Table Employee(EmployeeID int,Name	varchar(30),Department	varchar(30),Designation varchar(30),Salary	float,JoiningDate	Date,City varchar(30));
Desc Employee;
Select*from Employee;
Create Table Student(StudentID	int,Name	varchar(30),Class	int,DOB	Date,Gender	 varchar(30),City	varchar(30),Marks	int,Address varchar(30));
Select* from Student;
#1.	Display all records from the Employees table.
Select* from Employee;
#2.	Display Employee Name and Salary of employees with salary > 50,000.
Select Name, Salary from employee
where Salary> 50000;
#3.	List students in class 12 with marks > 450.
Select *from Student;
Select Name, Class, Marks from student
where Marks>450;
#4.	Show all orders where Category is 'Technology'.
Select * from Sales
where Category="Technology";
#5.	Count the number of employees in each department.
Select Department, Count(Name) as Total_Employees
from employee
Group By Department;
#6.	Display all sales in the East region.
Select* from Sales
where Region="East";
#7.	Find the second highest salary in the Employees table.
Select * from Employee where Salary Limit 2;
#8.	Show students whose name starts with 'A'.
Select * from Employee where Name Like "A%";
#9.	List orders with discount > 0.2.
Select *From Sales
where Discount>0.2;
#10.Display employees who joined after 2018-01-01.
Select * from employee
where JoiningDate Between "2018-01-01" and now();
#11.Count students in each class.
Select Class,Count(Name)as No_of_Student from student Group by Class;
#12.Find total profit in Technology category.
Select Category,Sum(Profit) as TotalProfit from Sales where Category="Technology" group by Category ;
#13.	List employees with Designation 'Manager'.
Select Name,Designation from employee
where Designation="Manager";
#14.Show orders where Quantity > 5.
Select* from Sales
where Quantity>5;
#15.	Display employees with salary between 40,000 and 80,000.
Select* from employee
where Salary Between 40000 and 80000;
#16.	Find average marks per class.
Select Class,Avg(Marks)as AvyMarks from student Group by Class;
#17.	Show total sales by Segment.
Select* from Sales;
Select Segment,Sum(Sales) as TotalSale from Sales group by Segment ;
#18.	Find the top 5 orders by profit
Select * from Sales
 where Profit Limit 5 ;
 #19.	Display cumulative sales by OrderDate.
 


#20.	List students who scored above the average marks.




 






