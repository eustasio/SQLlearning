--https: / / fxjollois.github.io / cours - SQL /
-- EXO 3 du chapitre 4 
SELECT
    c.NoCom,
    c.DateEnv,
    c.ALivAvant,
    CASE
        WHEN c.DateEnv <= c.ALivAvant THEN "livré à temps"
        WHEN c.DateEnv > c.ALivAvant THEN "livré en retard"
    END
FROM
    Commande c;