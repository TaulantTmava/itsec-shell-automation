"""
==========================================
Python Security Log Analysis
Körs i VS Code med Python 3
==========================================
"""

import datetime
from pathlib import Path

LOG_FILE = Path("security_log.txt")
REPORT_FILE = Path("security_report.txt")

KEYWORDS = ["failed", "error", "unauthorized"]

def read_log_file():
    if not LOG_FILE.exists():
        print("Loggfil saknas.")
        return []

    with LOG_FILE.open("r", encoding="utf-8") as file:
        return file.readlines()

def analyze_logs(lines):
    return [line for line in lines if any(word in line.lower() for word in KEYWORDS)]

def write_report(results):
    with REPORT_FILE.open("w", encoding="utf-8") as report:
        report.write(f"Rapport skapad: {datetime.datetime.now()}\n")
        report.write("Identifierade misstänkta loggrader:\n\n")
        for line in results:
            report.write(line)

def main():
    lines = read_log_file()
    suspicious = analyze_logs(lines)
    write_report(suspicious)
    print("Analys klar. Rapport skapad.")

if __name__ == "__main__":
    main()
