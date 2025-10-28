# 🌌 Magic Wormhole: Cross-Network File Transfer Guide

<div align="center">

![](../Linux_Networking/images/2025-10-28-20-47-26.png)

---
### *Secure File Transfer Across Networks - Like Magic! ✨*

[![Made with Magic Wormhole](https://img.shields.io/badge/Made%20with-Magic%20Wormhole-blueviolet?style=for-the-badge&logo=data:image/png;base64,YOUR_BASE64_LOGO)](https://magic-wormhole.readthedocs.io/)

</div>

---

## 🎯 What We're Building
> Transfer files securely between computers on different networks using encrypted "wormholes" - no IP addresses or port forwarding needed!

---

## 🔧 Setup Process

### Prerequisites
- Ubuntu/Debian Linux
- Terminal access
- Internet connection on both machines

### Installation
On **both** systems, open terminal and run:
```bash
sudo apt install magic-wormhole
```

---

## 📤 Sending Files

<details>
<summary>👉 Click to expand sender instructions</summary>

1. Navigate to your file:
```bash
cd ~
```

2. Create the wormhole:
```bash
wormhole send file.sh
```

3. Note the generated code:
```
Wormhole code is: 9-night-bird
```

> 💡 **Keep this terminal open until transfer completes!**

</details>

---

## 📥 Receiving Files

<details>
<summary>👉 Click to expand receiver instructions</summary>

1. Enter the wormhole:
```bash
wormhole receive 9-night-bird
```

2. Verify the transfer:
```bash
ls
```

3. Make executable (if needed):
```bash
chmod +x file.sh
./file.sh
```

</details>

---

## 🔐 Security Features

| Feature | Description |
|:--------|:------------|
| 🔒 Encryption | End-to-end encrypted transfer |
| 🎲 One-time | Codes work only once |
| 🛡️ NAT friendly | Works through firewalls |
| 🚫 No storage | Files aren't stored on servers |

---

## 📸 Real-World Example

### 💻 Receiver's View

![](../Linux_Networking/images/2025-10-28-20-59-35.png)

### 📱 Sender's View

![](../Linux_Networking/images/2025-10-28-21-00-27.png)

*Creating and sharing the wormhole*

---

## 🚀 Quick Reference

```mermaid
graph LR
    A[Sender] -->|wormhole send| B[Magic Code]
    B -->|wormhole receive| C[Receiver]
    style A fill:#ff9900
    style B fill:#9900ff
    style C fill:#00ff99
```

| Action | Command | Notes |
|:-------|:--------|:------|
| 📤 Send | `wormhole send file.sh` | Generates code |
| 📥 Receive | `wormhole receive CODE` | Uses generated code |
| ✅ Verify | `ls && chmod +x file.sh` | Post-transfer steps |

---

<div align="center">

## 🎉 Happy File Transferring!

*Made with 💜 by [Your Name]*

</div>