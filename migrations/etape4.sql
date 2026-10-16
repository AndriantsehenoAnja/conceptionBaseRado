CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    adress VARCHAR(200)
);

CREATE TABLE commande_Client (
    id_com_cli SERIAL PRIMARY KEY,
    id_client INTEGER NULL,
    id_com INTEGER NOT NULL,

    CONSTRAINT fk_client
        FOREIGN KEY (id_client)
        REFERENCES client(id_client),

    CONSTRAINT fk_commande
        FOREIGN KEY (id_com)
        REFERENCES commande(id_com)
);

INSERT INTO client (nom, adress) VALUES
('Rakoto', 'Antananarivo'),
('Rabe', 'Toamasina'),
('Rasoa', 'Antsirabe');

INSERT INTO commande_Client (id_client, id_com) VALUES
(1, 1),
(2, 2),
(3, 3),
(NULL, 4);

-- Votre clé étrangère est-elle NOT NULL ? 
=> non 
-- Quelle jointure faut-il pour ne perdre aucune commande ?
=>left join car certaines commandes n'ont pas de client associe (id_client est NULL).
