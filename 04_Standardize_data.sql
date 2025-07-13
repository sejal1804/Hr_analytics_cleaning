
 # 2.Standardize the Data
   
ALTER TABLE hr_analytics2
MODIFY COLUMN job_satisfaction VARCHAR(30);

UPDATE hr_analytics2
SET job_satisfaction = CASE job_satisfaction
    WHEN '1' THEN 'Very Dissatisfied'
    WHEN '2' THEN 'Dissatisfied'
    WHEN '3' THEN 'Neutral'
    WHEN '4' THEN 'Satisfied'
    WHEN '5' THEN 'Very Satisfied'
    ELSE job_satisfaction
END;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM hr_analytics2;

ALTER TABLE hr_analytics2
MODIFY COLUMN Performance_Rating VARCHAR(30);

UPDATE hr_analytics2
SET performance_rating  = CASE performance_rating
    WHEN 1 THEN 'Poor'
    WHEN 2 THEN 'Below Average'
    WHEN 3 THEN 'Average'
    WHEN 4 THEN 'Good'
    WHEN 5 THEN 'Excellent'
    ELSE 'Unknown'
END;

SELECT * FROM hr_analytics2;

ALTER TABLE hr_analytics2
MODIFY COLUMN work_life_balance  VARCHAR(30);

UPDATE hr_analytics2
SET work_life_balance = CASE work_life_balance
    WHEN 1 THEN 'Very Bad'
    WHEN 2 THEN 'Bad'
    WHEN 3 THEN 'Average'
    WHEN 4 THEN 'Good'
    WHEN 5 THEN 'Excellent'
    ELSE 'Unknown'
END;

SELECT * From hr_analytics2;

ALTER TABLE hr_analytics2
MODIFY COLUMN stock_option_level VARCHAR(30);

UPDATE hr_analytics2
SET stock_option_level = CASE stock_option_level
    WHEN 0 THEN 'No'
    WHEN 1 THEN 'Low'
    WHEN 2 THEN 'Medium'
    WHEN 3 THEN 'High'
    ELSE 'Unknown'
END;

SELECT * FROM hr_analytics2;

 