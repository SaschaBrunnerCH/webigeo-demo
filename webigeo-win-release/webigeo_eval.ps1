param(
    [string]$settingsFile,
    [string]$logFile = "webigeo.log"
)

if (-not $settingsFile) {
    Write-Host "Error: No settings file provided."
    exit 1
}

# write to console and log file
./webigeo_eval.exe "$settingsFile" | Tee-Object -file "$logFile"
