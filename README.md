# 🚀 SPAWN PED QUITTE - Script pour FiveM

<p align="center">
  <img src="https://cdn.discordapp.com/attachments/1291112806451511369/1300131722381361152/FiveM_GTA_V_Logo.png?ex=671fb985&is=671e6805&hm=1ad9f041a278429449b639691945a5986bc0c61f6198aec86f1111ff5fd93734&" alt="Logo" width="300" height="100"/>
</p>

## 📜 Description

Le script **Ped Sleep on Quit** pour FiveM améliore l'expérience de jeu de rôle en permettant aux personnages de joueurs (peds) de s'endormir lorsque le joueur se déconnecte. Cela évite que les joueurs disparaissent brutalement, créant ainsi une ambiance plus immersive sur votre serveur. Le script inclut également des options configurables pour ajouter du réalisme et de la sécurité.

## 🌱 Fonctionnalités

- **Gestion automatique des Peds** : Lorsqu'un joueur se déconnecte, son ped est sauvegardé et mis en mode sommeil à son dernier emplacement.
- **Options configurables** : Activez facilement des options pour geler le ped et activer le godmode pour éviter les dommages.
- **Sécurité renforcée** : Des mesures anti-triche intégrées pour empêcher les abus.
- **Suppression automatique du Ped** : Le ped est automatiquement supprimé lorsque le joueur se reconnecte, garantissant une expérience fluide.

## 💻 Installation

1. Téléchargez le script depuis le [lien de téléchargement](https://github.com/tifiouse-root/TFS_DISCONNECTFIVEM/archive/refs/heads/main.zip).
2. Clonez ou décompressez le fichier et placez le dossier `tfs_disconnectfivem` dans le dossier `resources` de votre serveur FiveM.
3. Ajoutez `start tfs_disconnectfivem` à votre fichier `server.cfg`.
4. Redémarrez votre serveur FiveM pour appliquer les changements.

## 📜 Configuration

Le fichier `config.lua` contient les paramètres de configuration. Modifiez les options selon vos besoins.

### 📜 Exemples de configuration :

```lua
Config = {}

-- Définir sur true pour geler le ped afin qu'il ne réagisse pas aux actions comme viser
Config.FreezePed = true

-- Définir sur true pour activer le godmode et rendre le ped invincible
Config.PedGodmode = true
```

- **FreezePed** : Empêche le ped de réagir aux actions à proximité (comme viser).
- **PedGodmode** : Rend le ped invincible aux dommages.

## 🧪 Commandes

- Il n'y a pas de commandes, c'est juste des interactions !

## 🟣 Traductions

Le script **ne prend pas** en charge plusieurs traductions.

## License

Ce projet est sous licence [MIT](#).

```markdown
# Licence MIT

Copyright (c) [2024] [Tifiouse]

## Conditions de la Licence

Par la présente, il est accordé, sans frais, à toute personne obtenant une copie de ce script et des fichiers de documentation associés, le droit de traiter le script sans restriction, y compris, sans limitation, le droit de l'utiliser, de le copier, de le modifier, de le fusionner, de le publier, de le distribuer, de le sous-licencier et/ou de vendre des copies du script, et de permettre aux personnes à qui le script est fourni de le faire, sous réserve des conditions suivantes :

1. Attribution : L'avis de copyright ci-dessus et cet avis de permission doivent être inclus dans toutes les copies ou parties substantielles du script.

2. Utilisation : Vous pouvez utiliser ce script dans des projets personnels ou commerciaux tant que vous respectez les conditions de cette licence.

3. Exclusion de garantie : LE SCRIPT EST FOURNI "EN L'ÉTAT", SANS GARANTIE D'AUCUNE SORTE, EXPRESSE OU IMPLICITE, Y COMPRIS MAIS SANS S'Y LIMITER AUX GARANTIES DE COMMERCIALISATION, D'ADÉQUATION À UN USAGE PARTICULIER ET DE NON-CONTREFAÇON. EN AUCUN CAS, L'AUTEUR OU LES TITULAIRES DU DROIT D'AUTEUR NE POURRONT ÊTRE TENUS RESPONSABLES DE QUELQUE RÉCLAMATION, DOMMAGES OU AUTRES RESPONSABILITÉS, QUE CE SOIT DANS UNE ACTION EN CONTRAT, EN DÉLIT OU AUTRE, DÉCOULANT DE OU EN LIEN AVEC LE SCRIPT OU L'UTILISATION OU D'AUTRES TRAITEMENTS DANS LE SCRIPT.
```
