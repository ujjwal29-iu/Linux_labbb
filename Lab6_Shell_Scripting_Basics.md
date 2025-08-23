# 🐚 Shell Scripting Tutorial!!

Shell scripting allows you to **automate tasks** in Linux/Unix by writing commands inside a file that the shell executes line by line.

---

## 1. 🔹 What is a Shell Script?

* A **shell** is a command-line interpreter (e.g., `bash`, `zsh`, `sh`).
* A **shell script** is a text file with a series of commands.
* File usually has **`.sh`** extension, though not mandatory.

**Example: `first_scripts.sh`**

```bash
#!/bin/bash
echo "Hello, World!"
```

Run it:

```bash
chmod +x first_scripts.sh   # make it executable
./first_scripts.sh
```

Output:

```
Hello, World!
```
![](/images/2025-08-23-11-54-32.png)
---

## 2. 🔹 Variables

Variables store data (text, numbers, paths, etc.).

### Defining variables

```bash
name="Ujjwal"
age=17
```

⚠️ No spaces around `=`.

### Accessing variables

```bash
echo "My name is $name and I am $age years old."
```

Output:

```
My name is Ujjwal and I am 17 years old.
```