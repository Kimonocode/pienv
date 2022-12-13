# A propos

Ce script est un helper qui installe les différentes dépendances dont j'ai besoin pour développer sur un [RaspberryPi](https://www.kubii.fr/content/72-quest-ce-que-le-raspberry-pi) :blush:

Actuellement, j'utilise un rapsberry pi 4 8gb ram

Pour tous les scripts d'installations, j'ajoute le drapeau ( -y ) pour ignorer les questions [O/n ?]

## Mise à jours des packages

On commence par un coup d'apt-get update / upgrade pour remettre à jours la version de nos packages 
ainsi que la version de notre distribution

```shell
sudo apt-get update && sudo apt-get -y upgrade
```
## Les éditeurs

Pour développer sur un Raspberry, j'utilise simplement deux éditeurs

- [Visual Studio Code](https://code.visualstudio.com/) qui est mon éditeur de premier choix et assez léger, parfait pour le pi
- [Vim](https://www.vim.org/) pour naviguer / éditer rapidement mes fichers de configuration

```shell
sudo apt-get -y install code && sudo apt-get -y install vim
```
## Installation des différentes technologies

Ok, maintenant que mes éditeurs sont bons, j'ai besoin de plusieurs technologies que j'utilise couramment

- [Node js](https://nodejs.org/en/) étant donné que je fais beaucoup d'[Adonis](https://adonisjs.com/)
- [Yarn](https://yarnpkg.com/) si vous connaissez node js et npm, vous devez connaitre yarn
- [Php](https://www.php.net/) pour... php 

### Installation de node et npm

Nous allons récupérer la dernière version de nodejs avec [curl](https://curl.se/). Nous pouvons donc vérifier que curl est bien installé sur notre système.
Pour cela, nous afficheons simplement un curl --version ou nous installons curl si la commande échoue  

Quoi qu'il en soit, partons du principe que curl est correctement installé et récupérons node

```shell
sudo curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
```
Ensuite nous l'installons

```shell
sudo apt-get -y install nodejs
```
Et nous vérifions les versions

```shell
node --version && npm --version
```
### Installation de yarn

Nous pouvons installer yarn très facilement avec un coup de

```shell
npm i -g yarn
```
### Installation de php

pour php, je n'ai simplement besoin que de la cli

```shell
sudo apt-get -y install php8.1-cli
```
## Bases de données

Super, nous avons nos technos maintenant j'utilise deux principales bases de données pour dévelloper

- [Mysql](https://www.mysql.com/fr/) qui est une base de donnée de type relationelle
- [Redis](https://redis.io/) qui est une base de donnée de type clé -> valeur qui enregistre les informations sur la ram plutôt que sur le disque 

### Installation de mysql

que j'installerais sous [mariadb](https://mariadb.org/) qui est un embranchement de mysql

```shell
sudo apt-get -y install mariadb-server
```
Après le script, je devrais simplement sécuriser manuellement mon serveur avec un 

``` shell
sudo mysql_secure_installation
```
### Installation de redis

Avec un simple

```shell
sudo apt-get -y install redis
```
Et je n'ai plus qu'à attendre que tous cela s'exécute :coffee: :blush:

