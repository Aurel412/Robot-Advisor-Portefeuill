# Guide Rapide - Déploiement GitHub Pages

## 🚀 Commandes à exécuter dans PowerShell

### Étape 1 : Créer le dépôt sur GitHub
1. Allez sur https://github.com/new
2. Nom du dépôt : `robot-advisor-portefeuille`
3. Cochez **Public**
4. **NE COCHEZ PAS** "Initialize with README"
5. Cliquez "Create repository"

### Étape 2 : Exécuter ces commandes dans PowerShell

```powershell
# Aller dans le dossier du projet
cd "C:\Users\aurel\OneDrive\Desktop\OPPORTUNE ROBOT"

# Initialiser Git
git init

# Ajouter les fichiers
git add index.html README.md .gitignore

# Créer le commit
git commit -m "Initial commit: Robot Advisor Portefeuille"

# Ajouter le remote (REMPLACEZ VOTRE_USERNAME par votre nom GitHub)
git remote add origin https://github.com/VOTRE_USERNAME/robot-advisor-portefeuille.git

# Pousser vers GitHub
git branch -M main
git push -u origin main
```

### Étape 3 : Activer GitHub Pages

1. Allez sur : `https://github.com/VOTRE_USERNAME/robot-advisor-portefeuille`
2. Cliquez sur **Settings** (en haut)
3. Menu gauche : **Pages**
4. Source :
   - Branch: `main`
   - Folder: `/ (root)`
5. Cliquez **Save**

### Étape 4 : Accéder à votre site

Votre site sera disponible à :
```
https://VOTRE_USERNAME.github.io/robot-advisor-portefeuille/
```

⏱️ **Attendre 2-10 minutes** pour que GitHub Pages active le site.

---

## 🔧 Alternative : Utiliser le script automatisé

```powershell
.\deploy.ps1 -GitHubUsername "VOTRE_USERNAME" -RepoName "robot-advisor-portefeuille"
```

Puis suivez les instructions affichées.

