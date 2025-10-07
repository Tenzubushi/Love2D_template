# Run tests (PowerShell)
# Simple smoke test for the template. Requires Lua on PATH.

$testFile = Join-Path -Path $PSScriptRoot -ChildPath "test_game_load.lua"
if (-Not (Get-Command lua -ErrorAction SilentlyContinue)) {
    Write-Host "Lua interpreter not found on PATH. Install Lua or run the test file manually with your Lua interpreter." -ForegroundColor Yellow
    exit 1
}

lua $testFile
