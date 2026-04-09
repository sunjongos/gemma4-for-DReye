#!/bin/bash

# Gemma 4 (e2b) Edge AI weight downloader for DReye
echo "==============================================="
echo "DReye Gemma 4 (e2b) Model Downloader"
echo "==============================================="
echo ""
echo "Notice: Gemma weights require accepting Google's terms on Kaggle."
echo "Please ensure you have configured your Kaggle API key before proceeding."
echo ""
echo "[Step 1] Creating models directory..."
mkdir -p models
cd models

echo "[Step 2] Downloading Gemma 2B IT model via Kaggle CLI..."
# Kaggle CLI commands (assuming they have it installed and authenticated)
# kaggle models instances versions download google/gemma/gemmaCpp/2b-it-sfp/2
echo "NOTE: Uncomment the kaggle command in this script to auto-download, or download manually from: https://www.kaggle.com/models/google/gemma/frameworks/gemmaCpp"
echo ""
echo "When downloaded manually, place the .sbs model file and tokenizer.spm into the 'models' directory."
echo "Done."
