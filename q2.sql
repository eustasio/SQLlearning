SELECT
    DISTINCT a."DRUG",
    a."comp"
FROM
    (
        SELECT
            DISTINCT P."DRUG",
            count ("DRUG") AS comp
        FROM
            mimiciii."PRESCRIPTIONS" P
        GROUP BY
            "DRUG"
        ORDER BY
            "DRUG" DESC
    ) a;