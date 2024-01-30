#!/bin/bash

#Incluimos archivo de Variables

echo Ejemplo de importación de variables

source .env

echo $MARIADB_ROOT_PASSWORD

echo $MARIADB_DATABASE
