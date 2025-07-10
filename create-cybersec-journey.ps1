# Cybersecurity Journey Folder Structure Creation Script (PowerShell)
# Run this script to create the complete folder structure

Write-Host "Creating Cybersecurity Journey folder structure..." -ForegroundColor Green

# Create main directory
New-Item -ItemType Directory -Name "cybersecurity-journey" -Force
Set-Location "cybersecurity-journey"

# Create README.md
$readmeContent = @"
# Cybersecurity Journey

## Overview
25-day intensive cybersecurity learning journey covering networking, security, AI/ML, and electronics.

## Structure
- **lab/** - Home lab setup and configurations
- **projects/** - Hands-on projects and challenges
- **mathematics/** - Mathematical foundations
- **certifications/** - Certification study materials
- **business/** - Professional development and monetization
- **resources/** - Learning materials and references

## Goals
- Build comprehensive cybersecurity home lab
- Complete TryHackMe beginner path
- Develop AI-powered threat detection system
- Launch cybersecurity consulting business
- Master mathematical foundations for cybersecurity

Started: July 2025
"@
$readmeContent | Out-File -FilePath "README.md" -Encoding UTF8

# Create lab structure
New-Item -ItemType Directory -Path "lab\vms" -Force
New-Item -ItemType Directory -Path "lab\network" -Force

# Create lab documentation files
$kaliSetup = @"
# Kali Linux VM Setup

## Specifications
- RAM: 4GB
- Storage: 40GB
- Network: NAT + Host-only

## Post-Installation
- [ ] Update system
- [ ] Install additional tools
- [ ] Configure network interfaces
- [ ] Test connectivity

## Tools Verification
- [ ] Nmap
- [ ] Burp Suite
- [ ] Metasploit
- [ ] Wireshark
"@
$kaliSetup | Out-File -FilePath "lab\vms\kali-setup.md" -Encoding UTF8

$windowsTarget = @"
# Windows Target VM Setup

## Specifications
- RAM: 2GB
- Storage: 30GB
- Network: Host-only (isolated)

## Vulnerability Setup
- [ ] Disable Windows Defender
- [ ] Install vulnerable applications
- [ ] Configure services
- [ ] Document credentials

## Security Note
This VM is intentionally vulnerable for learning purposes only.
"@
$windowsTarget | Out-File -FilePath "lab\vms\windows-target.md" -Encoding UTF8

$ubuntuServer = @"
# Ubuntu Server VM Setup

## Specifications
- RAM: 2GB
- Storage: 20GB
- Network: NAT + Host-only

## Services
- [ ] SSH server
- [ ] Web server (Apache/Nginx)
- [ ] Database (MySQL/PostgreSQL)
- [ ] Monitoring tools

## Configuration
- [ ] Static IP assignment
- [ ] Firewall rules
- [ ] Service hardening
"@
$ubuntuServer | Out-File -FilePath "lab\vms\ubuntu-server.md" -Encoding UTF8

$pfsenseConfig = @"
# pfSense Configuration

## Initial Setup
- [ ] Network interfaces (WAN/LAN/DMZ)
- [ ] DHCP server configuration
- [ ] DNS settings
- [ ] Basic firewall rules

## Advanced Configuration
- [ ] VPN setup
- [ ] Traffic shaping
- [ ] Package installation
- [ ] Backup configuration

## Security Policies
- [ ] Default deny rules
- [ ] Logging configuration
- [ ] Alert setup
"@
$pfsenseConfig | Out-File -FilePath "lab\network\pfsense-config.md" -Encoding UTF8

$suricataIds = @"
# Suricata IDS Configuration

## Installation
- [ ] Install on pfSense
- [ ] Configure interfaces
- [ ] Download rulesets
- [ ] Enable logging

## Custom Rules
- [ ] SQL injection detection
- [ ] XSS pattern matching
- [ ] Brute force detection
- [ ] Custom signatures

## Monitoring
- [ ] Log analysis
- [ ] Alert tuning
- [ ] Performance monitoring
"@
$suricataIds | Out-File -FilePath "lab\network\suricata-ids.md" -Encoding UTF8

$grafanaMonitoring = @"
# Grafana Monitoring Setup

## Installation
- [ ] Install Grafana
- [ ] Configure data sources
- [ ] Import dashboards
- [ ] Set up authentication

## Dashboards
- [ ] Network traffic
- [ ] Security events
- [ ] System performance
- [ ] Threat intelligence

## Alerts
- [ ] Threshold configuration
- [ ] Notification channels
- [ ] Escalation policies
"@
$grafanaMonitoring | Out-File -FilePath "lab\network\grafana-monitoring.md" -Encoding UTF8

# Create IP addressing scheme
$ipAddressing = @"
# IP Addressing Scheme (Convert to Excel)
Network,VLAN,Subnet,Gateway,Purpose
Management,10,192.168.10.0/24,192.168.10.1,Lab management
DMZ,20,192.168.20.0/24,192.168.20.1,Web servers
Internal,30,192.168.30.0/24,192.168.30.1,Internal clients
Security,40,192.168.40.0/24,192.168.40.1,Security tools
"@
$ipAddressing | Out-File -FilePath "lab\ip-addressing.csv" -Encoding UTF8

# Create projects structure
New-Item -ItemType Directory -Path "projects\tryhackme\completed-rooms" -Force
New-Item -ItemType Directory -Path "projects\networking\ospf" -Force
New-Item -ItemType Directory -Path "projects\networking\eigrp" -Force
New-Item -ItemType Directory -Path "projects\networking\bgp" -Force
New-Item -ItemType Directory -Path "projects\web-security\dvwa" -Force
New-Item -ItemType Directory -Path "projects\web-security\burp-suite" -Force
New-Item -ItemType Directory -Path "projects\web-security\owasp-top10" -Force
New-Item -ItemType Directory -Path "projects\ai-ml\iris-classification" -Force
New-Item -ItemType Directory -Path "projects\ai-ml\titanic-kaggle" -Force
New-Item -ItemType Directory -Path "projects\ai-ml\network-anomaly" -Force
New-Item -ItemType Directory -Path "projects\arduino\led-matrix" -Force
New-Item -ItemType Directory -Path "projects\arduino\temp-monitoring" -Force
New-Item -ItemType Directory -Path "projects\arduino\servo-lock" -Force
New-Item -ItemType Directory -Path "projects\raspberry-pi\motion-detection" -Force
New-Item -ItemType Directory -Path "projects\raspberry-pi\facial-recognition" -Force
New-Item -ItemType Directory -Path "projects\cyberguard-capstone\system-architecture" -Force
New-Item -ItemType Directory -Path "projects\cyberguard-capstone\ml-threat-detection" -Force
New-Item -ItemType Directory -Path "projects\cyberguard-capstone\web-dashboard" -Force

# Create project files
$tryhackmeProgress = @"
# TryHackMe Progress

## Completed Rooms
- [ ] Tutorial
- [ ] OhSINT
- [ ] Google Dorking
- [ ] Burp Suite Basics
- [ ] Network Services
- [ ] Web Application Security
- [ ] XSS Challenges
- [ ] SQL Injection Labs

## Current Focus
- Beginner Path completion
- Web application security
- Network fundamentals

## Notes
Track key learnings and breakthrough moments here.
"@
$tryhackmeProgress | Out-File -FilePath "projects\tryhackme\progress.md" -Encoding UTF8

$systemArchitecture = @"
# CyberGuard System Architecture

## Overview
AI-powered network threat detection and monitoring system.

## Components
- Network traffic capture
- Machine learning analysis
- Real-time alerting
- Web dashboard
- Threat visualization

## Technology Stack
- Python/Flask (Backend)
- scikit-learn (ML)
- D3.js (Visualization)
- Docker (Deployment)

## Deployment
- Cloud platform integration
- Scalability considerations
- Monitoring and logging
"@
$systemArchitecture | Out-File -FilePath "projects\cyberguard-capstone\system-architecture\README.md" -Encoding UTF8

# Create mathematics structure
New-Item -ItemType Directory -Path "mathematics\khan-academy" -Force
New-Item -ItemType Directory -Path "mathematics\discrete-math" -Force
New-Item -ItemType Directory -Path "mathematics\physics" -Force

$preCalculusNotes = @"
# Pre-Calculus Notes

## Functions and Graphs
- Function notation
- Domain and range
- Transformations
- Composite functions

## Progress Tracking
- [ ] Functions basics (80%+ mastery)
- [ ] Polynomial functions
- [ ] Rational functions
- [ ] Trigonometry

## Applications
Connect mathematical concepts to cybersecurity applications.
"@
$preCalculusNotes | Out-File -FilePath "mathematics\khan-academy\pre-calculus-notes.md" -Encoding UTF8

$linearAlgebraNotes = @"
# Linear Algebra Notes

## Vectors
- Vector operations
- Dot product
- Cross product
- Vector spaces

## Matrices
- Matrix operations
- Determinants
- Eigenvalues/eigenvectors
- Applications in ML

## Resources
- 3Blue1Brown videos
- Khan Academy exercises
- Practical applications
"@
$linearAlgebraNotes | Out-File -FilePath "mathematics\khan-academy\linear-algebra-notes.md" -Encoding UTF8

$mechanics = @"
# Classical Mechanics

## Kinematics
- Position, velocity, acceleration
- Projectile motion
- Circular motion

## Dynamics
- Newton's laws
- Forces and friction
- Energy and momentum

## Applications
- Network latency calculations
- Signal processing
- Physical security systems
"@
$mechanics | Out-File -FilePath "mathematics\physics\mechanics.md" -Encoding UTF8

# Create certifications structure
New-Item -ItemType Directory -Path "certifications\ccna\study-notes" -Force
New-Item -ItemType Directory -Path "certifications\ccna\packet-tracer-labs" -Force
New-Item -ItemType Directory -Path "certifications\cissp" -Force
New-Item -ItemType Directory -Path "certifications\ceh" -Force
New-Item -ItemType Directory -Path "certifications\oscp" -Force

$ccnaStudyNotes = @"
# CCNA Study Notes

## Study Plan
- Network fundamentals
- Routing protocols (OSPF, EIGRP, BGP)
- Switching and VLANs
- Security basics
- Automation

## Practice Labs
- Packet Tracer configurations
- Real equipment practice
- Troubleshooting scenarios

## Exam Preparation
- Practice tests
- Weak area focus
- Timing practice
"@
$ccnaStudyNotes | Out-File -FilePath "certifications\ccna\study-notes\README.md" -Encoding UTF8

# Create business structure
New-Item -ItemType Directory -Path "business\consulting\client-templates" -Force
New-Item -ItemType Directory -Path "business\content\youtube" -Force
New-Item -ItemType Directory -Path "business\content\tiktok" -Force
New-Item -ItemType Directory -Path "business\content\newsletter" -Force

$servicePackages = @"
# Cybersecurity Consulting Services

## Basic Security Audit (`$500)
- Network security assessment
- Vulnerability scanning
- Basic recommendations
- 10-page report

## Advanced Security Assessment (`$1500)
- Comprehensive penetration testing
- Social engineering assessment
- Detailed remediation plan
- Executive presentation

## Ongoing Monitoring (`$300/month)
- 24/7 security monitoring
- Monthly reports
- Incident response
- Security updates

## Target Market
- Small to medium businesses
- Startups with sensitive data
- Professional services firms
"@
$servicePackages | Out-File -FilePath "business\consulting\service-packages.md" -Encoding UTF8

$channelStrategy = @"
# YouTube Channel Strategy

## Channel Name
CyberSec & Side Hustles

## Content Pillars
1. Cybersecurity tutorials
2. Home lab builds
3. Career advice
4. Side hustle strategies

## Video Ideas
- Complete home lab setup
- Beginner penetration testing
- Networking fundamentals
- AI in cybersecurity

## Goals
- 500 subscribers by month end
- Weekly uploads
- High-quality technical content
"@
$channelStrategy | Out-File -FilePath "business\content\youtube\channel-strategy.md" -Encoding UTF8

# Create resources structure
New-Item -ItemType Directory -Path "resources" -Force

$books = @"
# Recommended Books

## Cybersecurity
- The Web Application Hacker's Handbook
- Network Security Essentials
- Metasploit: The Penetration Tester's Guide

## Mathematics
- Linear Algebra and Its Applications
- Discrete Mathematics and Its Applications
- Introduction to Algorithms

## Business
- The Lean Startup
- Expert Secrets
- Dotcom Secrets
"@
$books | Out-File -FilePath "resources\books.md" -Encoding UTF8

$courses = @"
# Online Courses

## Free Courses
- Khan Academy (Mathematics)
- Cybrary (Cybersecurity)
- Andrew Ng ML Course (Coursera)

## Paid Platforms
- TryHackMe (`$10/month)
- Hack The Box (`$20/month)
- Pluralsight (`$29/month)

## Certifications
- CCNA (`$300)
- CISSP (`$749)
- CEH (`$1199)
"@
$courses | Out-File -FilePath "resources\courses.md" -Encoding UTF8

$platforms = @"
# Practice Platforms

## Hands-on Learning
- TryHackMe - Guided learning
- Hack The Box - Real-world challenges
- VulnHub - Vulnerable VMs
- OverTheWire - Wargames

## Programming
- Kaggle - Data science competitions
- LeetCode - Algorithm practice
- GitHub - Portfolio hosting

## Networking
- GNS3 - Network simulation
- Packet Tracer - Cisco labs
- EVE-NG - Multi-vendor emulation
"@
$platforms | Out-File -FilePath "resources\platforms.md" -Encoding UTF8

Write-Host "✅ Folder structure created successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "📁 Created structure:" -ForegroundColor Cyan
Write-Host "├── README.md"
Write-Host "├── lab/ (VM configs, network setup)"
Write-Host "├── projects/ (Hands-on work)"
Write-Host "├── mathematics/ (Study notes)"
Write-Host "├── certifications/ (Exam prep)"
Write-Host "├── business/ (Consulting & content)"
Write-Host "└── resources/ (Learning materials)"
Write-Host ""
Write-Host "🚀 Navigate to cybersecurity-journey/ to start your journey!" -ForegroundColor Yellow
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Magenta
Write-Host "1. Review README.md"
Write-Host "2. Set up your first VM using lab/vms/kali-setup.md"
Write-Host "3. Start with projects/tryhackme/progress.md"
Write-Host "4. Update progress regularly"