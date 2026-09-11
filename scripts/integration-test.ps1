$stagingPath = "C:\Deployments\staging"
Set-Location $stagingPath

$process = Start-Process -FilePath "node" -ArgumentList "index.js" -PassThru -WindowStyle Hidden
Start-Sleep -Seconds 3

try {
    $home = Invoke-WebRequest -Uri "http://localhost:4000/" -UseBasicParsing
    $health = Invoke-WebRequest -Uri "http://localhost:4000/health" -UseBasicParsing

    Write-Output "GET / returned status code: $($home.StatusCode)"
    Write-Output "GET /health returned status code: $($health.StatusCode)"

    if ($home.StatusCode -ne 200 -or $health.StatusCode -ne 200) {
        throw "Integration test failed: unexpected status code"
    }

    Write-Output "INTEGRATION TESTS PASSED"
}
finally {
    Stop-Process -Id $process.Id -Force
}