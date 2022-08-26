SELECT
    RefProd,
    COUNT(Nocom)
FROM
    Produit
    LEFT OUTER JOIN DetailCommande USING (Refprod)
GROUP BY
    Refprod;