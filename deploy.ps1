# Script de déploiement GitHub Pages
# Utilisation: .\deploy.ps1 -GitHubUsername "votre-username" -RepoName "robot-advisor-portefeuille"

param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername,
    
    [Parameter(Mandatory=$false)]
    [string]$RepoName = "robot-advisor-portefeuille"
)

Write-Host "=== Déploiement Robot Advisor sur GitHub Pages ===" -ForegroundColor Cyan
Write-Host ""

# Vérifier si Git est installé
try {
    $gitVersion = git --version
    Write-Host "✓ Git détecté: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git n'est pas installé. Veuillez installer Git: https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

# Vérifier si le fichier HTML existe
if (-not (Test-Path "Robot Advisor PEA.html")) {
    Write-Host "✗ Fichier 'Robot Advisor PEA.html' introuvable" -ForegroundColor Red
    exit 1
}

Write-Host "✓ Fichier HTML trouvé" -ForegroundColor Green

# Initialiser Git si nécessaire
if (-not (Test-Path ".git")) {
    Write-Host "Initialisation du dépôt Git..." -ForegroundColor Yellow
    git init
}

# Renommer le fichier en index.html
if (Test-Path "index.html") {
    Remove-Item "index.html" -Force
}
Copy-Item "Robot Advisor PEA.html" "index.html"
Write-Host "✓ Fichier renommé en index.html" -ForegroundColor Green

# Créer README.md
$readmeContent = @"
# Robot Advisor Portefeuille

Outil d'optimisation de portefeuille basé sur la théorie moderne de Markowitz.

## Fonctionnalités

- Optimisation quantitative de portefeuille (formule Markowitz)
- Simulation sur 10 ans avec stress tests (Crise 2008, COVID-19, etc.)
- Génération de PDF récapitulatif avec justifications
- Données de marché en temps réel via API Yahoo Finance
- Gestion des investisseurs (mode administrateur)
- Ratio de Sharpe optimisé entre 1 et 2

## Accès

Le site est accessible via GitHub Pages à l'adresse :
https://$GitHubUsername.github.io/$RepoName/

## Technologies

- HTML5, CSS3, JavaScript
- Chart.js pour les graphiques
- jsPDF pour la génération de PDF
- API Yahoo Finance pour les données de marché

## Avertissement

Les performances passées ne préjugent pas des performances futures. 
Ce robot advisor est un outil d'aide à la décision, pas un conseil en investissement personnalisé.
"@

$readmeContent | Out-File -FilePath README.md -Encoding UTF8
Write-Host "✓ README.md créé" -ForegroundColor Green

# Ajouter les fichiers
Write-Host "Ajout des fichiers à Git..." -ForegroundColor Yellow
git add index.html README.md

# Commit
Write-Host "Création du commit..." -ForegroundColor Yellow
git commit -m "Deploy: Robot Advisor Portefeuille" 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Commit créé" -ForegroundColor Green
} else {
    Write-Host "⚠ Aucun changement à commiter" -ForegroundColor Yellow
}

# Vérifier si le remote existe
$remoteExists = git remote get-url origin 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "Ajout du remote GitHub..." -ForegroundColor Yellow
    git remote add origin "https://github.com/$GitHubUsername/$RepoName.git"
    Write-Host "✓ Remote ajouté" -ForegroundColor Green
} else {
    Write-Host "✓ Remote déjà configuré: $remoteExists" -ForegroundColor Green
}

# Pousser vers GitHub
Write-Host ""
Write-Host "=== ÉTAPES MANUELLES REQUISES ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Créez le dépôt sur GitHub:" -ForegroundColor Yellow
Write-Host "   https://github.com/new" -ForegroundColor White
Write-Host "   Nom: $RepoName" -ForegroundColor White
Write-Host "   Type: Public" -ForegroundColor White
Write-Host ""
Write-Host "2. Une fois le dépôt créé, exécutez:" -ForegroundColor Yellow
Write-Host "   git branch -M main" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "3. Activez GitHub Pages:" -ForegroundColor Yellow
Write-Host "   - Allez dans Settings → Pages" -ForegroundColor White
Write-Host "   - Source: Branch 'main' / Folder '/' (root)" -ForegroundColor White
Write-Host "   - Cliquez sur Save" -ForegroundColor White
Write-Host ""
Write-Host "4. Votre site sera accessible à:" -ForegroundColor Green
Write-Host "   https://$GitHubUsername.github.io/$RepoName/" -ForegroundColor Cyan
Write-Host ""

