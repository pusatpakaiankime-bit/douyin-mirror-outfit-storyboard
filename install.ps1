$ErrorActionPreference = 'Stop'

$sourceRoot = Join-Path $PSScriptRoot 'skills'
$targetRoot = Join-Path $env:USERPROFILE '.codex\skills'
$skillSource = Join-Path $sourceRoot 'douyin-mirror-outfit-storyboard'
$sharedSource = Join-Path $sourceRoot '_shared'
$skillTarget = Join-Path $targetRoot 'douyin-mirror-outfit-storyboard'
$sharedTarget = Join-Path $targetRoot '_shared'

if (-not (Test-Path -LiteralPath $skillSource)) {
    throw "Missing skill source: $skillSource"
}
if (-not (Test-Path -LiteralPath $sharedSource)) {
    throw "Missing shared constraints: $sharedSource"
}

New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null
New-Item -ItemType Directory -Force -Path $skillTarget | Out-Null
New-Item -ItemType Directory -Force -Path $sharedTarget | Out-Null

Get-ChildItem -LiteralPath $skillSource -Force | Copy-Item -Destination $skillTarget -Recurse -Force
Get-ChildItem -LiteralPath $sharedSource -Force | Copy-Item -Destination $sharedTarget -Recurse -Force

Write-Host 'Installed: douyin-mirror-outfit-storyboard' -ForegroundColor Green
Write-Host "Location: $skillTarget"
Write-Host 'Restart Codex, then invoke: $douyin-mirror-outfit-storyboard'
