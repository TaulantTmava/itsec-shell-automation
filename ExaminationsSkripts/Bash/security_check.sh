#!/bin/bash

# ==========================================
# Bash Security Check Script
# Körs i VS Code via Linux/WSL
# ==========================================

LOGFILE="./security_check.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "[$DATE] Startar säkerhetskontroll" >> "$LOGFILE"

echo "---- Kontroll av filer med osäkra rättigheter ----" >> "$LOGFILE"
find /home -type f -perm 0777 2>/dev/null >> "$LOGFILE"

echo "---- Miljöinformation ----" >> "$LOGFILE"
uname -a >> "$LOGFILE"

echo "[$DATE] Säkerhetskontroll avslutad" >> "$LOGFILE"
echo "" >> "$LOGFILE"
