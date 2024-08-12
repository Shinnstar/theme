

# Minta input dari pengguna
read -p "Masukkan Subdomain: " subdomain
read -p "Masukkan Node: " node
read -p "Masukkan Email: " email
read -p "Percobaan Ke Berapa: " try

bash <(curl -s https://pterodactyl-installer.se) <<EOF
1
y
y
y
$subdomain
y
$try
$try
y
$node
y
$email
y
EOF