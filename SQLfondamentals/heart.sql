-- moyenne des rythmes cardiaques adult vs bebe
SELECT
    *
FROM
    (
        SELECT
            avg(chartevents."VALUENUM"),
            CASE
                WHEN age."age" >= 15 THEN 'adult'
                WHEN age."age" <= 1 THEN 'newborn'
            END AS agetype
        FROM
            public.age
            JOIN justine.chartevents ON justine.chartevents."SUBJECT_ID" = public.age."SUBJECT_ID"
        WHERE
            "ITEMID" = 211
        GROUP BY
            agetype
    ) AS moyage