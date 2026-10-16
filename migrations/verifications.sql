-- Etape1 
SELECT * FROM plat ORDER BY prix DESC;
-- Etape2
SELECT
    COUNT(ct.id_plat) AS nombre_plats,
    ct.id_cat,
    c.nom
FROM categorie_plat ct
JOIN categorie c ON ct.id_cat = c.id_cat
GROUP BY ct.id_cat, c.nom;