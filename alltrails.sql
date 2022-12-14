Data Analysis of Trails

-- Top 5 Overall Trails
SELECT name, popularity, avg_rating, difficulty_rating, state_name, num_reviews
FROM analytics_project.alltrails
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 5;


-- Top 10 Trails by trail features

#fishing#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating,
FROM analytics_project.alltrails
WHERE activities LIKE "%fishing%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

#forest#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating
FROM analytics_project.alltrails
WHERE features LIKE "%forest%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

#camping#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating
FROM analytics_project.alltrails
WHERE features LIKE "%camping%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

#kids#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating
FROM analytics_project.alltrails
WHERE features LIKE "%kids%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

#lake#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating
FROM analytics_project.alltrails
WHERE features LIKE "%lake%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

#river#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating
FROM analytics_project.alltrails
WHERE features LIKE "%river%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

#dogs#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating
FROM analytics_project.alltrails
WHERE features LIKE "%dogs-leash%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

#waterfall#
SELECT state_name, name, popularity, avg_rating, num_reviews, difficulty_rating
FROM analytics_project.alltrails
WHERE features LIKE "%waterfall%"
ORDER BY avg_rating DESC, num_reviews DESC
LIMIT 10;

-- State concentrations of easy/moderate and difficult hikes

#Concentration of easy/moderate hikes per state#
SELECT COUNT(difficulty_rating) AS easy_mod_difficulty, state_name,
  AVG(length) AS average_length, AVG(elevation_gain) AS avg_elevation_gain 
FROM `analyst-portfolio.analytics_project.alltrails`
WHERE difficulty_rating <= 4
GROUP BY state_name
ORDER BY easy_mod_difficulty DESC;

#Concentration of difficult hikes per state#
SELECT COUNT(difficulty_rating) AS num_of_difficult, state_name, 
  AVG(length) AS average_length, AVG(elevation_gain) AS avg_elevation_gain 
FROM `analyst-portfolio.analytics_project.alltrails`
WHERE difficulty_rating >= 5
GROUP BY state_name
ORDER BY num_of_difficult DESC;
