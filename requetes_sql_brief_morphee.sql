
/* Donnez la liste des services proposées dans les hôtels */
SELECT nom
FROM OPTION;

/* Donnez la liste des hôtels de Paris. */
SELECT nom
FROM HOTEL
WHERE ville = 'Paris';

/* Donnez la liste des hôtels situés en italie ainsi que ceux situés en Angleterre. */
SELECT h.nom, p.nom
FROM HOTEL h, PAYS p
WHERE (p.PAYS_ID = 'IT' OR p.PAYS_ID = 'UK') AND h.PAYS_ID = p.PAYS_ID

/* Donnez la listes des factures établies entre 01 et le 31 juillet 2023. */
SELECT FACTURATION_ID
FROM FACTURATION
WHERE date_facture >= '01/07/23' AND date_facture <= '31/07/23';

/* Donnez la liste des hotels classée par enseigne. */
SELECT h.nom, e.nom
FROM HOTEL h, ENSEIGNE e
WHERE h.HOTEL_ID = e.HOTEL_ID
GROUP BY e.ENSEIGNE_ID;

/* Donnez La liste des factures d'un hotel en donnant son nom ou sa ville. */
SELECT f.FACTURATION_ID, h.nom, h.ville
FROM FACTURATION f, HOTEL h
WHERE f.HOTEL_ID = h.HOTEL_ID;

/* Donnez La liste des factures du client professionnel X (join). */ 
SELECT f.FACTURATION_ID, d.SIRET
FROM FACTURATION f, DOSSIER_CLIENT_PRO d
WHERE f.CLIENT_ID = d.CLIENT_ID;

/* Ajouter un nouveau service pour les hotels. */
INSERT LISTE_OPTION VALUE(LENGTH(LISTE_OPTION_ID), 'Jacuzzi', 150);

/* Décrivez les actions (séquences de requêtes) qu'ils faudrait effectuer pour supprimer une enseigne de la BDD. */
DELETE FROM ENSEIGNE
WHERE nom = 'Enseigne X';