-- find count of actors and find count of unique actors having same name --
-- actor count is 200 and unique actor count is 199. ----
--- this question is to help you find that one actor that is repeating ---


-- count of all actors --
SELECT count(*)
FROM actor

-- count of unique actors --
SELECT
    count(DISTINCT(first_name, last_name))
FROM actor


-- find count of actors and find count of unique actors having same name --

SELECT
      first_name,
      last_name,
      count(*) AS num_of_duplicate
FROM actor
GROUP BY 1, 2
HAVING count(*) > 1
