/*
1. How many rows in the table
*/

SELECT *
FROM data_analyst_jobs

/*
2.	Write a query to look at just the first 10 rows. 
What company is associated with the job posting on the 10th row?
*/
SELECT *
FROM data_analyst_jobs
LIMIT 10

/*3.	How many postings are in Tennessee? 
How many are there in either Tennessee or Kentucky?*/
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN'

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY')

/*4.	How many postings in Tennessee have a star rating above 4?
*/
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE star_rating > 4
AND location = ‘TN’

/*5.	How many postings in the dataset have a review count between 500 and 1000?
*/
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000




