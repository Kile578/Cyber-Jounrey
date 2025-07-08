# Cybersecurity Journey

Welcome to my cybersecurity learning repository! This documents my journey learning penetration testing, ethical hacking, and cybersecurity fundamentals.

## 🏠 Lab Environment

### Virtual Lab Setup
- **Hypervisor**: VirtualBox 7.x
- **Network Type**: Internal Network ("Cyber labs")
- **Network Range**: 10.0.0.0/24
- **Complete Isolation**: No internet access, no host network access

### Virtual Machines

#### Kali Linux (Attacker Machine)
- **IP Address**: 10.0.0.10
- **OS**: Kali Linux 2024.x
- **Role**: Penetration testing platform
- **Key Tools**: Nmap, Metasploit, Wireshark, Burp Suite
- **Promiscuous Mode**: Enabled (for packet capture)

#### Windows Target (Victim Machine)
- **IP Address**: 10.0.0.20
- **OS**: Windows 10/11
- **Role**: Target for ethical penetration testing
- **Services**: RDP, File Sharing (for testing)
- **Promiscuous Mode**: Disabled

### Network Configuration

```
┌─────────────────────────────────────────┐
│           Internal Network              │
│            "Cyber labs"                 │
│          (10.0.0.0/24)                  │
│                                         │
│  ┌─────────────┐    ┌─────────────┐     │
│  │    Kali     │    │   Windows   │     │
│  │ 10.0.0.10   │◄──►│ 10.0.0.20   │     │
│  │  (Attacker) │    │  (Target)   │     │
│  └─────────────┘    └─────────────┘     │
│                                         │
│        ❌ No Internet Access            │
│        ❌ No Host Access                │
│        ✅ VM-to-VM Communication        │
└─────────────────────────────────────────┘
```

## 📚 Learning Progress

### Completed
- [x] Virtual lab environment setup
- [x] Internal network configuration
- [x] VM-to-VM connectivity testing
- [x] Basic network isolation verification

### In Progress
- [ ] Network reconnaissance with Nmap
- [ ] Traffic analysis with Wireshark
- [ ] Vulnerability scanning

### Planned
- [ ] Metasploit framework basics
- [ ] Web application testing
- [ ] Active Directory attacks
- [ ] Network pivoting techniques

## 🛠️ Tools & Technologies

### Penetration Testing
- **Nmap**: Network discovery and security auditing
- **Metasploit**: Penetration testing framework
- **Wireshark**: Network protocol analyzer
- **Burp Suite**: Web vulnerability scanner
- **Gobuster**: Directory/file enumeration

### Target Environment
- **Windows Services**: RDP, SMB, HTTP
- **Vulnerable Applications**: (To be added)

## 📖 Resources

### Learning Materials
- [Penetration Testing with Kali Linux (PWK)](https://www.offensive-security.com/pwk-oscp/)
- [TryHackMe](https://tryhackme.com/)
- [Hack The Box](https://www.hackthebox.com/)

### Documentation
- [OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)
- [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)

## ⚖️ Ethics & Legal Notice

**IMPORTANT**: All activities documented in this repository are:
- Conducted in an isolated lab environment
- For educational purposes only
- Performed on systems I own and control
- Never used against unauthorized targets

This repository follows responsible disclosure practices and ethical hacking principles.

## 📁 Repository Structure

```
cybersecurity-journey/
├── README.md
├── lab-setup/
│   ├── vm-configurations/
│   ├── network-diagrams/
│   └── screenshots/
├── learning-notes/
│   ├── nmap-basics/
│   ├── metasploit-fundamentals/
│   └── wireshark-analysis/
└── practice-exercises/
    ├── reconnaissance/
    ├── vulnerability-assessment/
    └── exploitation/
```

## 🚀 Getting Started

1. **Clone this repository**
   ```bash
   git clone https://github.com/[yourusername]/cybersecurity-journey.git
   ```

2. **Follow lab setup guides** in `/lab-setup/`

3. **Review learning notes** for specific topics

4. **Practice exercises** are documented with step-by-step procedures

## 📧 Contact

Feel free to reach out for collaboration or questions about cybersecurity learning!

---

*Last updated: [Current Date]*
*Lab environment: Fully operational and isolated*
