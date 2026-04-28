# ODDonTOP Connectivity Monitor 🌐

A lightweight, Batch-based IP diagnostic utility designed for network monitoring and connectivity testing.

## 📖 Overview
This project serves as a basic **IP Pinger** with an integrated security "tripwire." Before the monitoring loop begins, the script performs a geolocation check to ensure the user is aware of their public connection status. This is designed to help users verify their VPN is active before proceeding with network diagnostics.

## 🛠️ How It Works (Educational Breakdown)
This script demonstrates several key networking and scripting concepts:

* **API Integration:** Uses PowerShell's `Invoke-RestMethod` to communicate with a **REST API** (`ip-api.com`).
* **JSON Parsing:** Demonstrates how to extract specific data (the `.city` property) from a JSON response and store it in a local variable.
* **ICMP Protocol:** Utilizes the standard `ping` command to send **Internet Control Message Protocol** packets to a target IP to check for a "TTL" (Time to Live) response.
* **Dynamic UI:** Uses randomized color logic to provide real-time visual feedback on connection status.

## 🔒 Privacy & Safety
* **No Tracking:** Geolocation data is fetched in real-time and displayed locally. No data is stored, logged, or transmitted to the developer.
* **VPN Awareness:** The tool prompts the user to verify their location, acting as a manual check to prevent accidental exposure of the user's home IP.

## ⚠️ Legal Disclaimer
**Any users who use this tool improperly or for malicious purposes do so at their own risk; I assume no responsibility for the actions of end-users.** This project is intended strictly for **educational purposes** and authorized network testing only. Unauthorized use against networks you do not own is strictly prohibited.

## 🚀 Getting Started
1. Download the `pinger.bat` file.
2. Run as Administrator (recommended for network tasks).
3. Follow the on-screen prompts to verify your location.
4. Enter the target IP you wish to monitor.

---
**Discord:** odd3_  
**Version:** 1.0.0
