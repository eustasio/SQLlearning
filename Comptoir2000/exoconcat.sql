SELECT
    concat (
        cl.Adresse,
        ' ',
        cl.CodePostal,
        ' ',
        cl.Ville,
        ' ',
        cl.Pays
    ) AS "Adresse complète"
FROM
    Client cl;