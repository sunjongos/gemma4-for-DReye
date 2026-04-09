Write-Host "==============================================="
Write-Host "DReye Gemma 4 (e2b) Model Downloader"
Write-Host "==============================================="
Write-Host ""
Write-Host "Notice: Gemma weights require accepting Google's terms on Kaggle."
Write-Host "Please ensure you have configured your Kaggle API key before proceeding."
Write-Host ""
Write-Host "[Step 1] Creating models directory..."
if (-not (Test-Path -Path "models")) {
    New-Item -ItemType Directory -Path "models" | Out-Null
}
Set-Location -Path "models"

Write-Host "[Step 2] Downloading Gemma 2B IT model via Kaggle CLI..."
# kaggle models instances versions download google/gemma/gemmaCpp/2b-it-sfp/2
Write-Host "NOTE: Please install Kaggle CLI and uncomment the download command inside this script,"
Write-Host "or download manually from: https://www.kaggle.com/models/google/gemma/frameworks/gemmaCpp"
Write-Host ""
Write-Host "When downloaded manually, extract and place the .sbs model file and tokenizer.spm into the 'models' directory."
Write-Host "Done."
Set-Location -Path ".."
