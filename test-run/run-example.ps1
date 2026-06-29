$ErrorActionPreference = "Stop"

$env:DISABLE_TELEMETRY = "1"
$env:PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD = "1"

Set-Location (Split-Path $PSScriptRoot -Parent)

.\gmapsscraper.exe `
  -input .\test-run\queries.txt `
  -results .\test-run\results-browser.json `
  -json `
  -depth 1 `
  -exit-on-inactivity 90s
