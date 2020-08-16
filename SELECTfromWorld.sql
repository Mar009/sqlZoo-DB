-- This line code pulls up the name, continent, & population from world db  
SELECT name, continent, population
FROM world

-- this line of code pulls up the names of countries from the world DB that have a pop. of AT LEAST 200 million
SELECT name
FROM world
WHERE population > 200000000

-- This line of code pulls up the name of countries & a GDP per capita(population) with a pop. of AT LEAST 200 million 
SELECT name, gdp/population
FROM world
WHERE population > 200000000

-- This line of code pulls of the population (in millions) for countries in South America 
SELECT name, population/1000000
FROM world
WHERE continent= 'South America'

-- This line of code pulls up the populations of France, Italy, & Germany 
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

-- this line of code pulls up the countries that have the word United in their names 
SELECT name
FROM world
WHERE name LIKE '%United%'

-- this line of code pulls up the names of countries with a population that is greater than 250 million OR with areas GREATER THAN 3 million 
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

-- this line of code pulls up names of countries where they are big by population OR big by population but not both.
SELECT name, population, area
FROM world
WHERE (area > 3000000)
^
(population > 250000000)

-- This line of code pulls up the counties in South America & displays the population in millions rounded to 2 decimal places & also displays the GDP in billions rounded to 2 decimal places
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent= 'South America'

-- this line of code pulls up the countries that of a per capita GDP of at least 1 trillion & it's rounded to the nearest 1000 
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1000000000000

-- This line of code pulls up the names of countries whose length matches with the length of it's capital 
SELECT name, capital
FROM world
WHERE  LENGTH(name)= LENGTH(capital)

-- This line of code pulls up countries whose capitals matches the first letter & they are not equal(the same) 1
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital

-- This line of code finds the country that has all the vowels and no spaces in its name 
SELECT name
   FROM world
WHERE name  LIKE '%a%' AND name  LIKE '%e%' AND name  LIKE '%i%' AND name  LIKE '%o%' AND name  LIKE '%u%' AND name NOT LIKE '% %'