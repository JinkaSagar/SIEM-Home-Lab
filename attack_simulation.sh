#!/bin/bash
# Attack Simulation Script for SIEM Lab
# This script automates the process of modifying a monitored file to test detection rules.

TARGET_FILE="/etc/passwords_backup.txt"

echo "--------------------------------------------------"
echo "[*] Starting Internal Threat Simulation..."
echo "--------------------------------------------------"

# 1. Check if file exists, if not create it
if [ ! -f "$TARGET_FILE" ]; then
    echo "[!] Target file not found. Creating it now..."
    sudo touch $TARGET_FILE
fi

# 2. Modify the file (Simulating an unauthorized change)
CURRENT_DATE=$(date)
echo "Suspicious_Entry_Log: $CURRENT_DATE" | sudo tee -a $TARGET_FILE > /dev/null
echo "[+] Malicious payload injected into $TARGET_FILE"

# 3. Force the Agent to scan immediately (Bypassing the standard scan interval)
echo "[*] Triggering immediate system scan (Wazuh Agent Restart)..."
sudo /Library/Ossec/bin/wazuh-control restart

echo "--------------------------------------------------"
echo "[+] Attack Complete. Check Wazuh Dashboard for Rule ID 550."
echo "--------------------------------------------------"