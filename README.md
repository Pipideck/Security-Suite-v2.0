# Security-Suite-v2.0
Security Suite v2.0 - Advanced threat detection tool for Termux environments. Built to audit system integrity, scan for potential malware, and secure your Android storage from suspicious artifacts

### How to Install:
1. Open Termux
  
2. `git clone https://github.com/Pipideck/Security-Suite-v2.0`
   
3. `cd Security-Suite-v2.0`
   
4. `chmod +x scanner.sh`
   
5. `./scanner.sh`

⚡ Setup Shortcut (Alias) 
Bosan ngetik ./scanner.sh setiap saat? Buat nama panggilan (alias) agar kamu bisa menjalankan scan hanya dengan satu kata contoh: scan_virus.

1. Buka konfigurasi bash:
    
nano ~/.bashrc

3. Tambahkan baris ini di paling bawah: 

alias scan_virus='./scanner.sh'

4. Simpan (CTRL+O, Enter, CTRL+X) lalu aktifkan: 

source ~/.bashrc

5. Selesai! Sekarang cukup ketik scan_virus di mana saja untuk memulai pemindaian.

A Disclaimer 
This tool is for educational and auditing purposes only. Always check your files on VirusTotal for 100% certainty.

Developed with by King Pipider 

