
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
<<<<<<< HEAD

/*5.	How many postings in the dataset have a review count between 500 and 1000?
*/
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000

/*6.	Show the average star rating for each state. 
The output should show the state as state and the average rating 
for the state as avg_rating. Which state shows the highest average rating?*/
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
	AND location NOT LIKE 'USA'
	AND location NOT LIKE 'REMOTE'
GROUP BY location
ORDER BY avg_rating DESC
=======
>>>>>>> b8bd675... Question 3 is complete.

/*7.	Select unique job titles from the data_analyst_jobs table. How many are there?
*/
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs

/*8.	How many unique job titles are there for California companies?
*/
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA'

/*9.	Find the name of each company and its average star rating 
for all companies that have more than 5000 reviews across all locations. 
How many companies are there with more than 5000 reviews across all locations?
*/
SELECT company, AVG(star_rating), review_count
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY company, star_rating, review_count
HAVING (review_count) > 5000

/*
10.	Add the code to order the query in #9 from highest to lowest average star rating. 
Which company with more than 5000 reviews across all locations in the dataset has 
the highest star rating? What is that rating?
*/
SELECT company, AVG(star_rating), review_count
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY company, star_rating, review_count
HAVING (review_count) > 5000
ORDER BY AVG(star_rating) DESC

/*
11.	Find all the job titles that contain the word ‘Analyst’. 
How many different job titles are there?
*/
SELECT title
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%'
		OR title LIKE '%analyst%'
		OR title LIKE '%ANALYST%'
		OR title LIKE '%Analytics%'
		OR title LIKE '%ANALYTICS%'
		OR title LIKE '%analytics%'
	
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title LIKE ‘%Analyst%’
OR title LIKE '%analyst%'
		OR title LIKE '%ANALYST%'
		OR title LIKE '%Analytics%'
		OR title LIKE '%ANALYTICS%'
		OR title LIKE '%analytics%'
/*
12.	How many different job titles do not contain either the word ‘Analyst’ 
or the word ‘Analytics’? What word do these positions have in common?
*/
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analytics%'
	AND title NOT ILIKE '%Analyst%'


