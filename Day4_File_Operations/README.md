# 📅 Day 4: File I/O, Existence Checks, and Permissions

Welcome to Day 4 of the Shell Scripting journey! Today, we explore how to read/write files, check their existence, and manage permissions — fundamental operations for scripting in any real-world Linux environment.

---

## 📚 What I Learned Today

### 📝 File I/O
- Writing to files using `>`, appending with `>>`
- Reading file content with `cat`, `while read`, and `input redirection`

### 📂 Existence & Type Checks
- `-e` → exists  
- `-f` → is a regular file  
- `-d` → is a directory  
- `-r` / `-w` / `-x` → read/write/execute permission checks

### 🔐 Permissions
- `chmod` to change permissions
- `ls -l` to view permission string
- Numeric (`755`, `644`) and symbolic (`u+x`, `g-w`) modes

---

## 📁 Files Included

| Script Name           | Description                                      |
|------------------------|--------------------------------------------------|
| `file_read_write.sh`   | Write to and read from a file using Bash         |
| `file_exist_check.sh`  | Check if a file/directory exists and act on it   |

---

## 🚀 How to Run

```bash
cd Day4_File_Operations/
chmod +x *.sh

./file_read_write.sh
./file_exist_check.sh
