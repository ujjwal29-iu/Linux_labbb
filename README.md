# Linux_labbb
# # Basic Linux Commands

This document covers some basic Linux commands: `rm`, `cp`, `touch`, and a simple example for moving files.

---

## 1. `rm` – Remove Files or Directories
**Syntax:**
```bash
rm filename
rm data.txt
cp source destination
cp index.html backup_index.html
touch filename
touch notes.txt
mv source destination
mv notes.txt myfolder/notes.txt
| Command | Purpose                              | Example                      |
| ------- | ------------------------------------ | ---------------------------- |
| `rm`    | Remove a file or directory           | `rm file.txt`                |
| `cp`    | Copy a file or directory             | `cp file.txt backup.txt`     |
| `touch` | Create empty file / update timestamp | `touch newfile.txt`          |
| `mv`    | Move or rename a file or directory   | `mv oldname.txt newname.txt` |
Before:
Folder:   ./        → notes.txt
Folder:   myfolder/ → (empty)

Command:
mv notes.txt myfolder/notes.txt

After:
Folder:   ./        → (empty)
Folder:   myfolder/ → notes.txt
![](/images/2025-08-11-22-55-39.png)
![](<Screenshot 2025-08-11 194946.png>)



