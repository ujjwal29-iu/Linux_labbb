# 🔒 SSH (Secure Shell) Quick Reference 🖥️

<div align="center">

![](../Linux_Networking/images/2025-10-28-12-24-08.png)

### 🛡️ Secure • 🔑 Encrypted • 🌐 Remote Access

</div>

---

## 📘 What is SSH?
SSH (Secure Shell) is a cryptographic network protocol that provides a secure way to:
- 🔐 Access remote systems over an unsecured network
- ⌨️ Execute commands on remote machines
- 📂 Transfer files securely
- 🔄 Forward ports and applications
- ⚙️ Manage remote services

### 🎯 Key Features
- 🔒 **Encryption:** All traffic is encrypted, preventing eavesdropping
- 🗝️ **Authentication:** Supports both password and public key authentication
- ✅ **Integrity:** Ensures data hasn't been tampered with during transit
- 🔀 **Port Forwarding:** Tunnel other protocols through SSH
- 📤 **File Transfer:** Secure alternatives to FTP (SFTP, SCP)

### 💼 Common Use Cases
- 🖥️ Remote server administration
- 🐙 Git operations with GitHub/GitLab
- 📁 Secure file transfers
- 🗄️ Database management
- 🌐 Web development
- ☁️ Cloud computing (AWS, GCP, Azure)

---

## 🔐 Purpose
Practical, Ubuntu-focused commands and examples for key generation, authentication, remote access, file transfer, and common troubleshooting.

---

## ✅ Prerequisites (Ubuntu)
```bash
sudo apt update
sudo apt install -y openssh-client openssh-server
```
Check SSH server status (remote/server machine):
```bash
sudo systemctl status ssh
# enable/start if needed:
sudo systemctl enable --now ssh
```
![](../Linux_Networking/images/2025-10-28-12-55-11.png)
---

## 1) Generate an SSH keypair (ed25519 recommended)
```bash
ssh-keygen -t ed25519 -C "ujjwaltyagi458@gmail.com"
# Generated key fingerprint:
# SHA256:0j2KZRBekWKnJEPGS2mOh2lxJk3hxioPI9115X93ev4 ujjwaltyagi458@gmail.com
```

After generating:
```bash
ls -l ~/.ssh
# Verify your keys:
id_ed25519  id_ed25519.pub

# Start the SSH agent:
eval "$(ssh-agent -s)"
Agent pid 4677

# Add your private key:
ssh-add ~/.ssh/id_ed25519
Identity added: /home/ujjwaltyagi/.ssh/id_ed25519 (ujjwaltyagi458@gmail.com)

# View your public key:
cat ~/.ssh/id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAAIN74CRUJB/1CpEZQD1gDhFAEeRM/syD4c2OdZ0+CQZCR ujjwaltyagi458@gmail.com
```
![](../Linux_Networking/images/2025-10-28-13-11-17.png)
---

## 2) Install public key on the remote host
Preferred:
```bash
ssh-copy-id -i ~/.ssh/id_ed25519.pub user@remote.host
```
Manual (if ssh-copy-id absent):
```bash
cat ~/.ssh/id_ed25519.pub | ssh user@remote.host 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys'
```
![](../Linux_Networking/images/2025-10-28-13-22-56.png)
---

## 3) Connect and run commands
Interactive:
```bash
ssh user@remote.host
```
Single command:
```bash
ssh user@remote.host 'uname -a && uptime'
```
![](../Linux_Networking/images/2025-10-28-13-23-57.png)
---

## 4) SSH agent (avoid repeated passphrases)
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# List loaded keys:
ssh-add -l
```
![](../Linux_Networking/images/2025-10-28-13-25-55.png)
---

## 5) SSH config for shortcuts (~/.ssh/config)
Create/edit `~/.ssh/config`:
```text
Host uni-server
  HostName remote.host.edu
  User youruser
  Port 22
  IdentityFile ~/.ssh/id_ed25519
  IdentitiesOnly yes
```
![](../Linux_Networking/images/2025-10-28-13-38-15.png)
---
Connect with:
```bash
ssh uni-server
```
![](../Linux_Networking/images/2025-10-28-13-38-48.png)

---

## 6) Port forwarding (local → remote)
Local forward (access remote web app locally):
```bash
ssh -L 8080:localhost:8000 user@remote.host
# browse http://localhost:8080
```
![](../Linux_Networking/images/2025-10-28-13-41-52.png)
---

## 7) File transfer: scp & sftp
SCP (single file):
```bash
scp localfile.txt user@remote.host:/home/user/
```
SCP (directory):
```bash
scp -r project/ user@remote.host:/home/user/project_backup/
```
SFTP interactive:
```bash
sftp user@remote.host
sftp> put localfile
```

---

## 8) SSH for Git
- Add `~/.ssh/id_ed25519.pub` to Git host account.
- Use SSH remote:
```bash
git remote add origin git@github.com:username/repo.git
git push -u origin main
```
Test:
```bash
ssh -T git@github.com
```

---

## 9) Troubleshooting checklist
- Permissions: `chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys`
- Verbose SSH: `ssh -vvv user@host`
- Confirm key present: `ssh-add -l`
- Check server logs: `sudo journalctl -u ssh -e`

---

## 10) Best practices
- Prefer `ed25519` keys with passphrase.  
- Use `~/.ssh/config` for convenience.  
- Keep private keys private; remove unused keys on servers.

---

## Quick commands
```bash
ssh-keygen -t ed25519
ssh-copy-id user@host
ssh user@host
scp file user@host:/path/
ssh -L 8080:localhost:8000 user@host
```

>