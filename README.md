Cybersecurity Home Lab: SIEM & Vulnerability Management
📖 Project Overview
This project simulates a Security Operations Center (SOC) environment using Wazuh (SIEM) and Nessus (Vulnerability Scanner). The goal was to build a detection pipeline that monitors endpoints for suspicious activity, file integrity changes, and system vulnerabilities.

The lab demonstrates a practical understanding of log analysis, threat detection, and vulnerability assessment—key skills for SOC Analyst and Security Engineer roles.

🛠️ Technologies Used
Wazuh SIEM: Dockerized deployment (Manager, Indexer, Dashboard).

Wazuh Agent: Endpoint monitoring and log collection.

Nessus Essentials: Vulnerability scanning and assessment.

Docker: Containerization of the SIEM infrastructure.

macOS / Linux: Endpoint operating system and command-line management.

🏗️ Architecture & Topology
The lab consists of a centralized server collecting telemetry from an endpoint.

Server (The Brain): Wazuh Manager & Dashboard running in Docker containers.

Endpoint (The Target): macOS workstation running the Wazuh Agent.

Scanner: Nessus Essentials performing network-based vulnerability scans.

⚡ Key Activities & Methodology
1. SIEM Deployment & Configuration
Deployed the Wazuh stack (Indexer, Manager, Dashboard) using Docker.

Configured the Wazuh Agent on a macOS endpoint to forward system logs to the manager.

Established secure authentication between the Agent and Server using agent-auth.

2. File Integrity Monitoring (FIM)
Objective: Detect unauthorized changes to sensitive files.

Configuration: Modified ossec.conf to monitor a critical file: /etc/passwords_backup.txt.

The Attack: Simulated an insider threat by modifying the watched file using terminal commands.

Detection: Triggered Rule ID 550 (File Integrity Changed) on the Wazuh Dashboard.

3. Vulnerability Assessment
Installed and configured Nessus Essentials.

Performed a "Basic Network Scan" against the local host (127.0.0.1).

Analyzed the report to identify open ports, service versions, and potential system vulnerabilities.
