
$ErrorActionPreference = "Stop"

Write-Host "Setting up Git Hooks..."

if (!(Test-Path ".githooks/pre-commit")) {
    Write-Host "ERROR: pre-commit hook not found!"
    exit 1
}

git config core.hooksPath .githooks

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to configure Git Hooks"
    exit 1
}

Write-Host "Git Hooks configured successfully!"
