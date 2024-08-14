read -p "Masukkan Password Baru: " newpass

passwd <<EOF
$newpass
$newpass
EOF

sudo reboot <<EOF
EOF

echo "BERHASIL MENGGANTI PASSWORD MENJADI $newpass"
