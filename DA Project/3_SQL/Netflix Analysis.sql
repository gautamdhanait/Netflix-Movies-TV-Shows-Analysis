-- Create Database 
CREATE DATABASE netflix_db;

-- Use Database
use netflix_db;

SELECT type, COUNT(*) AS total FROM netflix_db.netflix_titles GROUP BY type;

SELECT * FROM netflix_titles;

-- SQL Tasks

-- 1. Count total Movies and TV Shows
-- Number of titles for each type
select type, count(*) as total
from netflix_titles
group by type;

-- 2. Find content by country.
SELECT country, COUNT(*) AS total_content
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_content DESC;

SELECT title, type, country FROM netflix_titles;

-- 3. Find yearly content releases.
SELECT release_year, COUNT(*) AS total_releases
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC;

-- 4. Find the most common genres.
SELECT listed_in AS genre, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC;

-- 5. Count ratings by category.
SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;

-- 6. Find longest movies.
SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
  AND duration IS NOT NULL
ORDER BY CAST(
    REPLACE(duration, ' min', '') AS UNSIGNED
) DESC
LIMIT 1;

-- 7. Count content by director.
SELECT
    director,
    COUNT(*) AS total_content
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_content DESC
LIMIT 10;

-- 8. Rank countries by content production
SELECT country,
       COUNT(*) AS total_content,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS country_rank
FROM netflix_titles
WHERE country IS NOT NULL AND country <> 'Unknown'
GROUP BY country
ORDER BY country_rank
LIMIT 15;

-- 9. Find oldest content.
SELECT title, type, release_year
FROM netflix_titles
order by release_year asc;

-- 10. Calculate average movie duration.
SELECT ROUND(AVG(CAST(REPLACE(duration, ' min', '') AS UNSIGNED)), 1) AS avg_movie_minutes
FROM netflix_titles
WHERE type = 'Movie';
