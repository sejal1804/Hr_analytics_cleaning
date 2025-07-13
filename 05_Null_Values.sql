
#3. Null Values or blank values

SELECT * 
FROM hr_analytics2
where Employee_ID IS NULL OR Department IS NULL OR Gender IS NULL 
OR Age IS NULL OR Education_Level IS NULL OR Job_Role IS NULL 
OR Monthly_Income IS NULL;

# Since there are no null values or missing values