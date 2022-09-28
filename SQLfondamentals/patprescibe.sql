-- question 3 sql advanced primary care doctor
SELECT
    patient.name
FROM
    patient
    INNER JOIN prescribes ON prescribes.physician = patient.pcp
WHERE
    patient.pcp = prescribes.physician;