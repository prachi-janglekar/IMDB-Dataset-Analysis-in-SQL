CREATE database imdb;
use imdb;

-- Check for duplicate entries
select Movie_Name,year,director,count(*) 
from movies
group by Movie_name,year,director
having count(*) > 1;

-- Top 5 movies with the highest rating
select Movie_Name,Rating,Votes
from movies
order by Rating desc
limit 5;

-- Movies that were released in the year 2023
select Movie_name,Year,Rating,Votes
from movies
where year=2023
order by rating desc;

-- Popular movies that are highly rated and have a significant number of votes
select Movie_name,Rating,Votes
from movies 
where rating > 7 and votes > 100000
order by rating desc;

-- Average meta score for movies released in 2023
select avg(Meta_score) as Average_Meta_Score
from movies
where Year=2023;

-- How many movies Fall under each PG Rating
select pg_rating,count(*) as Movie_count
from movies
group by pg_rating;

-- Movies by a specific director
select Movie_Name,Rating,year
from movies
where director='Christopher Nolan';

-- Movies sorted by their duration
select Movie_Name,duration,rating
from movies
order by duration desc;

-- Which genre has the most movies
select genre,count(*) as movie_count
from movies
group by genre
order by movie_count desc;

-- all movies of lenardo dicarpo
select movie_name,cast,year
from movies
where cast like '%Lenardo DiCaprio%';

-- Total number of votes for movies released in 2023
select sum(votes) as total_votes
from movies
where year=2023;

-- Movies released between 2000 and 2023
select Movie_name,year,rating
from movies
where year between 2000 and 2023
order by year desc;

-- All movies in the 'Biography' Genre
select Movie_name,genre,Rating
from movies
where genre like '%Biography%'
order by rating desc;

--  Movies with the highest number of votes
select Movie_name,Votes,Rating
from movies
order by Votes desc
limit 5;

-- Oldest movie in the dataset
select Movie_Name,year
from movies
order by year asc 
limit 1;

-- How many movies each director has made
select director,count(*) as Movie_count
from movies
group by director
order by Movie_count desc;

-- Movies with a runtime or more than 2 hours
select Movie_name,Duration,Rating
from movies
where Duration > '2h 00m'
order by Duration desc;

-- Total number of R-Rated movies
select count(*) as R_Rated_Movies
from movies
where PG_Rating='R';

-- Movies that have multiple Directors listed
select Movie_Name,Director
from movies
where Director like '%,%'
order by Movie_Name;

-- Movies that are family friendly(pg or pg-13)
select Movie_name,Rating,PG_Rating
from movies
where PG_Rating in('PG','PG-13')
order by Rating desc;

-- Movies released Each year
select year,count(*) as Movie_count
from movies
group by year
order by year asc;

-- Calculate the average movie rating
select avg(rating) as average_rating
from movies; 

-- Longet movies in term of duration
select movie_name,duration
from movies
order by duration desc
limit 1;

-- Shortest movie in terms of duration
select movie_name,duration
from movies
order by duration asc
limit 1;

-- Movies released before the yeaer 2000
select Movie_name,year,rating
from movies
where Year<2000
order by year asc;

-- Movies that belong to multiple genres,such as "Action" and "Adventure"
select Movie_name,Genre,Rating
from movies
where Genre like '%Action%' and genre like '%Adventure%'
order by rating desc;






