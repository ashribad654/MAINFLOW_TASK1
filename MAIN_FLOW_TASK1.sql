create database StudentManagement;
use StudentManagement;
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

INSERT INTO Students
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Rahul Kumar', 'M', 18, 'A', 85, 90, 88),
('Priya Sharma', 'F', 17, 'B', 78, 82, 80),
('Amit Das', 'M', 19, 'A', 92, 89, 95),
('Sneha Patnaik', 'F', 18, 'A', 88, 91, 87),
('Rohan Singh', 'M', 17, 'C', 65, 70, 68),
('Ananya Mishra', 'F', 19, 'B', 81, 85, 83),
('Karan Verma', 'M', 18, 'B', 75, 79, 77),
('Pooja Nayak', 'F', 17, 'A', 94, 96, 93),
('Vikash Rout', 'M', 18, 'C', 60, 67, 64),
('Neha Gupta', 'F', 19, 'A', 89, 92, 90);

SELECT * FROM Students;

SELECT
    AVG(MathScore) AS Average_Math,
    AVG(ScienceScore) AS Average_Science,
    AVG(EnglishScore) AS Average_English
FROM Students;

SELECT StudentID, Name,
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
WHERE (MathScore + ScienceScore + EnglishScore) =
(
    SELECT MAX(MathScore + ScienceScore + EnglishScore)
    FROM Students
);

SELECT Grade, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY Grade;

SELECT Gender,
       AVG(MathScore) AS AvgMath,
       AVG(ScienceScore) AS AvgScience,
       AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;

SELECT Gender,
       AVG((MathScore + ScienceScore + EnglishScore)/3.0) AS OverallAverage
FROM Students
GROUP BY Gender;

SELECT StudentID, Name, MathScore
FROM Students
WHERE MathScore > 80;

UPDATE Students
SET Grade = 'B'
WHERE StudentID = 5;

SELECT * FROM Students
WHERE StudentID = 5;