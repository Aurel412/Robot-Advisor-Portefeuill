# Robot Advisor Portefeuille

Outil d'optimisation de portefeuille basé sur la théorie moderne de Markowitz.

## Fonctionnalités

- **Optimisation quantitative** : Utilisation de la formule Markowitz `w* = (1/Risk Aversion) × Σ⁻¹ × E[r - rf]`
- **Simulation sur 10 ans** : Stress tests incluant Crise 2008, COVID-19, Stagflation, Krach boursier
- **Ratio de Sharpe optimisé** : Cible entre 1 et 2 pour un bon équilibre risque/rendement
- **Génération PDF** : Rapport récapitulatif avec justifications détaillées de chaque produit
- **Données temps réel** : Synchronisation avec les données de marché via API Yahoo Finance
- **Gestion investisseurs** : Mode administrateur avec export CSV/JSON

## Accès au site

Le site est déployé sur GitHub Pages et accessible à :
**https://[VOTRE_USERNAME].github.io/robot-advisor-portefeuille/**

## Technologies

- HTML5, CSS3, JavaScript
- Chart.js 4.4.1 pour les graphiques
- jsPDF 2.5.1 pour la génération de PDF
- API Yahoo Finance pour les données de marché

## Utilisation

1. Remplissez votre profil (nom, email, montant, horizon, perte max, expérience)
2. Cliquez sur "Optimiser le Portefeuille"
3. Consultez les résultats et téléchargez le PDF récapitulatif
4. Accédez au mode Administrateur (mot de passe: Dinodo1994) pour voir tous les investisseurs

## Avertissement

Les performances passées ne préjugent pas des performances futures. Les marchés financiers comportent des risques de perte en capital. Ce robot advisor est un outil d'aide à la décision, pas un conseil en investissement personnalisé. Consultez un conseiller financier agréé pour une recommandation adaptée à votre situation.

