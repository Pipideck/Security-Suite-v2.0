#!/bin/bash

# --- PIPIDER SECURITY SUITE v2.0 ---
echo -e "\e[1;36m┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\e[0m"
echo -e "\e[1;36m┃     PIPIDER SECURITY SYSTEM v2.0       ┃\e[0m"
echo -e "\e[1;36m┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\e[0m"
echo -e "\e[1;30m[+] Initializing Threat Protocols...\e[0m"
sleep 1

# Fungsi untuk animasi loading singkat
loading() {
    echo -ne 'Scanning Sectors... [###       ]\r'
    sleep 0.2
    echo -ne 'Scanning Sectors... [######    ]\r'
    sleep 0.2
    echo -ne 'Scanning Sectors... [######### ]\r'
    sleep 0.2
    echo -ne 'Scanning Sectors... [##########] DONE\r'
    echo -e "\n"
}

# --- SECTOR 1: DOWNLOAD FOLDER ---
echo -e "\e[1;33m[!] SCANNING DOWNLOAD SECTOR (Scripts & APKs)...\e[0m"
loading

# Kita simpan hasil pencarian ke dalam variabel 'hasil_scan'
# Mencari .sh, .py, .php, .apk, .exe di Download
hasil_scan=$(find /sdcard/Download -type f \( -name "*.sh" -o -name "*.py" -o -name "*.php" -o -name "*.apk" -o -name "*.exe" \) 2>/dev/null | head -n 5)

if [[ -z "$hasil_scan" ]]; then
    # Jika variabel KOSONG (tidak ada file)
    echo -e "\e[1;32m[✓] STATUS: CLEAN. Virus/Script tidak ditemukan.\e[0m"
else
    # Jika ADA file
    echo -e "\e[1;31m[X] THREAT DETECTED! File mencurigakan ditemukan:\e[0m"
    echo -e "\e[0;31m$hasil_scan\e[0m"
    echo -e "\e[1;30m(Cek manual file di atas, jika bukan milikmu, HAPUS!)\e[0m"
fi

echo "--------------------------------------------------"

# --- SECTOR 2: HIDDEN FILES ---
echo -e "\e[1;33m[!] SCANNING HIDDEN SECTORS (Large Hidden Files)...\e[0m"
# Mencari file tersembunyi > 50MB
hasil_hidden=$(find /sdcard -type f -name ".*" -size +50M 2>/dev/null | head -n 5)

if [[ -z "$hasil_hidden" ]]; then
    echo -e "\e[1;32m[✓] STATUS: CLEAN. Tidak ada file hidden besar.\e[0m"
else
    echo -e "\e[1;31m[X] WARNING! File tersembunyi berukuran besar:\e[0m"
    echo -e "\e[0;31m$hasil_hidden\e[0m"
fi

echo "--------------------------------------------------"

# --- SYSTEM CHECK ---
echo -e "\e[1;33m[!] CHECKING SYSTEM INTEGRITY...\e[0m"
if [ -d "/sdcard" ]; then
    echo -e "\e[1;32m[✓] STORAGE LINK: CONNECTED (Secure)\e[0m"
else
    echo -e "\e[1;31m[X] STORAGE LINK: DISCONNECTED (Run termux-setup-storage)\e[0m"
fi

echo -e "\n\e[1;36m>> SYSTEM SECURED BY KING PIPIDER <<\e[0m"
echo -e "\e[1;30mScan finished at: $(date)\e[0m"
