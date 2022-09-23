USE world;

#*2. Hur många invånare är det i Stockholm?
SELECT 
    Name, Population
FROM
    city
WHERE
    name = 'Stockholm';

#3. Hur många länder finns det som har ’stan’ i namnet?
SELECT 
    COUNT(Name)
FROM
    country
WHERE
    Name LIKE '%stan%';

#4. Vilka olika styrelsesformer (government form) finns det och hur många gångerförkommer varje? Visa i en tabell.
SELECT 
    GovernmentForm, COUNT(GovernmentForm)
FROM
    country
GROUP BY GovernmentForm
ORDER BY GovernmentForm;

#5. Vilka 10 städer har högst population och i vilket land är de olika städerna?
SELECT 
    country.Name, city.Name, city.population
FROM
    country
        INNER JOIN
    city ON country.Code = city.CountryCode
ORDER BY city.population DESC
LIMIT 10;