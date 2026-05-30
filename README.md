# MAINFLOW_TASK1
Internship project work .
Student Management System (SQL Project)<br>

A simple SQL-based Student Management System designed to manage and analyze student academic records. The project includes database creation, table design, data insertion, and various SQL queries to perform data retrieval, aggregation, filtering, and updates. It demonstrates the use of core SQL concepts such as SELECT, WHERE, GROUP BY, AVG, COUNT, MAX, subqueries, and UPDATE statements to generate meaningful insights from student performance data.
# 1. Database Creation Queries .
Create Database :<br>
<br>
CREATE DATABASE StudentManagement;<br>
<br>
Purpose: Creates a new database named StudentManagement.<br>
<br>
Select Database :<br>
USE StudentManagement;<br><br>
<br>
Purpose: Sets StudentManagement as the active database.<br>
<br>
Create Students Table <br>
CREATE TABLE Students ( <br>
    StudentID INT AUTO_INCREMENT PRIMARY KEY,<br>
   Name VARCHAR(50) NOT NULL,<br>
    Gender VARCHAR(1), <br>
   Age INT,<br>
    Grade VARCHAR(10),<br>
   MathScore INT,<br>
  ScienceScore INT,<br>
    EnglishScore INT<br>
);<br>
Purpose: Creates a table to store student information and subject scores.<br>
<br>
# 2. Data Insertion Query<br>
<br>
INSERT INTO Students<br>
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)<br>
VALUES :<br>
('Rahul Kumar', 'M', 18, 'A', 85, 90, 88),<br>
('Priya Sharma', 'F', 17, 'B', 78, 82, 80),<br>
('Amit Das', 'M', 19, 'A', 92, 89, 95),<br>
('Sneha Patnaik', 'F', 18, 'A', 88, 91, 87),<br>
('Rohan Singh', 'M', 17, 'C', 65, 70, 68),<br>
('Ananya Mishra', 'F', 19, 'B', 81, 85, 83),<br>
('Karan Verma', 'M', 18, 'B', 75, 79, 77),<br>
('Pooja Nayak', 'F', 17, 'A', 94, 96, 93),<br>
('Vikash Rout', 'M', 18, 'C', 60, 67, 64),<br>
('Neha Gupta', 'F', 19, 'A', 89, 92, 90);<br>
<br>
Purpose: Inserts 10 sample student records into the table.<br>
<br>
# 3. Task Queries and Documentation<br>
# Task 1: Display All Students :<br>
SELECT * FROM Students;<br>
Purpose :<br>
Retrieves all records and columns from the Students table.<br>
<br>
Observation :<br>
Provides a complete overview of student information, grades, and scores.<br>
<br>
# Task 2: Calculate Average Scores for Each Subject<br>
SELECT<br>
    AVG(MathScore) AS Average_Math,<br>
    AVG(ScienceScore) AS Average_Science,<br>
    AVG(EnglishScore) AS Average_English<br>
FROM Students;<br>
<br>
Purpose :<br>
Calculates the average score for each subject.<br>
<br>
Observation :<br>
1.Helps identify which subject students perform best in.<br>
2.Useful for academic performance analysis.<br>
<br>
# Task 3: Find the Top Performer <br>
SELECT StudentID, Name,<br>
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students<br>
WHERE (MathScore + ScienceScore + EnglishScore) =
(
    SELECT MAX(MathScore + ScienceScore + EnglishScore)
    FROM Students
);<br>

Purpose :<br>
Finds the student(s) with the highest combined score.<br>
<br>
Observation :<br>
1.Identifies the best-performing student.<br>
2.Useful for awards, scholarships, and recognition.<br>
<br>
# Task 4: Count Students in Each Grade<br>
<br>
SELECT Grade, COUNT(*) AS NumberOfStudents<br>
FROM Students<br>
GROUP BY Grade;<br>
<br>
Purpose :<br>
Counts how many students belong to each grade category.<br>
<br>
Observation :<br>
For the sample data:<br>
<br>
GradeCount<br>
A-----5<br>
B-----3<br>
C-----2<br>
<br>
Most students belong to Grade A.<br>
# Task 5: Compare Performance by Gender<br>
Subject-wise Average<br>
<br>
SELECT Gender,<br>
       AVG(MathScore) AS AvgMath,<br>
       AVG(ScienceScore) AS AvgScience,<br>
       AVG(EnglishScore) AS AvgEnglish<br>
FROM Students<br>
GROUP BY Gender;<br>
<br>
Overall Average<br>
<br>
SELECT Gender,<br>
       AVG((MathScore + ScienceScore + EnglishScore)/3.0) AS OverallAverage<br>
FROM Students<br>
GROUP BY Gender;<br>
Purpose :<br>
Compares academic performance between male and female students.<br>
<br>
Observation :  
<br>
Helps identify performance trends.  
Can reveal strengths and weaknesses among groups.  
  
# Task 6: Students Scoring Above 80 in Mathematics  
<br>
SELECT StudentID, Name, MathScore<br>
FROM Students<br>
WHERE MathScore > 80;  
<br>
Purpose :  
Lists students who excel in Mathematics.  
<br>
Observation :   
These students may be suitable for:  
1. Mathematics competitions<br>
2. Advanced courses<br>
3. Academic recognition<br>

# Task 7: Update Student Grade

UPDATE Students<br>
SET Grade = 'B'<br>
WHERE StudentID = 5;  
<br>
Purpose :  
Updates the grade of a specific student.  
<br>
Verification :  
SELECT * FROM Students<br>
WHERE StudentID = 5;  
<br>
Observation :  
Allows correction of errors or modification of student records.  

# Overall Insights from the Dataset
1. Grade Distribution :  
Grade A has the highest number of students.
Grade C has the fewest students.
2. Top Performer :  
Pooja Nayak has the highest total score (283).
3. Subject Performance :  
Science generally has the highest average score among students.
Mathematics and English averages are slightly lower.
4. Gender-wise Analysis :  
Female students have a slightly higher average score than male students in the sample dataset.
5. High Achievers :  
Several students scored above 80 in Mathematics, indicating strong mathematical ability.
6. Data Maintenance :  
The UPDATE query enables easy correction and maintenance of student records.
