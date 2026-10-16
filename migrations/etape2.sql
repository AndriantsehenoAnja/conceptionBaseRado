CREATE TABLE categorie(
    id_cat SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

CREATE TABLE categorie_plat(
    id_cat_plat SERIAL PRIMARY KEY,
    id_cat INTEGER,
    id_plat INTEGER ,
    Foreign Key (id_cat) REFERENCES categorie(id_cat),
    Foreign Key (id_plat) REFERENCES plat(id_plat)
);

INSERT INTO categorie (nom) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûte'),
('Boisson');

INSERT INTO categorie_plat(id_cat,id_plat) VALUES
(1,1),
(1,2),
(1,3),
(2,4),
(3,5),
(4,6),
(5,7);

--  Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des plats ? Donnez un exemple de problème concret.
=> car on ne peut pas compter le nombre de plats par catégorie si il y a une faute de frappe dans le nom de la catégorie
; Exemple : si un plat est catégorisé comme "Dessert" et un autre comme "Desserts", on ne peut pas les compter ensemble.