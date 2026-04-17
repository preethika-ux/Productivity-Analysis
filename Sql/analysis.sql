-- Project: Lifestyle Habits & Productivity Analytics
-- Description: SQL analysis to find factors affecting productivity

-- create database
CREATE DATABASE productivity_db;
USE productivity_db;

 -- create table structure
CREATE TABLE productivity_data (
    Age INT,
    Sleep_Hours FLOAT,
    Screen_Time FLOAT,
    Work_Hours FLOAT,
    Exercise_Hours FLOAT,
    Productivity_Score INT,
    Efficiency FLOAT,
    Sleep_Category VARCHAR(50)
);

-- View dataset
SELECT * FROM productivity_data;

-- Average productivity
SELECT AVG(Productivity_Score) AS Avg_Productivity
FROM productivity_data;

-- Analyze impact of sleep on productivity
SELECT Sleep_Category, AVG(Productivity_Score) AS Avg_Productivity
FROM productivity_data
GROUP BY Sleep_Category;

-- Analyze impact of screen time on productivity
SELECT Screen_Time, AVG(Productivity_Score) AS Avg_Productivity
FROM productivity_data
GROUP BY Screen_Time
ORDER BY Screen_Time;

-- Analyze relationship between work hours and productivity
SELECT Work_Hours, AVG(Productivity_Score) AS Avg_Productivity
FROM productivity_data
GROUP BY Work_Hours;

-- Identify top 5 most efficient individuals
SELECT *
FROM productivity_data
ORDER BY Efficiency DESC
LIMIT 5;