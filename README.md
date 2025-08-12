Here’s a simple Markdown (`.md`) file that explains the basic usage of `rm`, `cp`, and `touch` commands, along with an example of moving a file from one location to another.

---

### 📄 `file_commands.md`

````markdown
# Basic File Commands in Linux

This document provides a brief overview of common file-related commands in Linux: `rm`, `cp`, and `touch`. It also includes an example of moving a file.

---

## 🗑️ `rm` - Remove Files or Directories

The `rm` command is used to delete files or directories.

### Syntax:
```bash
rm [options] <file_or_directory>
````

### Common Options:

* `-f` : Force removal without prompt
* `-r` : Recursively remove directories and their contents
* `-i` : Prompt before removal

### Example:

```bash
rm file.txt           # Delete a file
rm -r folder/         # Delete a directory and its contents
```

---

## 📄 `cp` - Copy Files and Directories

The `cp` command copies files or directories.

### Syntax:

```bash
cp [options] <source> <destination>
```

### Common Options:

* `-r` : Recursively copy directories
* `-i` : Prompt before overwrite
* `-u` : Copy only when the source file is newer

### Example:

```bash
cp file.txt backup/   # Copy file.txt to backup directory
```

---

## 📁 `touch` - Create Empty Files

The `touch` command is used to create an empty file or update the timestamp of an existing file.

### Syntax:

```bash
touch <file_name>
```

### Example:

```bash
touch newfile.txt     # Creates a new empty file
```

---

## 🔄 Moving a File from One Location to Another

To move or rename a file, use the `mv` command.

### Syntax:

```bash
mv <source> <destination>
```

### Example:

```bash
touch example.txt         # Create a file
mkdir destination         # Create a destination folder
mv example.txt destination/  # Move the file to the folder
```

This moves `example.txt` into the `destination/` directory.

---


```


```

![MY TERMINAL WORK](<Screenshot 2025-08-11 194946-1.png>)