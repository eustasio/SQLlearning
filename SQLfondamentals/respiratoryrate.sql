-- moyenne des rythmes respiratoires chez les adultes et les nouveaux nés
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
            "ITEMID" IN (618, 3603, 220210, 8113)
        GROUP BY
            agetype
    ) AS moyage