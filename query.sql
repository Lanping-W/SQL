USE world;

#2. Gör en valfri query som inkluderar den nya tabellen.
/*Hitta universitet med det största antalet student i de som har 'university' i namet. 
Skriva ut univsertitets namn, antalet studenter, staden, landet och kontinenten*/

SELECT 
    universities.university_Name,
    universities.number_of_students AS Max_number_of_students,
    city.Name AS city,
    country.Name AS country,
    country.Continent AS continent
FROM
    (universities
    JOIN city ON universities.cityID = city.ID)
        JOIN
    country ON city.CountryCode = country.Code
WHERE
    number_of_students = (SELECT 
            MAX(number_of_students)
        FROM
            universities
        WHERE
            universities.university_Name LIKE '%university%');
            