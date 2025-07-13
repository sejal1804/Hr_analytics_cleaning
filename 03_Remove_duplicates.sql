# Data Cleaning

# 1. Remove duplicates
# 2. Standardize the data
# 3. Null Values or blank values
# 4. Remove any column

# 1. Remove duplicates

with duplicate_cte as 
(
SELECT * ,
ROW_NUMBER() OVER(
PARTITION BY Employee_ID , Department , Gender , Age , Education_Level ,Job_Role , Monthly_Income , Years_At_Company , Years_In_Current_Role , 
Job_Satisfaction , Performance_Rating , Work_Life_Balance , Training_Hours_Last_Year,
Last_Promotion_Years_Ago , Distance_From_Home , Overtime , Attrition , Marital_Status , Number_Of_Companies_Worked , Stock_Option_Level) AS row_num
FROM hr_analytics
) 
SELECT * 
FROM duplicate_cte 
where row_num> 1;

CREATE TABLE `hr_analytics2` (
  `Employee_ID` int DEFAULT NULL,
  `Department` text,
  `Gender` text,
  `Age` int DEFAULT NULL,
  `Education_Level` text,
  `Job_Role` text,
  `Monthly_Income` int DEFAULT NULL,
  `Years_At_Company` int DEFAULT NULL,
  `Years_In_Current_Role` int DEFAULT NULL,
  `Job_Satisfaction` int DEFAULT NULL,
  `Performance_Rating` int DEFAULT NULL,
  `Work_Life_Balance` int DEFAULT NULL,
  `Training_Hours_Last_Year` int DEFAULT NULL,
  `Last_Promotion_Years_Ago` int DEFAULT NULL,
  `Distance_From_Home` int DEFAULT NULL,
  `Overtime` text,
  `Attrition` text,
  `Marital_Status` text,
  `Number_Of_Companies_Worked` int DEFAULT NULL,
  `Stock_Option_Level` int DEFAULT NULL,
   `row_num` int 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * 
FROM hr_analytics2;

INSERT INTO hr_analytics2
SELECT * ,
ROW_NUMBER() OVER(
PARTITION BY Employee_ID , Department , Gender , Age , Education_Level ,Job_Role , Monthly_Income , Years_At_Company , Years_In_Current_Role , 
Job_Satisfaction , Performance_Rating , Work_Life_Balance , Training_Hours_Last_Year,
Last_Promotion_Years_Ago , Distance_From_Home , Overtime , Attrition , Marital_Status , Number_Of_Companies_Worked , Stock_Option_Level) AS row_num
FROM hr_analytics;

SELECT * 
FROM hr_analytics2
WHERE row_num > 1;

DELETE 
FROM hr_analytics2
WHERE row_num > 1;

SELECT * 
FROM hr_analytics2
WHERE row_num > 1;
