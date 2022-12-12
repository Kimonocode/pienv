# A propos

Ce script est un helper qui installe les dépendances dont j'ai besoin pour coder sur un RaspberryPi 4 :)

#### Mise à jours des packages

On commence par un coup d'apt-get update / upgrade pour remettre à jours la version de nos packages 
ainsi que la version de notre distribution

```shell
sudo apt-get update && sudo apt-get upgrade
```
#### Installation de mes éditeurs

Pour développer sur un Raspberry, j'utilise simplement deux éditeurs

- [Visual Studio Code](https://code.visualstudio.com/) qui est mon éditeur de premier choix et assez léger, parfait pour le pi
- [Vim](https://www.vim.org/) pour naviguer ou éditer rapidement dans mes fichers de configuration

```shell
sudo apt-get install code && sudo apt-get install vim
```
### Installation de Git

Maintenant que mes éditeurs sont installés, j'ai besoin de [Git](https://git-scm.com/) pour pouvoir récupérer mes dépots

```shell
sudo apt-get install git
```
Et je configure mon git avec les deux variables de base

```shell
git config --global user.email "ronald.github.dev@gmail.com" && git config --global user.name "kimonocode"
```
### Installation des différentes technologies

Ok, maintenant que mon git est bon, j'ai besoins de plusieurs technologies que j'utilise couramment

- [Node js](https://nodejs.org/en/) étant donné que je fais beaucoup d'[Adonis](https://adonisjs.com/)
- [Yarn](https://yarnpkg.com/) si vous connaissez node js et npm, vous devez connaitre yarn
- [Php](https://www.php.net/) pour... php 

#### Installation de node et npm

Nous allons récupérer la dernière version de nodejs avec curl. Nous pouvons donc vérifier que curl est bien installé sur notre système.
Pour cela, nous afficherons simplement un curl --version ou nous installerons curl si la commande échoue  

Quoi qu'il en sois, partons du principe que curl est correctement installé et récupérons node

```shell
sudo curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
```
Et ensuite l'installer

```shell
sudo apt-get install nodejs
```
Et on vérifie les version

```shell
node --version && npm --version
```
#### Installation de yarn

Nous pouvons installer yarn très facilement avec un coup de

```shell
npm i -g yarn
```
#### Installation de php

Un simple coup de

```shell
sudo apt install php8.1-cli
```
### Bases de données

Super, nous avons nos technos maintenant j'utilise deux principales bases de données pour dévelloper

-[Mysql]() qui est une base de donnée de type relationelle
-[Redis]() qui est une base de donnée de type clé -> valeur qui enregistre les informations sur la ram plutôt que sur le disque 

#### Installation de mysql

que j'installerais plûtot sous le moteur mariadb

```shell
sudo apt-get install mariadb-server
```
Après le script, je devrais simplement sécuriser manuellement mon serveur avec un 

``` shell
sudo mysql_secure_installation
```

#### Installation de redis

Avec un simple

```shell
sudo apt-get install redis
```

