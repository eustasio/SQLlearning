-- https: / / fxjollois.github.io / cours - SQL /
-- exo2 chapitre 4
SELECT
    dc.Nocom,
    dc.Remise,
    CASE
        WHEN Remise = 0 THEN "aucune Remise"
        WHEN Remise >= 0.01 <= 0.05 THEN "petite remise"
        WHEN Remise >= 0.06 <= 0.15 THEN "remise modérée"
        ELSE "Remise importante"
    END
FROM
    DetailCommande dc;