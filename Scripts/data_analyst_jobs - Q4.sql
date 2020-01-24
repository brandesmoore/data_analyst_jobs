/*
4.	How many postings in Tennessee have a star rating above 4?
*/
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE star_rating > 4
AND location = 'TN'