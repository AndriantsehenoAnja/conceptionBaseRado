CREATE TABLE commande (
    id_com SERIAL PRIMARY KEY,
    date DATE,
    remaque VARCHAR(255)
);

CREATE TABLE commandeDetail (
    id_com_det SERIAL PRIMARY KEY,
    id_com INTEGER NOT NULL,
    id_plat INTEGER NOT NULL,
    quantite INTEGER NOT NULL,

    CONSTRAINT fk_commande
        FOREIGN KEY (id_com)
        REFERENCES commande(id_com),

    CONSTRAINT fk_plat
        FOREIGN KEY (id_plat)
        REFERENCES plat(id_plat),

    CONSTRAINT chk_quantite
        CHECK (quantite > 0)
);


INSERT INTO commande (date, remaque) VALUES
('2026-10-01', 'Commande du 1er octobre'),
('2026-10-02', 'Commande du 2 octobre'),
('2026-10-03', 'Commande du 3 octobre'),
('2026-10-04', 'Commande du 4 octobre');

INSERT INTO commandeDetail (id_com, id_plat, quantite) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(3, 4, 2),
(4, 5, 1);

-- Où placez-vous la quantité ?
=> dans le commandeDetail car un plat peut être commandé plusieurs fois dans une commande, et chaque commande peut contenir plusieurs plats.