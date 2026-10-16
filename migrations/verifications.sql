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
--Etape3
SELECT
    c.id_com,
    c.date,
    c.remaque,
    SUM(cd.quantite * p.prix) AS total_commande
FROM commande c
JOIN commandeDetail cd ON c.id_com = cd.id_com
JOIN plat p ON cd.id_plat = p.id_plat
GROUP BY c.id_com, c.date, c.remaque
ORDER BY c.date;