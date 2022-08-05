-- https: / / fxjollois.github.io / cours - SQL / 
-- exo 4de la partie 2
SELECT
    p.Nomprod,
    CASE
        WHEN Indisponible = 1 THEN "Produit non disponible"
        ELSE "Produit disponible"
    END
FROM
    Produit p;