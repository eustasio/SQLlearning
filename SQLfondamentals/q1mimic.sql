SELECT
    DISTINCT mimiciii."ICUSTAYS"."DBSOURCE",
    mimiciii."ICUSTAYS"."SUBJECT_ID"
FROM
    mimiciii."ICUSTAYS"
WHERE
    mimiciii."ICUSTAYS"."DBSOURCE" LIKE 'b%';