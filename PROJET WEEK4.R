##############################################################################################
#################### chargement des packages et Préparation de l'environnement ###############
##############################################################################################
# Installation du package principal
install.packages("tidyverse") 

# Chargement du package principal
library(tidyverse)

# Définition du chemin d'accès 
setwd("C:/Users/HP/OneDrive - Centre Africain d'Etudes Supérieures en Gestion (CESAG)/Bureau/DOCUMENT HASNA/ANALYSTLAB AFRICA 001/AOUT/WEEK 4")


##############################################################################################
##################### Importation, Visualisation et Détection des anomalies ##################
##############################################################################################

# Importation du jeu de données 
data <- read_csv("HealthConnect_Appointment_Data.csv")

# Lister le nom exact de toutes tes colonnes
names(data)

# Affiche les 6 premières lignes pour voir l'allure des données
head(data)

# Ouvrerture de la table interactive dans un nouvel onglet
View(data)        

# Affiche [Nombre de lignes, Nombre de colonnes]
dim(data)

#Inspecter la structure et le type des colonnes
glimpse(data)

# Nombre de valeurs manquantes par colonne
colSums(is.na(data))

# Compte le nombre total de lignes en doublon
sum(duplicated(data))

#Résumé statistique complet (Min, Max, Moyenne, Médiane, Quartiles, NA= indiquant le nombre de valeur manquantes dans une colonne)
summary(data)
