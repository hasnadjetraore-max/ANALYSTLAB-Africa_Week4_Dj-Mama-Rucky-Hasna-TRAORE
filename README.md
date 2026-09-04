# 🏥 Projet HealthConnect - Audit de Qualité & Diagnostic des Données (Semaine 4)

## 📌 Présentation du Projet
La clinique **HealthConnect** fait face à une problématique majeure de rendez-vous médicaux non honorés (*No-Show*). Cette situation engendre des pertes financières, un gaspillage du temps médical et un allongement des délais de prise en charge des patients.

L'objectif global du projet est d'analyser les données historiques afin d'identifier les facteurs déterminants de ces absences et d'élaborer des leviers d'action stratégiques et chiffrés.

---

## 🎯 Objectifs de la Semaine 4
En tant que **Data Analyst**, l'objectif principal de cette étape initiale était de :
1. Évaluer la qualité globale et l'intégrité de la base de données brute (inspection en lecture seule sous RStudio).
2. Cartographier les anomalies, doublons et valeurs manquantes ($NA$).
3. Formuler les questions d'affaires clés et proposer des KPI stratégiques (opérationnels, financiers, stratégiques).
4. Établir les hypothèses de travail, identifier les limites et poser le cadre d'analyse initiale pour les phases ultérieures.

---

## 📊 Jeu de Données (`HealthConnect_Appointment_Data.csv`)
- **Volume :** 5 000 consultations / 18 variables (12 qualitatives, 6 quantitatives).
- **Variable cible :** `appointment_outcome` (`Attended` vs `No-Show`).
- **Dimensions clés :** 
  - **Socio-démographiques & Médicales :** `gender`, `age`, `age_group`, `appointment_type`
  - **Opérationnelles & Logistiques :** `booking_lead_days`, `appointment_date`, `appointment_day`, `appointment_time`, `distance_to_clinic_km`, `waiting_time_minutes`
  - **Gestion des Rappels :** `reminder_sent`, `reminder_channel`
  - **Historique Patient :** `previous_appointments`, `previous_no_shows`

---

## 🔍 Bilan du Diagnostic de Qualité (RStudio)
L'inspection exploratoire réalisée sous RMarkdown a révélé les éléments suivants :
- **Unicité des données :** **0 doublon** détecté (`sum(duplicated(data)) == 0`), confirmant l'unicité des enregistrements.
- **Valeurs manquantes ($NA$) :** 150 $NA$ identifiés au total sur le jeu de données :
  - `distance_to_clinic_km` : **90** $NA$
  - `waiting_time_minutes` : **60** $NA$
- **Clarification fonctionnelle :** La valeur `"None"` (1 366 observations) sur `reminder_channel` représente l'absence d'envoi de rappel et n'est pas une donnée manquante.
- **Nettoyage technique à prévoir (Semaine 5) :** Conversion des colonnes de dates (`booking_date`, `appointment_date`) actuellement typées en texte (`chr`) vers le type `Date.

---

## 💡 Hypothèses Métier & KPI Définis

### Hypothèses Principales
1. **Rappels :** L'envoi d'un rappel (SMS/WhatsApp) réduit significativement le taux de *No-Show*.
2. **Délai d'anticipation :** Un délai de réservation élevé (`booking_lead_days`) augmente le risque d'oubli.
3. **Historique :** L'historique des absences passées (`previous_no_shows`) est le principal facteur prédictif des absences futures.

### KPI Clés Proposés
- **Taux de présence & Taux de No-Show**
- **Coût total des rendez-vous manqués**
- **Revenu perdu estimé & Gain potentiel** (scénarios de réduction de -10%, -15%, -20%)

---
