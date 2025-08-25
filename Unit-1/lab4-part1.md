# Advanced File Linux Commands

---

## **1. File Manipulation Commands**

### **`touch`** – Create or Update File Timestamps

```bash
# create an empty file

# update timestamp of an existing file

# create multiple files at once

```
![alt text](../images/2025-08-18-19-39-08.png)
---

### **`cp`** – Copy Files and Directories

```bash
# Copy a file
```
![alt text](../images/2025-08-18-19-47-32.png)
---

```
# Copy to another directory
```
![alt text](../images/2025-08-18-19-54-43.png)
---

```
# Copy directory recursively
```
![alt text](../images/2025-08-18-19-59-37.png)
---
```
# Preserve file attributes (timestamps, permissions)
```
![alt text](../images/2025-08-18-20-09-13.png)
---

### **`mv`** – Move or Rename Files

```bash
# Rename a file
```
![](/images/2025-08-18-20-34-33.png)
---
```
# Move file to another directory
```
![](/images/2025-08-18-20-36-15.png)
---
```
# Move and overwrite without prompt
```
![alt text](<../images/Screenshot 2025-08-18 203852.png>)
---

### **`rm`** – Remove Files and Directories

```bash
# Remove a file
```
![alt text](../images/2025-08-18-20-13-13.png)
---
```
# Remove multiple files
```
![alt text](../images/2025-08-18-20-14-40.png)
---
```
# Remove a directory recursively
```
![](/images/2025-08-18-20-21-06.png)
---
```
# Force remove without prompt
```
![](/images/2025-08-18-20-22-06.png)
---
```
# Remove a file from inside a folder
```
![](/images/2025-08-18-20-25-12.png)
---

### **`cat`** – View or Concatenate Files

```bash
# Display file contents
```
![](/images/2025-08-18-20-46-10.png)
---
```
# Combine multiple files into one
```
![](/images/2025-08-18-20-48-04.png)
---
```
# Display file with line numbers
```
![](/images/2025-08-18-20-50-55.png)
---

### **`less`** – View File One Page at a Time

```bash
less rellish.txt
# Navigation inside less:
# Space → next page
# b → previous page
# q → quit
```
![](/images/2025-08-18-20-52-42.png)
---

### **`head`** – Show First Lines of a File

```bash
# First 10 lines (default)
```
![](/images/2025-08-18-20-56-17.png)
---
```
# First 20 lines
```
![](/images/2025-08-18-20-57-16.png)
---

### **`tail`** – Show Last Lines of a File

```bash
# Last 10 lines (default)
```
![](/images/2025-08-18-20-58-38.png)
---
```
# Last 15 lines
```
![](/images/2025-08-18-20-59-30.png)
---
```
# Monitor file changes in real-time
```
![](/images/2025-08-18-21-01-34.png)
---

## **2. File Permissions and Ownership**

### **`ls -l`** – View Detailed File Info

```bash
ls -l
# Example output:
# -rw-r--r-- 1 user group 1024 Aug 14 10:00 file.txt
# Breakdown:
# [1] -rw-r--r-- → Permissions
# [2] 1 → Hard link count
# [3] user → Owner
# [4] group → Group owner
# [5] 1024 → File size (bytes)
# [6] Aug 14 10:00 → Last modified date/time
# [7] file.txt → File name
```
![](/images/2025-08-18-21-04-56.png)
---

### **File Permission Structure**

* **Owner (u)** – File creator
* **Group (g)** – Users in same group
* **Others (o)** – Everyone else
  Permissions: **r (read)**, **w (write)**, **x (execute)**

---

### **`chmod`** – Change File Permissions

```bash
# Symbolic method
chmod u+x helow.c  # Add execute for owner
chmod g-w rellish.txt  # Remove write for group
chmod o+r txt_file1.txt  # Add read for others

# Numeric method (r=4, w=2, x=1)
chmod 755 helow.c   # rwxr-xr-x
chmod 644 rellish.txt  # rw-r--r--
```
![](/images/2025-08-18-21-42-38.png)
---

### **`chown`** – Change File Owner

```bash
# Change owner
sudo chown newuser file.txt

# Change owner and group
sudo chown newuser:newgroup file.txt
```
![](/images/2025-08-18-21-48-38.png)
---

### **`chgrp`** – Change Group

```bash
sudo chgrp developers file.txt
```
![](/images/2025-08-18-21-55-05.png)

![](/images/2025-08-18-21-55-37.png)
---

## **3. Advanced File and Directory Operations**

### **`find`** – Search for Files

```bash
# Find by name
```
![](/images/2025-08-18-22-02-56.png)
---
```
# Find by extension
```
![](/images/2025-08-18-22-05-00.png)
---
```
# Find by size (>100MB)
```
![](/images/2025-08-18-22-06-12.png)
---
```
# Find and delete
```
![](/images/2025-08-18-22-06-51.png)
---

### **`grep`** – Search Text in Files

```bash
# Search a pattern
grep "error" logfile.txt

# Case-insensitive search
grep -i "error" logfile.txt

# Recursive search in directory
grep -r "TODO" /project/

# Show line numbers
grep -n "warning" logfile.txt
```
![](/images/2025-08-18-22-15-49.png)
---

### **`tar`** – Archive Files

```bash
# Create archive
tar -cvf archive.tar file1 file2 dir/
```

---
```
# Extract archive
tar -xvf archive.tar

# View archive contents
tar -tvf archive.tar
```
![](/images/2025-08-18-22-38-52.png)
---

### **`gzip` / `gunzip`** – Compress & Decompress

```bash
# Compress
gzip file.txt  # Creates file.txt.gz
```
![](/images/2025-08-18-22-33-09.png)
---
```
# Decompress
gunzip file.txt.gz
```
![](/images/2025-08-18-22-33-27.png)
---

### **`ln`** – Create Links

```bash
# Hard link
ln original.txt hardlink.txt

# Symbolic (soft) link
ln -s /path/to/original symlinkname
```
![](/images/2025-08-18-22-28-10.png)
---