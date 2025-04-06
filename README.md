# Port Scanner

## Overview
This is a simple Bash script for scanning open ports on a target host. It checks a range of ports and identifies which ones are open.

## Prerequisites
- A Linux or macOS system with Bash.
- Netcat (`nc`) should be available on the system.

## Usage
```bash
chmod +x port_scanner.sh
./port_scanner.sh <target> <port-range>
```
### Example:
```bash
./port_scanner.sh 192.168.1.1 1-100
```
This command scans ports 1 to 100 on the target `192.168.1.1`.

## Features
- Lightweight and fast.
- Uses built-in Bash capabilities.
- No additional dependencies required.

## Disclaimer
Use this script only on networks you own or have explicit permission to scan. Unauthorized scanning may be illegal.
