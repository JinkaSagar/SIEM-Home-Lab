#!/bin/bash
# SIEM Lab Startup Script
# Use this to quickly spin up the entire environment (Server + Agent + Scanner)

echo "=========================================="
echo "   Starting Cybersecurity Home Lab...     "
echo "=========================================="

# 1. Start Wazuh Server (Docker Containers)
echo "[1/3] Starting Wazuh Manager, Indexer, and Dashboard..."
docker start single-node-wazuh.indexer-1 single-node-wazuh.manager-1 single-node-wazuh.dashboard-1

# 2. Start Nessus Vulnerability Scanner
echo "[2/3] Starting Nessus Service..."
sudo launchctl start com.tenablesecurity.nessusd

# 3. Start Wazuh Agent (Endpoint)
echo "[3/3] Starting Wazuh Agent..."
sudo /Library/Ossec/bin/wazuh-control start

echo "=========================================="
echo "   Lab is LIVE! Access Dashboard at:      "
echo "   https://localhost                      "
echo "=========================================="