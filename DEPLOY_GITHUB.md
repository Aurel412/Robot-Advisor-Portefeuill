# Guide de Déploiement sur GitHub Pages

## Étapes pour déployer le Robot Advisor sur GitHub Pages

### 1. Créer un nouveau dépôt sur GitHub

1. Allez sur https://github.com
2. Cliquez sur le bouton "+" en haut à droite → "New repository"
3. Nom du dépôt : `robot-advisor-portefeuille` (ou un autre nom de votre choix)
4. Description : "Robot Advisor pour optimisation de portefeuille"
5. Cochez **Public**
6. **NE COCHEZ PAS** "Initialize this repository with a README"
7. Cliquez sur "Create repository"

### 2. Préparer les fichiers localement

Ouvrez PowerShell dans le dossier du projet et exécutez ces commandes :

```powershell
# Initialiser Git si ce n'est pas déjà fait
git init

# Ajouter le fichier HTML
git add "Robot Advisor PEA.html"

# Renommer le fichier pour GitHub Pages (optionnel mais recommandé)
git mv "Robot Advisor PEA.html" index.html

# Créer un fichier README
echo "# Robot Advisor Portefeuille" > README.md
echo "Outil d'optimisation de portefeuille basé sur la théorie moderne de Markowitz" >> README.md

# Ajouter le README
git add README.md

# Faire le premier commit
git commit -m "Initial commit: Robot Advisor Portefeuille"

# Ajouter le remote GitHub (remplacez VOTRE_USERNAME par votre nom d'utilisateur GitHub)
git remote add origin https://github.com/VOTRE_USERNAME/robot-advisor-portefeuille.git

# Pousser vers GitHub
git branch -M main
git push -u origin main
```

### 3. Activer GitHub Pages

1. Allez sur votre dépôt GitHub : `https://github.com/VOTRE_USERNAME/robot-advisor-portefeuille`
2. Cliquez sur **Settings** (Paramètres)
3. Dans le menu de gauche, cliquez sur **Pages**
4. Sous "Source", sélectionnez :
   - Branch: `main`
   - Folder: `/ (root)`
5. Cliquez sur **Save**

### 4. Accéder à votre site

Votre site sera accessible à l'adresse :
```
https://VOTRE_USERNAME.github.io/robot-advisor-portefeuille/
```

**Note** : Il peut falloir quelques minutes (jusqu'à 10 minutes) pour que le site soit disponible après l'activation de GitHub Pages.

### Commandes Git complètes (copier-coller)

```powershell
# Dans le dossier du projet
cd "C:\Users\aurel\OneDrive\Desktop\OPPORTUNE ROBOT"

# Initialiser Git
git init

# Renommer le fichier
git mv "Robot Advisor PEA.html" index.html

# Créer README
@"
# Robot Advisor Portefeuille

Outil d'optimisation de portefeuille basé sur la théorie moderne de Markowitz.

## Fonctionnalités

- Optimisation quantitative de portefeuille
- Simulation sur 10 ans avec stress tests
- Génération de PDF récapitulatif
- Données de marché en temps réel
- Gestion des investisseurs (mode administrateur)
"@ | Out-File -FilePath README.md -Encoding UTF8

# Ajouter les fichiers
git add index.html README.md

# Commit
git commit -m "Initial commit: Robot Advisor Portefeuille"

# Ajouter remote (REMPLACEZ VOTRE_USERNAME)
git remote add origin https://github.com/VOTRE_USERNAME/robot-advisor-portefeuille.git

# Pousser
git branch -M main
git push -u origin main
```

### Vérification

Après le déploiement, vérifiez que :
- Le fichier `index.html` est présent dans le dépôt
- GitHub Pages est activé dans Settings → Pages
- Le site est accessible via le lien GitHub Pages

