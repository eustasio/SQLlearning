--https: / / www.hackerrank.com / challenges / the - company / problem ? isFullScreen = TRUE
SELECT
    Employee.company_code cc,
    (
        SELECT
            founder
        FROM
            Company
        WHERE
            company_code = cc
    ),
    senior_manager_code,
    lead_manager_code,
    manager_code
FROM
    Employee E
    JOIN (
        SELECT
            Employee.company_code,
            count(DISTINCT Employee.lead_manager_code),
            count(DISTINCT Employee.senior_manager_code),
            count(DISTINCT Employee.manager_code),
            count(DISTINCT Employee.employee_code)
        FROM
            E
    ) Employee ON Company.company_code = cc
GROUP BY
    cc
ORDER BY
    cc ASC;