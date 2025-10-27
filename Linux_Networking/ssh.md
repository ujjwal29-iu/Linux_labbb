# SSH Quick Reference — Ubuntu Terminal

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

---

## 1) Generate an SSH keypair (ed25519 recommended)
```bash
ssh-keygen -t ed25519 -C "your.email@uni.edu" -f ~/.ssh/id_ed25519
# use a passphrase when prompted
```
![ssh-keygen ubuntu](../images/ssh-keygen-ubuntu.png)

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
![ssh-copy-id ubuntu](../images/ssh-copy-id-ubuntu.png)

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

---

## 4) SSH agent (avoid repeated passphrases)
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# List loaded keys:
ssh-add -l
```

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
Connect with:
```bash
ssh uni-server
```
![ssh-config ubuntu](../images/ssh-config-ubuntu.png)

---

## 6) Port forwarding (local → remote)
Local forward (access remote web app locally):
```bash
ssh -L 8080:localhost:8000 user@remote.host
# browse http://localhost:8080
```

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

> Add your own screenshots to `../images/` for personalized documentation.
