#. Remove Columns 

ALTER TABLE hr_analytics2
Drop column row_num;

SELECT * FROM hr_analytics;

ALTER TABLE hr_analytics2
Drop column Employee_ID;

SELECT * FROM hr_analytics2;

