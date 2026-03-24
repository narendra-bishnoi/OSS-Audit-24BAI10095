# 🔍 The Open Source Audit

> **Capstone Project — Open Source Software (OSS NGMC Course)**
> 

---

## 👤 Student Information

| Field | Details |
|-------|---------|
| **Name** | Narendra Bishnoi |
| **Registration Number** | 24BAI10095 |
| **Chosen Software** | Git |
| **License** | GNU General Public License v2.0 |
| **Course** | Open Source Software — NGMC |
| **Repository** | [OSS-Audit-24BAI10095](https://github.com/narendra-bishnoi/OSS-Audit-24BAI10095) |

---

## 📦 About the Chosen Software — Git

**Git** is a free and open-source distributed version control system, licensed under **GNU GPL v2**.
Created by Linus Torvalds in April 2005, Git was built after a licensing dispute made the proprietary
tool BitKeeper unavailable for Linux kernel development. Torvalds chose to build something open,
fast, and free — so no corporation could ever control how collaborative software was made.

Today, Git underpins virtually all open-source development on the planet.

---

## 📁 Repository Structure

```
OSS-Audit-24BAI10095/
│
├── README.md                                   ← You are here
├── LICENSE                                     ← GPL-2.0
│
└── scripts/
    ├── script1_system_identity.sh              ← System welcome screen
    ├── script2_package_inspector.sh            ← FOSS package checker
    ├── script3_disk_permission_auditor.sh      ← Directory audit tool
    ├── script4_log_analyzer.sh                 ← Log keyword counter
    └── script5_manifesto_generator.sh          ← OSS manifesto generator
```

---

## 🖥️ Environment Requirements

| Requirement | Details |
|---|---|
| **OS** | Ubuntu 20.04+ / Fedora 36+ / Any modern Linux distro |
| **Shell** | GNU Bash 4.0 or higher |
| **Software** | `git` (subject of this audit) |
| **Utilities** | `coreutils`, `util-linux`, `grep`, `awk` — pre-installed on all Linux distros |

### Verify your environment

```bash
bash --version       # Should be 4.0+
git --version        # Confirm Git is installed
uname -r             # Confirm you are on Linux
```

---

## ⚙️ Setup Instructions

### Step 1 — Clone the Repository

```bash
git clone https://github.com/narendra-bishnoi/OSS-Audit-24BAI10095.git
cd OSS-Audit-24BAI10095
```

### Step 2 — Make All Scripts Executable

```bash
chmod +x scripts/*.sh
```

### Step 3 — Install Git (if not already present)

```bash
# Ubuntu / Debian
sudo apt update && sudo apt install git -y

# Fedora / RHEL / CentOS
sudo dnf install git -y

# Verify installation
git --version
```

---

## 🚀 Running the Scripts

All scripts are inside the `scripts/` directory. Run them from the repo root.

---

### Script 1 — System Identity Report

Displays a formatted system welcome screen: Linux distribution, kernel version,
logged-in user, home directory, uptime, date/time, and the OS open-source license.

```bash
bash scripts/script1_system_identity.sh
```

**Shell concepts:** Variables, `echo`, command substitution `$()`, output formatting

**Sample output:**
```
==============================================
     Open Source Audit — Narendra Bishnoi
==============================================
Chosen Software : Git
Distribution    : Ubuntu 22.04.3 LTS
Kernel Version  : 5.15.0-91-generic
Current User    : narendra
Uptime          : up 2 hours, 14 minutes
Date & Time     : 24 March 2026, 11:30:00
OS License      : GNU General Public License v2.0
==============================================
```

---

### Script 2 — FOSS Package Inspector

Checks whether Git is installed, displays version and package details,
and prints an open-source philosophy note using a `case` statement.

```bash
bash scripts/script2_package_inspector.sh
```

**Shell concepts:** `if-then-else`, `case` statement, `dpkg -l` / `rpm -qi`, `grep`, pipes

---

### Script 3 — Disk and Permission Auditor

Loops through key Linux directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`),
reporting permissions, owner, group, and disk usage for each. Also checks Git's config file.

```bash
bash scripts/script3_disk_permission_auditor.sh
```

**Shell concepts:** `for` loop, arrays, `ls -ld`, `du -sh`, `awk`, `cut`

---

### Script 4 — Log File Analyzer

Reads a log file line by line, counts lines matching a keyword, and prints the last 5 matches.

```bash
# Search for 'error' in syslog (default keyword)
bash scripts/script4_log_analyzer.sh /var/log/syslog error

# Search for 'failed' in auth log
bash scripts/script4_log_analyzer.sh /var/log/auth.log failed

# On Fedora/RHEL (syslog may be at a different path)
bash scripts/script4_log_analyzer.sh /var/log/messages warning
```

**Arguments:**

| Argument | Required | Default | Description |
|---|---|---|---|
| `$1` | ✅ Yes | — | Full path to the log file |
| `$2` | ❌ No | `error` | Keyword to search for (case-insensitive) |

**Shell concepts:** `while read` loop, `if-then`, counter variables, positional arguments `$1`/`$2`, `grep`, `tail`

---

### Script 5 — Open Source Manifesto Generator

Asks three interactive questions, then generates a personalised open-source philosophy
statement and saves it to `manifesto_<username>.txt`.

```bash
bash scripts/script5_manifesto_generator.sh
```

Prompts:
```
1. Name one open-source tool you use every day:
2. In one word, what does 'freedom' mean to you?
3. Name one thing you would build and share freely:
```

Output saved as: `manifesto_<yourusername>.txt`

**Shell concepts:** `read` for interactive input, string concatenation, `>` / `>>` file writing, `date`, alias concept (in comments)

---

## 📋 Scripts at a Glance

| # | File | Purpose | Input |
|---|---|---|---|
| 1 | `script1_system_identity.sh` | OS/kernel info welcome screen | None |
| 2 | `script2_package_inspector.sh` | Package check + philosophy note | None |
| 3 | `script3_disk_permission_auditor.sh` | Directory permissions + disk usage | None |
| 4 | `script4_log_analyzer.sh` | Log file keyword counter | Log path + keyword |
| 5 | `script5_manifesto_generator.sh` | Interactive manifesto generator | 3 prompts |

---

## 🔒 License

This repository is licensed under the **GNU General Public License v2.0**.
The subject of this audit — **Git** — is also licensed under GNU GPL v2.

See the [LICENSE](./LICENSE) file for full details, or visit:
[https://git-scm.com/about/free-and-open-source](https://git-scm.com/about/free-and-open-source)

---

## 📚 References

- GNU Free Software Definition — [gnu.org/philosophy/free-sw.html](https://gnu.org/philosophy/free-sw.html)
- Open Source Initiative — [opensource.org/osd](https://opensource.org/osd)
- The Cathedral and the Bazaar — [catb.org/~esr/writings/cathedral-bazaar](http://catb.org/~esr/writings/cathedral-bazaar)
- The Linux Command Line — [linuxcommand.org](http://linuxcommand.org)
- GNU Bash Manual — [gnu.org/software/bash/manual](https://gnu.org/software/bash/manual)
- SPDX License List — [spdx.org/licenses](https://spdx.org/licenses)
- Git Official Docs — [git-scm.com/doc](https://git-scm.com/doc)
- Git Source Repository — [github.com/git/git](https://github.com/git/git)

---

*Submitted via VITyarthi Portal | OSS NGMC Capstone Project | Narendra Bishnoi | 24BAI10095*
