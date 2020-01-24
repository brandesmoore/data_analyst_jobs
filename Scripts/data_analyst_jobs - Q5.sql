/*
4.	How many postings in Tennessee have a star rating above 4?
*/
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE star_rating > 4
AND location = 'TN'

/*5.	
How many postings in the dataset have a review count between 500 and 1000?
*/
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000