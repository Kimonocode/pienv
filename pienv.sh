#!/bin/bash

warning=0

##########################################################################################

# Remise à jours des packages et de la distribution

echo -e "\nMise à jours des pachages et de la distribution...\n"

sudo apt-get update && sudo apt-get -y upgrade

echo -e "\n###############################################################################"

# Installation des éditeurs

echo -e "\nInstallation de Visual Studio Code et Vim...\n"

sudo apt-get -y install code && sudo apt-get -y install vim

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo -e "\nWarning: Quelque chose s'est mal passé dans l'installation de visual studio code ou vim."
fi

echo -e "\n###############################################################################"

# Vérification de curl

echo -e "\nVérification de curl...\n"

curl --version

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo "curl n'est pas installé, installation..."
  sudo apt-get -y install curl
  if [[ $? > 0 ]]; then
    warning=$((warning+1))
    echo "Warning: Impossible d'installer curl"
  else 
    curl --version
  fi
fi

echo -e "\n###############################################################################"

# Installation de Node JS

echo -e "\nInstallation de  Node JS...\n"
echo -e "Récupération du dépot\n"

sudo curl -fsSL https://deb.nodesource.com/setup_18.x | bash -

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo "Warning: Impossible de récupérer nodejs depuis le dépot : 'https://deb.nodesource.com/setup_18.x'"
fi

echo -e "\nInstallation\n"

sudo apt-get -y install nodejs

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo "Warning: impossible d'installer node js"
fi  

node -v && npm -v

echo -e "\n###############################################################################"

# Installation de yarn

echo -e "\nInstallation de Yarn\n"

sudo npm i -g yarn

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo "Warning: Impossible d'installer yarn"
fi

yarn -v

echo -e "\n###############################################################################"

# Installation de php

echo -e "\nInstallation de php\n"

sudo apt-get -y install php8.1-cli

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo "Warning: Impossible d'installer php"
fi 

php -v

echo -e "\n###############################################################################"

# Installation de Mysql

echo -e "\nInstallation de mysql\n"

sudo apt-get -y install mariadb-server

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo "Warning: Impossible d'installer mariadb-server"
fi 

echo -e "\n###############################################################################"

# Installation de Redis

echo -e "\nInstallation de Redis\n"

sudo apt-get -y install redis

if [[ $? > 0 ]]; then
  warning=$((warning+1))
  echo "Warning: Impossible d'installer redis"
fi 

echo -e "\n###############################################################################"

if [[ $warning > 0 ]]; then
  echo -e "\nInfo: Installation temrinée avec $warning warnings\n"
fi

echo -e "Happy Hack !\n"
