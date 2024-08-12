

# Minta input dari pengguna
read -p "Masukkan subdomain: " subdomain
read -p "Masukkan Email: " email
read -p "percobaan ke brpa: " try
read -p "Masukkan Password Login: " password

bash <(curl -s https://pterodactyl-installer.se) <<EOF
2
$try
$try
$try
Asia/Jakarta
$email
$email
asia
asia
asia
$password
$subdomain
y
y
y
y
yes
A
EOF
