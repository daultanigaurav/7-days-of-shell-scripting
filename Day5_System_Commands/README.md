# 📊 Day 5: System Commands — Disk, Memory & Process Monitoring

Welcome to Day 5! Today you'll learn how to gather and monitor important system-level information using essential Linux commands. These scripts are crucial for system health checks, DevOps monitoring, and automation.

---

## 📚 Topics Covered

- Checking disk usage and available space
- Monitoring memory and swap usage
- Viewing running processes
- Monitoring CPU usage
- Using system monitoring commands in scripts

---

## 🛠️ Useful Commands

| Command       | Description                              |
|---------------|------------------------------------------|
| `df -h`       | Displays disk space usage in human-readable format |
| `du -sh`      | Summarizes disk usage for a directory    |
| `free -h`     | Shows memory and swap usage              |
| `top` / `htop`| Interactive process and resource monitor |
| `ps aux`      | Detailed view of running processes       |
| `uptime`      | Shows system load averages               |
| `vmstat`      | Reports system performance               |

---

## 📂 Files in this Folder

| Script | Description |
|--------|-------------|
| `disk_check.sh` | Displays disk usage and warns if usage exceeds 80% |
| `memory_check.sh` | Shows memory and swap usage |
| `process_monitor.sh` | Lists top 5 processes by memory usage |
