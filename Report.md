#  Secure Azure Environment & Defender for Cloud Report  
**Date:** 2025-06-26  
**Author:** Muktar Mohamed

---

## Task Summary

Today’s goal was to build a secure Azure environment from scratch, deploy a management VM securely, and enable Microsoft Defender for Cloud to simulate real-world detection scenarios.

---

## 1️. Security Controls Implemented

- **Virtual Network Segmentation**:  
  Created a VNet (`vnet-intern-sec-01`) with three subnets:
  - `web-subnet (10.0.1.0/24)`
  - `db-subnet (10.0.2.0/24)`
  - `mgmt-subnet (10.0.3.0/24)`

- **NSG Rules for Network Hardening**:  
  - Applied an NSG to the `mgmt-subnet`
  - Allowed **RDP (TCP 3389)** access only **from Azure Bastion**
  - Blocked all public inbound traffic

- **Azure Bastion Configuration**:  
  - Deployed Bastion for secure, browser-based RDP access to the management VM (`vm-sec-mgmt01`)
  - Eliminated the need for a public IP on the VM

- **Microsoft Defender for Cloud – Plan 2**:
  - Enabled Defender for Servers on the subscription
  - Verified automatic onboarding of the Log Analytics / MDE agent

---

## 2️. Defender for Cloud Recommendations Observed

- **Management Ports Exposed to the Internet**  
  - Simulated an RDP exposure by modifying NSG rules (Screenshot - nsg-open-rdp.png) 
  - Defender detected the misconfiguration and flagged it as a high-priority issue (Screenshot - defender-alert-rdp.png)

- **System Updates Should Be Installed**  
  - Disabled the Windows Update service temporarily
  - Defender flagged the VM as non-compliant under secure posture management

Both issues were quickly remediated and disappeared from the Recommendations tab after reapplying correct settings.

---

## 3️. Vulnerabilities or Alerts Detected

| Type | Description | Status |
|------|-------------|--------|
|  NSG Misconfiguration | RDP open to Internet |  Resolved |
|  Missing Updates | Automatic updates disabled | Resolved |

These findings validated Defender's ability to monitor posture in near real time and provide actionable security insights.

---

## Outcome

- Environment successfully deployed and secured
- Defender for Cloud correctly identified intentional misconfigurations
- Demonstrated ability to simulate, detect, and remediate common cloud security issues

---

Supporting evidence (screenshots) is included in the `/Screenshots/` folder.
