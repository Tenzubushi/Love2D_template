param(
    [string]$Out = "project.love"
)

# Builds a .love file into ./build by zipping project files (excludes build/, .git/, .vscode/, .idea/ and existing .love files)

$root = Get-Location
$buildDir = Join-Path $root "build"
if (-not (Test-Path $buildDir)) { New-Item -ItemType Directory -Path $buildDir | Out-Null }

$excludes = @('.git','.vscode','.idea','build')

$files = Get-ChildItem -Recurse -File | Where-Object {
    $skip = $false
    foreach ($e in $excludes) { if ($_.FullName -like "*\\$e*") { $skip = $true } }
    if ($_.Extension -ieq '.love') { $skip = $true }
    -not $skip
} | ForEach-Object {
    $_.FullName.Substring($root.Path.Length+1)
}

if (-not $files) {
    Write-Error "No files found to include in the .love archive"
    exit 1
}

$temp = Join-Path $buildDir 'tmp.zip'
if (Test-Path $temp) { Remove-Item $temp -Force }

Push-Location $root
Compress-Archive -Path $files -DestinationPath $temp
Pop-Location

$dest = Join-Path $buildDir $Out
if (Test-Path $dest) { Remove-Item $dest -Force }
Rename-Item $temp $dest

Write-Host "Created $dest"
