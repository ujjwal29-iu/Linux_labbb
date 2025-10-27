# 🐧 Linux Process Management — Lab Report

<div align="center">

</div>

---

## 🎯 Objective
> Understanding and implementing process management concepts in Linux through hands-on examples.

---

## 🔍 Theory

### 🔸 What is a Process?
A process is an instance of a running program with its own memory space and system resources.

### 🔸 Process States
- 🟢 R (Running/Runnable)
- 🟡 S (Sleeping — waiting for event)
- 🔴 D (Uninterruptible sleep)
- 🟠 T (Stopped)
- ⚫ Z (Zombie)

### 🔸 Process Types
- ⌨️ Foreground: Connected to terminal
- 🔙 Background: Runs independently

### 🔸 Process Identifiers
- 🆔 PID: Unique process ID
- 👨‍👦 PPID: Parent process ID

### 🔸 Core Concepts
- 👨‍👦 Parent/Child processes
- 🧟 Zombie processes
- 🤝 Orphan processes

---

## ⚡ Commands & Examples

### View all processes (detailed)
```bash
ps aux
```
**Explanation:** Shows all running processes with user, PID, %CPU, %MEM, VSZ, RSS, TTY, STAT, START, TIME, and COMMAND.
---
![](../Management/images/2025-10-28-00-46-07.png)
---
![](../Management/images/2025-10-28-00-47-08.png)
---
### Hierarchical process view
```bash
pstree -p
```
**Explanation:** Displays processes in a tree form with PIDs — useful to see parent/child relations.
---

![](../Management/images/2025-10-28-00-49-50.png)

---
---
---

![](../Management/images/2025-10-28-00-50-25.png)

---

### Real-time monitoring
```bash
top
```
**Explanation:** Interactive display of processes sorted by CPU usage. Press `q` to quit.

---

![](../Management/images/2025-10-28-00-52-50.png)


---
```bash
htop
```
**Explanation:** Enhanced interactive viewer with process tree, colors, and easier navigation.

---

![](../Management/images/2025-10-28-00-58-53.png)

---

### Run process in background
```bash
sleep 300 &
```
**Explanation:** Starts `sleep` in background; shell prints the job number and PID.

---

![](../Management/images/2025-10-28-01-00-01.png)

---

### List jobs in current shell
```bash
jobs -l
```
**Explanation:** Lists jobs started from the current shell with job IDs and PIDs.

---
![](../Management/images/2025-10-28-01-01-41.png)
---

### Bring job to foreground / send to background
```bash
fg %1
bg %1
```
**Explanation:** `fg` brings job 1 to foreground; `bg` resumes job 1 in background.

![](../Management/images/2025-10-28-01-04-44.png)
---

### Disown a background job
```bash
disown %1
```
**Explanation:** Removes job 1 from shell's job table so it will not receive SIGHUP on shell exit.

```
![Screenshot – disown example](images/disown.png)
```

---

### Run detached (nohup)
```bash
nohup python3 server.py > server.log 2>&1 &
```
**Explanation:** Starts `server.py` immune to hangups; output redirected to `server.log`.

---
![](../Management/images/2025-10-28-01-09-57.png)
---

### Find process by name / PID
```bash
pgrep -a sshd
pidof bash
```
**Explanation:** `pgrep -a` lists PIDs and command lines matching `sshd`. `pidof` returns PID(s) for a program.
---

![](../Management/images/2025-10-28-01-11-42.png)
---

### Kill a process (graceful then force)
```bash
kill PID            # sends SIGTERM by default
kill -9 PID         # sends SIGKILL (force)
pkill -f processname
```
**Explanation:** `kill` sends signals to PIDs; `pkill -f` matches the full command line.

--- 
![](../Management/images/2025-10-28-01-24-41.png)
--- 

---
![](../Management/images/2025-10-28-01-25-16.png)
---

---
![](../Management/images/2025-10-28-01-25-50.png)
---
### Adjust process priority at start
```bash
nice -n 10 ./compute-heavy.sh
```
**Explanation:** Launches `compute-heavy.sh` with niceness 10 (lower priority).

```
![Screenshot – nice example](images/nice.png)
```

---

### Change priority of running process
```bash
renice +5 -p 12345
renice -n -10 -p 12345
```
**Explanation:** `renice` changes niceness of PID 12345 (positive increases nice value = lower priority).

```
![Screenshot – renice example](images/renice.png)
```

---

### View process open files and resources
```bash
lsof -p 12345
```
**Explanation:** Lists files, sockets, and resources opened by PID 12345.

```
![Screenshot – lsof example](images/lsof.png)
```

---

### Show process tree for a PID
```bash
ps f -p 1
```
**Explanation:** Shows process hierarchy for PID 1 (or change PID as needed).

```
![Screenshot – ps tree example](images/ps_f.png)
```

---


---

## 📊 Observations & Results

// ...existing observations and image paths stay exactly the same...

---

## 🎓 Conclusion
This practical lab demonstrated essential Linux process management concepts through hands-on examples.

---

## 📚 References & Resources
- 📖 man pages: ps, top, kill, nice, renice
- 🌐 Linux kernel documentation
- 📑 System administration guides

---

<div align="center">

*~ End of Lab Report ~*

</div>

