# Dictionnaire des Données

## Code_individu
- **code** : 
  - Type: INT
  - Description: Identifiant unique de l'individu.
- **Nom** :
  - Type: VARCHAR(50)
  - Description: Nom de famille de l'individu.
- **Prénom** :
  - Type: VARCHAR(50)
  - Description: Prénom de l'individu.

## Professeur
- **code** :
  - Type: INT (Clé étrangère de `Code_individu`)
  - Description: Identifiant unique de l'individu qui est également professeur.
- **competence** :
  - Type: VARCHAR(50)
  - Description: Domaine de compétence du professeur.

## Adresse
- **numéro** :
  - Type: INT
  - Description: Numéro de l'adresse.
- **rue** :
  - Type: VARCHAR(50)
  - Description: Nom de la rue de l'adresse.
- **ville** :
  - Type: VARCHAR(50)
  - Description: Nom de la ville de l'adresse.
- **code_postal** :
  - Type: INT
  - Description: Code postal de l'adresse.

## Matière
- **nom_matière** :
  - Type: VARCHAR(50)
  - Description: Nom de la matière enseignée.

## Salle
- **nom** :
  - Type: VARCHAR(50)
  - Description: Nom ou numéro de la salle.

## Etudiant
- **code** :
  - Type: INT (Clé étrangère de `Code_individu`)
  - Description: Identifiant unique de l'individu qui est également étudiant.
- **diplome** :
  - Type: VARCHAR(50)
  - Description: Intitulé du diplôme poursuivi par l'étudiant.
- **numéro, rue, ville, code_postal** :
  - Type: INT, VARCHAR(50), VARCHAR(50), INT (Clés étrangères de `Adresse`)
  - Description: Adresse de l'étudiant.

## Cours
- **nom** :
  - Type: VARCHAR(50)
  - Description: Nom ou intitulé du cours.
- **heure_de_debut** :
  - Type: DATETIME
  - Description: Heure de début du cours.
- **heure_de_fin** :
  - Type: DATETIME
  - Description: Heure de fin du cours.
- **nom_matière** :
  - Type: VARCHAR(50) (Clé étrangère de `Matière`)
  - Description: Nom de la matière enseignée dans le cours.
- **code** :
  - Type: INT (Clé étrangère de `Professeur`)
  - Description: Identifiant du professeur qui enseigne le cours.
- **code_1** :
  - Type: INT (Clé étrangère de `Etudiant`)
  - Description: Identifiant de l'étudiant inscrit au cours.
