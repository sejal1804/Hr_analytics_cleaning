
create table hr_analytics
LIKE hr ;

SELECT * FROM hr_analytics;

INSERT hr_analytics
SELECT * FROM hr;

SELECT * FROM hr_analytics;