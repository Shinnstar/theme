#!/bin/bash

# Minta input dari pengguna
read -p "Masukkan nama lokasi: " location_name
read -p "Masukkan Locid: " locid
read -p "Masukkan nama node: " node_name
read -p "Masukkan RAM (dalam MB): " ram
read -p "Masukkan jumlah maksimum disk space (dalam MB): " disk_space

# Ubah ke direktori pterodactyl
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

# Membuat lokasi baru
php artisan p:location:make <<EOF
$location_name
INSTALLED WITH LOVE BY BUMIIKOUSEI 
EOF

# Membuat node baru
php artisan p:node:make <<EOF
$node_name
INSTALLED WITH LOVE BY BUMIIKOUSEI 
$locid
https
$node_name
yes
no
no
$ram
0
$disk_space
0
100
8080
2022
/var/lib/pterodactyl/volumes
EOF

echo "Proses pembuatan lokasi dan node telah selesai."
