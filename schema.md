# le schéma relationnel

## etape 1 : La carte
plat(**id_plat**, nom, prix)

## etape 2 : Les catégories
categorie(**id_cat**,nom)
categorie_plat(**id_cat_plat**,**id_cat**,**id_plat**)

## etape3 : Les commandes
commande(**id_com**,date,remaque)
commmandeDetail(**id_com_det**,**#id_com**,**#id_plat**,quantite)

## etape4 : Les habitués
client(**id_client**,nom,adress) 
commande_Client(**id_com_cli**,**#id_client?**,**#id_com**)