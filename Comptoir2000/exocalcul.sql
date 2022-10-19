-- https: / / fxjollois.github.io / cours - SQL /
SELECT
    DC.PrixUnit,
    DC.Remise,
    DC.Qte,
    (DC.PrixUnit * DC.Qte) - (DC.PrixUnit * DC.Qte) - (DC.PrixUnit * DC.Remise) * DC.Qte AS "montant de la remise",
    (DC.PrixUnit * DC.Qte) - (DC.PrixUnit * DC.Remise) * DC.Qte AS "montant à payer"
FROM
    DetailCommande AS DC
WHERE
    Nocom = 10251;