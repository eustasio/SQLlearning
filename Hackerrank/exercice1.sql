SELECT
    id,
    name,
    countrycode,
    district,
    population
FROM
    city
WHERE
    population > 100000
    AND countrycode = "USA";