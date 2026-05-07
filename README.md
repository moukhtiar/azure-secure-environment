[README.md](https://github.com/user-attachments/files/27494227/README.md)
# Project 1 – Secure Azure Environment & Microsoft Defender for Cloud

## Objective
Deployed a secure Azure test environment with network segmentation, hardened VM access, and security monitoring using Microsoft Defender for Cloud.

---

## Key Components

| Component | Configuration |
|----------|---------------|
| **Resource Group** | `rg-intern-sec-01` |
| **Virtual Network** | `vnet-intern-sec-01` with 3 subnets (web, db, mgmt) |
| **VM** | `vm-sec-mgmt01` (Windows Server 2019, Standard B1s) |
| **Access** | Azure Bastion only – no public IPs |
| **Security** | NSG allows RDP only from Bastion |
| **Monitoring** | Defender for Cloud Plan 2 with auto-provisioned MDE agent |

---

## Simulated Security Scenarios

| Test | Outcome |
|------|---------|
| **Exposed RDP to Internet** | Defender detected & alerted |
| **Disabled Windows Updates** | Defender flagged missing patches |

---

## Automation

This lab now includes an Azure Bicep deployment template in `automation/main.bicep` and a PowerShell deploy helper in `automation/deploy.ps1`.

## Screenshots
See the [`Screenshots/`](./images/) folder for:

- Bastion RDP Access
- NSG Misconfiguration
- Defender Alerts


---

## Report
Full task write-up is available in [`Report.md`](./Report.md)  
Includes security controls, Defender recommendations, and alert analysis.

---

## Outcome
 Successfully built a secure, monitored Azure environment.  
 Defender for Cloud correctly detected and alerted on misconfigurations.  
 Forms a strong foundation for advanced Azure security exploration.

---

## Date
**2025-06-26**
