# IT Security Automation – Examination Scripts

## Overview
This repository contains three automation scripts developed as part of an
examination in Shellscripting and Automation with Python.

The scripts demonstrate how security-related routines can be automated
to improve visibility, reduce manual work and support compliance with
established security frameworks.

## Scripts

### Bash – Linux Security Check
Performs read-only security checks on Linux systems:
- Identifies files with insecure permissions (0777, SUID/SGID)
- Logs system information
- Outputs results to a secured log file

### PowerShell – Windows Privileged Account Audit
Audits local administrator group membership:
- Uses SID-based identification to ensure locale-safe execution
- Logs all privileged accounts for audit and compliance purposes

### Python – Security Log Analysis
Analyzes log files for potential security incidents:
- Identifies suspicious log entries based on keywords
- Generates a text-based security report
- Platform independent and dependency-free

## Security Principles
- Least privilege
- No hardcoded credentials
- Read-only operations
- Structured logging and audit trails
- Simple and reviewable code

## Compliance and Frameworks
The scripts support:
- NIST (Continuous monitoring and auditability)
- CIS Controls (Account management, logging)
- NIS2 (Risk management and incident detection)

## Usage
Scripts can be run manually or scheduled for periodic execution.
Output is written to log files for further analysis.

## Disclaimer
These scripts are intended for educational purposes and should be tested
before use in production environments.