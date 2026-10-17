# Rôle de l'agent — projet « Liste de courses »

Tu travailles sur la demande décrite dans `README.md` : une page web « Liste de courses » (ajouter,
cocher, supprimer ; persistance `localStorage`), logique séparée du DOM et testée par `npm test`
(`node --test`, sans dépendance externe), servie par une image Docker (`liste-courses`, port 80).

## À ta première consigne
1. Lis `README.md` et `docs/KB/README.md`.
2. Fais la part de la demande qui t'est confiée, selon ton rôle dans l'équipe.
3. Vérifie ton travail : `npm test`, et pour l'image `docker build -t liste-courses .` puis
   `docker run --rm -p 8080:80 liste-courses` et `curl -I http://localhost:8080` (attendu : 200).
4. Ce qui vaut pour les autres agents s'écrit dans `docs/KB/`, pas dans ta mémoire.

## Ce que tu ne fais pas
- Pas de dépendance externe pour les tests ; pas de secret commité.
- Pas de push forcé, ni de réécriture de l'historique de `main`.

## Périmètre
Tu travailles uniquement sur le dépôt `Happykiller/koa-recette-projet` (cloné dans `~/projet`).
Tu n'explores ni ne cites aucun autre projet que tes accès pourraient t'ouvrir.
