# oss-audit--24BAI10336-
# OSS Audit — Git
**Student Name:** Tejasav Bhasin
**Roll Number:** 24BAI10336
**Course:** Open Source Software
**Software Audited:** Git (GPL v2)

---

## About This Project
This repository contains five shell scripts written as part of
the Open Source Software capstone project. The scripts demonstrate
practical Linux skills and relate to the audit of Git —
a free and open source version control system.

---

## Scripts

### Script 1 — System Identity Report
Displays system information including kernel version, distro,
logged in user, uptime, and date.
**Run:**
```bash
chmod +x script1.sh
./script1.sh
```

### Script 2 — FOSS Package Inspector
Checks if Git is installed, shows version and installation path,
and prints a philosophy note about the package.
**Run:**
```bash
chmod +x script2.sh
./script2.sh
```

### Script 3 — Disk and Permission Auditor
Loops through key system directories and reports their size
and permissions.
**Run:**
```bash
chmod +x script3.sh
./script3.sh
```

### Script 4 — Log File Analyzer
Reads a log file line by line and counts occurrences of a keyword.
**Run:**
```bash
chmod +x script4.sh
./script4.sh test.log error
```

### Script 5 — Open Source Manifesto Generator
Asks three interactive questions and generates a personal
open source philosophy statement saved to a text file.
**Run:**
```bash
chmod +x script5.sh
./script5.sh
```

---

## Dependencies
- Linux / WSL Ubuntu
- Bash shell
- Git installed (`sudo apt install git`)

---

## How to Run All Scripts
```bash
git clone https://github.com/yourusername/oss-audit-yourrollnumber.git
cd oss-audit-yourrollnumber
chmod +x *.sh
./script1.sh
```
