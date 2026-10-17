# Projet de recette KoA — « Liste de courses »

Dépôt jetable du plan 112 de KoA : une demande réelle, petite, livrée par une équipe d'agents.

## La demande (du demandeur, à l'orchestrateur)

Une page web **« Liste de courses »** :

- ajouter un article, le cocher comme acheté, le supprimer ;
- la liste survit à un rechargement de la page (`localStorage`) ;
- la logique (ajouter, cocher, supprimer, sérialiser) est **séparée du DOM** et couverte par des tests
  unitaires lancés par `npm test` (`node --test`, sans dépendance externe) ;
- une **image Docker** sert la page : `docker build -t liste-courses .` puis
  `docker run --rm -p 8080:80 liste-courses` doit répondre sur `http://localhost:8080` ;
- le tout livré sur la branche `main` du dépôt partagé, avec un `README` qui dit comment lancer.

**Fini quand** : `npm test` passe, l'image se construit, le conteneur sert la page (HTTP 200), et
`main` porte le tout. Budget : une demi-heure d'équipe.

## Ce qui vaut pour tout le projet

La base de connaissance du projet est dans [`docs/KB/`](docs/KB/README.md). Ce qu'un agent apprend et
qui vaut pour les autres s'y écrit, pas dans sa mémoire.
