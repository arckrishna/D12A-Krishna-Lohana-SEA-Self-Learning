# Quick script to initialize and push this repository to GitHub
param(
    [string]$RepoName = "D12A-Krishna-Lohana-SEA-Self-Learning",
    [string]$GitHubUser = "arckrishna"
)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Publishing $RepoName to GitHub ($GitHubUser)..." -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

if (-not (Test-Path ".git")) {
    git init
    git branch -M main
}

git add .
git commit -m "feat: complete SEA self-learning activities 1-6 report for Krishna Lohana (Roll 29, D12A)"

$remoteUrl = "https://github.com/$GitHubUser/$RepoName.git"
$existingRemote = git remote get-url origin 2>$null

if (-not $existingRemote) {
    git remote add origin $remoteUrl
    Write-Host "Added remote: $remoteUrl" -ForegroundColor Green
} else {
    Write-Host "Remote already configured: $existingRemote" -ForegroundColor Yellow
}

Write-Host "`nTo push to your GitHub repo, run:" -ForegroundColor Green
Write-Host "  git push -u origin main" -ForegroundColor White
Write-Host "==========================================================" -ForegroundColor Cyan
