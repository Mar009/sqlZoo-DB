-- Selecting the population from a certain country 
SELECT population FROM world
  WHERE name = 'Germany'

--   Selecting the population IN multiple countries 
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

--   Selecting countries that have an area between two numbers 
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000